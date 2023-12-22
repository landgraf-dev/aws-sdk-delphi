unit AWS.Lib.Timer;

{$I AWS.inc}

interface

uses
  System.Classes, System.SyncObjs,
  {$IFDEF MSWINDOWS}
  Winapi.Windows,
  {$ENDIF}
  {$IFDEF MACOS}
  System.TypInfo, Macapi.ObjCRuntime, Macapi.ObjectiveC,
    {$IFDEF IOS}
    iOSapi.CocoaTypes, iOSapi.Foundation,
    {$ELSE}
    Macapi.CocoaTypes, Macapi.Foundation,
    {$ENDIF}
  {$ENDIF}
  {$IFDEF ANDROID}
  {$ENDIF}
  System.SysUtils;

const
  TimeoutInfinite = Integer(-1);

type
  TAWSTimerCallback<T> = reference to procedure(Data: T);
  TAWSTimerThread = class;

  {.$DEFINE THREADTIMER}
  {$IFDEF ANDROID}
    {$DEFINE THREADTIMER}
  {$ENDIF}
  {$IFDEF LINUX}
    {$DEFINE THREADTIMER}
  {$ENDIF}

  {$IFDEF THREADTIMER}
  TTimerHandle = TAWSTimerThread;
  {$ELSE}
    {$IFDEF MSWINDOWS}
    TTimerHandle = THandle;
    {$ENDIF}
    {$IFDEF MACOS}
    TTimerHandle = NSTimer;
    {$ENDIF}
  {$ENDIF}

  TTimerType = (Periodic, SingleShot);

  TAWSTimer<T> = class
  strict private
    FData: T;
    // For now, TAWSTimer is used only internally, and FCallback causes a cycle because usually
    // it uses the same "Self" that holds the timer instance.
    // In future this should be reviewed for a more generic purpose (or the callers must find a way to avoid the cycle)
    {$IFDEF AUTOREFCOUNT}[Weak]{$ENDIF}
    FCallback: TAWSTimerCallback<T>;
    FTimerType: TTimerType;
    FTimerHandle: TTimerHandle;
    procedure CreateTimer(AInterval: Integer; ATimerType: TTimerType);
    procedure HaltTimer;
    procedure DestroyTimer;
    procedure DoCallback;
  protected
    procedure DoTimer;
  public
    constructor Create(ACallback: TAWSTimerCallback<T>; AData: T; AInterval: Integer; ATimerType: TTimerType);
    destructor Destroy; override;
    procedure Update(AInterval: Integer; ATimerType: TTimerType);
  end;

  TAWSTimer = TAWSTimer<TObject>;

  TAWSTimerThread = class(TThread)
  private
    FEvent: TEvent;
    {$IFDEF AUTOREFCOUNT}[Weak]{$ENDIF}
    FTimer: TAWSTimer;
    FTimeout: Cardinal;
  protected
    procedure Execute; override;
  public
    constructor Create(ATimer: TAWSTimer; ATimeout: Cardinal);
    destructor Destroy; override;
    procedure HaltTimer;
  end;

  TTimerProc = TProc;

{$IFDEF MSWINDOWS}
procedure WinTimerProc(Context: Pointer; Success: Boolean) stdcall;
{$ENDIF}
{$IFDEF MACOS}
function MacCreateTimer(Interval: Integer; TimerFunc: TTimerProc): NSTimer;
procedure MacDestroyTimer(Timer: NSTimer);
{$ENDIF}

implementation

{$REGION MacTimer}
{$IFDEF MACOS}
type
  CocoaTimer = interface(NSObject)
    ['{7E2203B1-8C0D-4BCC-AE77-F46966217FED}']
    procedure timerEvent; cdecl;
    procedure release; cdecl;
  end;

  TCocoaTimer = class(TOCLocal)
  private
    FFunc : TTimerProc;
  public
    function GetObjectiveCClass: PTypeInfo; override;
    procedure timerEvent; cdecl;
    procedure SetTimerFunc(AFunc: TTimerProc);
    procedure release; cdecl;
  end;

function TCocoaTimer.GetObjectiveCClass: PTypeInfo;
begin
  Result := TypeInfo(CocoaTimer);
end;

procedure TCocoaTimer.timerEvent;
begin
  if Assigned(@FFunc) then FFunc;
end;

procedure TCocoaTimer.release;
var
  RC: Integer;
begin
  RC := NSObject(Super).retainCount;
  NSObject(Super).release;
  if RC = 1 then
    Destroy;
end;

procedure TCocoaTimer.SetTimerFunc(AFunc: TTimerProc);
begin
  FFunc := AFunc;
end;

function MacCreateTimer(Interval: Integer; TimerFunc: TTimerProc): NSTimer;
var
  Timer: NSTimer;
  User: TCocoaTimer;
  LInterval: NSTimeInterval;
begin
  User := TCocoaTimer.Create;
  try
    User.SetTimerFunc(TimerFunc);
    LInterval := Interval/1000;
    Timer := TNSTimer.Wrap(TNSTimer.OCClass.scheduledTimerWithTimeInterval(LInterval,
      User.GetObjectID, sel_getUid('timerEvent'), User.GetObjectID, True));
    Result := Timer;
  finally
    NSObject(User.Super).release;
  end;
end;

procedure MacDestroyTimer(Timer: NSTimer);
begin
  Timer.invalidate;
end;
{$ENDIF}
{$ENDREGION}


{ TAWSTimer<T> }

{$IFDEF MSWINDOWS}
procedure WinTimerProc(Context: Pointer; Success: Boolean) stdcall;
begin
  TAWSTimer(Context).DoTimer;
end;
{$ENDIF}

constructor TAWSTimer<T>.Create(ACallback: TAWSTimerCallback<T>; AData: T;
  AInterval: integer; ATimerType: TTimerType);
begin
  FData := AData;
  FCallback := ACallback;
  Update(AInterval, ATimerType);
end;

procedure TAWSTimer<T>.CreateTimer(AInterval: Integer; ATimerType: TTimerType);
{$IFDEF MSWINDOWS}
var
  Period: integer;
{$ENDIF}
begin
  {$IFDEF THREADTIMER}
  FTimerHandle := TAWSTimerThread.Create(TAWSTimer(Self), AInterval);
  {$ELSE}
    {$IFDEF MACOS}
    FTimerHandle := MacCreateTimer(AInterval, DoTimer);
    {$ENDIF}
    {$IFDEF MSWINDOWS}
    if ATimerType = TTimerType.SingleShot then
      Period := TimeoutInfinite
    else
      Period := AInterval;
    if not CreateTimerQueueTimer(FTimerHandle, 0, WinTimerProc, Self, AInterval, Period, 0) then
      RaiseLastOSError;
    {$ENDIF}
  {$ENDIF}
end;

destructor TAWSTimer<T>.Destroy;
begin
  DestroyTimer;
  inherited;
end;

procedure TAWSTimer<T>.DestroyTimer;
begin
  {$IFDEF THREADTIMER}
  FreeObj(FTimerHandle);
  {$ELSE}
  HaltTimer;
  {$ENDIF}
end;

procedure TAWSTimer<T>.HaltTimer;
begin
  {$IFDEF THREADTIMER}
  if FTimerHandle <> nil then
    FTimerHandle.HaltTimer;
  {$ELSE}
    {$IFDEF MACOS}
    if FTimerHandle <> nil then
    begin
      MacDestroyTimer(FTimerHandle);
      FTimerHandle := nil;
    end;
    {$ENDIF}
    {$IFDEF MSWINDOWS}
    if FTimerHandle <> 0 then
    begin
      DeleteTimerQueueTimer(0, FTimerHandle, 0);
      FTimerHandle := 0;
    end;
    {$ENDIF}
  {$ENDIF}
end;

procedure TAWSTimer<T>.DoCallback;
begin
  FCallback(FData);
end;

procedure TAWSTimer<T>.DoTimer;
begin
  if FTimerType = TTimerType.SingleShot then
    HaltTimer;
  DoCallback;
end;

procedure TAWSTimer<T>.Update(AInterval: Integer; ATimerType: TTimerType);
begin
  DestroyTimer;
  FTimerType := ATimerType;
  if Assigned(FCallback) and (AInterval > 0) then
    CreateTimer(AInterval, FTimerType);
end;

{ TAWSTimerThread<T> }

constructor TAWSTimerThread.Create(ATimer: TAWSTimer;
  ATimeout: Cardinal);
begin
  inherited Create;
  FTimeout := ATimeout;
  FTimer := ATimer;
  FEvent := TEvent.Create(nil, False, False, '');
end;

destructor TAWSTimerThread.Destroy;
begin
  HaltTimer;
  inherited Destroy;
  FTimer := nil;
{$IFDEF AUTOREFCOUNT}
  FEvent.DisposeOf;
{$ELSE}
  FEvent.Free;
{$ENDIF}
end;

procedure TAWSTimerThread.Execute;
begin
  while not Terminated do
    if FEvent.WaitFor(FTimeout) = wrTimeout then
      FTimer.DoTimer
    else
      break;
end;

procedure TAWSTimerThread.HaltTimer;
begin
  FEvent.SetEvent;
end;

end.

