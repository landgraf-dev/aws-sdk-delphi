unit AWSTests.UtilityMethods;

interface

uses
  System.SysUtils, System.DateUtils, System.Math;

type
  IListSleeper = interface
    procedure Sleep;
  end;

  TUtilityMethods = class
  public const
    SDK_TEST_PREFIX = 'aws-sdk-delphi';
  public
    class procedure WaitUntilSuccess(Action: TProc; SleepSeconds: Integer = 5; MaxWaitSeconds: Integer = 300); overload; static;
    class procedure WaitUntilSuccess(Action: TProc; Sleeper: IListSleeper; MaxWaitSeconds: Integer = 300); overload; static;
    class function WaitUntilSuccess<T>(LoadFunction: TFunc<T>; SleepSeconds: Integer = 5; MaxWaitSeconds: Integer = 300): T; overload; static;
    class procedure WaitUntil(MatchFunction: TFunc<Boolean>; Sleeper: IListSleeper; MaxWaitSeconds: Integer = 300); overload; static;
    class procedure WaitUntil(MatchFunction: TFunc<Boolean>; SleepSeconds: Integer = 5; MaxWaitSeconds: Integer = 300); overload; static;
  end;

  TListSleeper = class(TInterfacedObject, IListSleeper)
  strict private
    FMillisecondsList: TArray<Integer>;
    FAttempt: Integer;
  public
    constructor Create(const MillisecondsList: TArray<Integer>);
    procedure Sleep;
  end;

implementation

{ TUtilityMethods }

class procedure TUtilityMethods.WaitUntilSuccess(Action: TProc; SleepSeconds, MaxWaitSeconds: Integer);
begin
  if sleepSeconds < 0 then
    raise EArgumentOutOfRangeException.Create('sleepSeconds');

  WaitUntilSuccess(Action, TListSleeper.Create([SleepSeconds * 1000]), MaxWaitSeconds);
end;

class procedure TUtilityMethods.WaitUntil(MatchFunction: TFunc<Boolean>; Sleeper: IListSleeper; MaxWaitSeconds: Integer);
begin
  if MaxWaitSeconds < 0 then
    raise EArgumentOutOfRangeException.Create('maxWaitSeconds');

  var endTime := IncSecond(Now, MaxWaitSeconds);

  while Now < endTime do
  begin
    if matchFunction() then
      Exit;
    Sleeper.Sleep();
  end;

  raise Exception.CreateFmt('Wait condition was not satisfied for %d seconds', [MaxWaitSeconds]);
end;

class procedure TUtilityMethods.WaitUntil(MatchFunction: TFunc<Boolean>; SleepSeconds, MaxWaitSeconds: Integer);
begin
  WaitUntil(MatchFunction, TListSleeper.Create([SleepSeconds * 1000]), MaxWaitSeconds);
end;

class procedure TUtilityMethods.WaitUntilSuccess(Action: TProc; Sleeper: IListSleeper; MaxWaitSeconds: Integer);
begin
  WaitUntil(
    function: Boolean
    begin
      try
        Action();
        Result := True;
      except
        Result := False;
      end;
    end, Sleeper, MaxWaitSeconds);
end;

class function TUtilityMethods.WaitUntilSuccess<T>(LoadFunction: TFunc<T>; SleepSeconds, MaxWaitSeconds: Integer): T;
begin
  var Value: T := Default(T);
  WaitUntil(
    function: Boolean
    begin
      try
        Value := loadFunction();
        Exit(Value <> Default(T));
      except
        Exit(False);
      end;
    end, sleepSeconds, maxWaitSeconds);
  Result := Value;
end;

{ TListSleeper }

constructor TListSleeper.Create(const MillisecondsList: TArray<Integer>);
begin
  FAttempt := 0;
  FMillisecondsList := MillisecondsList;
end;

procedure TListSleeper.Sleep;
begin
  // if there are more attempts than array elements just keep using the last one
  var index := Min(FAttempt, Length(FMillisecondsList) - 1);
  System.SysUtils.Sleep(FMillisecondsList[index]);
  Inc(FAttempt);
end;

end.
