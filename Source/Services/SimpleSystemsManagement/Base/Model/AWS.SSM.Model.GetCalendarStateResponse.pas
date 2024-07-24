unit AWS.SSM.Model.GetCalendarStateResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TGetCalendarStateResponse = class;
  
  IGetCalendarStateResponse = interface(IAmazonWebServiceResponse)
    function GetAtTime: string;
    procedure SetAtTime(const Value: string);
    function GetNextTransitionTime: string;
    procedure SetNextTransitionTime(const Value: string);
    function GetState: TCalendarState;
    procedure SetState(const Value: TCalendarState);
    function Obj: TGetCalendarStateResponse;
    function IsSetAtTime: Boolean;
    function IsSetNextTransitionTime: Boolean;
    function IsSetState: Boolean;
    property AtTime: string read GetAtTime write SetAtTime;
    property NextTransitionTime: string read GetNextTransitionTime write SetNextTransitionTime;
    property State: TCalendarState read GetState write SetState;
  end;
  
  TGetCalendarStateResponse = class(TAmazonWebServiceResponse, IGetCalendarStateResponse)
  strict private
    FAtTime: Nullable<string>;
    FNextTransitionTime: Nullable<string>;
    FState: Nullable<TCalendarState>;
    function GetAtTime: string;
    procedure SetAtTime(const Value: string);
    function GetNextTransitionTime: string;
    procedure SetNextTransitionTime(const Value: string);
    function GetState: TCalendarState;
    procedure SetState(const Value: TCalendarState);
  strict protected
    function Obj: TGetCalendarStateResponse;
  public
    function IsSetAtTime: Boolean;
    function IsSetNextTransitionTime: Boolean;
    function IsSetState: Boolean;
    property AtTime: string read GetAtTime write SetAtTime;
    property NextTransitionTime: string read GetNextTransitionTime write SetNextTransitionTime;
    property State: TCalendarState read GetState write SetState;
  end;
  
implementation

{ TGetCalendarStateResponse }

function TGetCalendarStateResponse.Obj: TGetCalendarStateResponse;
begin
  Result := Self;
end;

function TGetCalendarStateResponse.GetAtTime: string;
begin
  Result := FAtTime.ValueOrDefault;
end;

procedure TGetCalendarStateResponse.SetAtTime(const Value: string);
begin
  FAtTime := Value;
end;

function TGetCalendarStateResponse.IsSetAtTime: Boolean;
begin
  Result := FAtTime.HasValue;
end;

function TGetCalendarStateResponse.GetNextTransitionTime: string;
begin
  Result := FNextTransitionTime.ValueOrDefault;
end;

procedure TGetCalendarStateResponse.SetNextTransitionTime(const Value: string);
begin
  FNextTransitionTime := Value;
end;

function TGetCalendarStateResponse.IsSetNextTransitionTime: Boolean;
begin
  Result := FNextTransitionTime.HasValue;
end;

function TGetCalendarStateResponse.GetState: TCalendarState;
begin
  Result := FState.ValueOrDefault;
end;

procedure TGetCalendarStateResponse.SetState(const Value: TCalendarState);
begin
  FState := Value;
end;

function TGetCalendarStateResponse.IsSetState: Boolean;
begin
  Result := FState.HasValue;
end;

end.
