unit AWS.SSM.Model.GetCalendarStateRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetCalendarStateRequest = class;
  
  IGetCalendarStateRequest = interface
    function GetAtTime: string;
    procedure SetAtTime(const Value: string);
    function GetCalendarNames: TList<string>;
    procedure SetCalendarNames(const Value: TList<string>);
    function GetKeepCalendarNames: Boolean;
    procedure SetKeepCalendarNames(const Value: Boolean);
    function Obj: TGetCalendarStateRequest;
    function IsSetAtTime: Boolean;
    function IsSetCalendarNames: Boolean;
    property AtTime: string read GetAtTime write SetAtTime;
    property CalendarNames: TList<string> read GetCalendarNames write SetCalendarNames;
    property KeepCalendarNames: Boolean read GetKeepCalendarNames write SetKeepCalendarNames;
  end;
  
  TGetCalendarStateRequest = class(TAmazonSimpleSystemsManagementRequest, IGetCalendarStateRequest)
  strict private
    FAtTime: Nullable<string>;
    FCalendarNames: TList<string>;
    FKeepCalendarNames: Boolean;
    function GetAtTime: string;
    procedure SetAtTime(const Value: string);
    function GetCalendarNames: TList<string>;
    procedure SetCalendarNames(const Value: TList<string>);
    function GetKeepCalendarNames: Boolean;
    procedure SetKeepCalendarNames(const Value: Boolean);
  strict protected
    function Obj: TGetCalendarStateRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAtTime: Boolean;
    function IsSetCalendarNames: Boolean;
    property AtTime: string read GetAtTime write SetAtTime;
    property CalendarNames: TList<string> read GetCalendarNames write SetCalendarNames;
    property KeepCalendarNames: Boolean read GetKeepCalendarNames write SetKeepCalendarNames;
  end;
  
implementation

{ TGetCalendarStateRequest }

constructor TGetCalendarStateRequest.Create;
begin
  inherited;
  FCalendarNames := TList<string>.Create;
end;

destructor TGetCalendarStateRequest.Destroy;
begin
  CalendarNames := nil;
  inherited;
end;

function TGetCalendarStateRequest.Obj: TGetCalendarStateRequest;
begin
  Result := Self;
end;

function TGetCalendarStateRequest.GetAtTime: string;
begin
  Result := FAtTime.ValueOrDefault;
end;

procedure TGetCalendarStateRequest.SetAtTime(const Value: string);
begin
  FAtTime := Value;
end;

function TGetCalendarStateRequest.IsSetAtTime: Boolean;
begin
  Result := FAtTime.HasValue;
end;

function TGetCalendarStateRequest.GetCalendarNames: TList<string>;
begin
  Result := FCalendarNames;
end;

procedure TGetCalendarStateRequest.SetCalendarNames(const Value: TList<string>);
begin
  if FCalendarNames <> Value then
  begin
    if not KeepCalendarNames then
      FCalendarNames.Free;
    FCalendarNames := Value;
  end;
end;

function TGetCalendarStateRequest.GetKeepCalendarNames: Boolean;
begin
  Result := FKeepCalendarNames;
end;

procedure TGetCalendarStateRequest.SetKeepCalendarNames(const Value: Boolean);
begin
  FKeepCalendarNames := Value;
end;

function TGetCalendarStateRequest.IsSetCalendarNames: Boolean;
begin
  Result := (FCalendarNames <> nil) and (FCalendarNames.Count > 0);
end;

end.
