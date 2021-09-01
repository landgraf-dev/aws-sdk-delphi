unit AWS.Translate.Model.UpdateParallelDataResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Translate.Enums;

type
  TUpdateParallelDataResponse = class;
  
  IUpdateParallelDataResponse = interface(IAmazonWebServiceResponse)
    function GetLatestUpdateAttemptAt: TDateTime;
    procedure SetLatestUpdateAttemptAt(const Value: TDateTime);
    function GetLatestUpdateAttemptStatus: TParallelDataStatus;
    procedure SetLatestUpdateAttemptStatus(const Value: TParallelDataStatus);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetStatus: TParallelDataStatus;
    procedure SetStatus(const Value: TParallelDataStatus);
    function Obj: TUpdateParallelDataResponse;
    function IsSetLatestUpdateAttemptAt: Boolean;
    function IsSetLatestUpdateAttemptStatus: Boolean;
    function IsSetName: Boolean;
    function IsSetStatus: Boolean;
    property LatestUpdateAttemptAt: TDateTime read GetLatestUpdateAttemptAt write SetLatestUpdateAttemptAt;
    property LatestUpdateAttemptStatus: TParallelDataStatus read GetLatestUpdateAttemptStatus write SetLatestUpdateAttemptStatus;
    property Name: string read GetName write SetName;
    property Status: TParallelDataStatus read GetStatus write SetStatus;
  end;
  
  TUpdateParallelDataResponse = class(TAmazonWebServiceResponse, IUpdateParallelDataResponse)
  strict private
    FLatestUpdateAttemptAt: Nullable<TDateTime>;
    FLatestUpdateAttemptStatus: Nullable<TParallelDataStatus>;
    FName: Nullable<string>;
    FStatus: Nullable<TParallelDataStatus>;
    function GetLatestUpdateAttemptAt: TDateTime;
    procedure SetLatestUpdateAttemptAt(const Value: TDateTime);
    function GetLatestUpdateAttemptStatus: TParallelDataStatus;
    procedure SetLatestUpdateAttemptStatus(const Value: TParallelDataStatus);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetStatus: TParallelDataStatus;
    procedure SetStatus(const Value: TParallelDataStatus);
  strict protected
    function Obj: TUpdateParallelDataResponse;
  public
    function IsSetLatestUpdateAttemptAt: Boolean;
    function IsSetLatestUpdateAttemptStatus: Boolean;
    function IsSetName: Boolean;
    function IsSetStatus: Boolean;
    property LatestUpdateAttemptAt: TDateTime read GetLatestUpdateAttemptAt write SetLatestUpdateAttemptAt;
    property LatestUpdateAttemptStatus: TParallelDataStatus read GetLatestUpdateAttemptStatus write SetLatestUpdateAttemptStatus;
    property Name: string read GetName write SetName;
    property Status: TParallelDataStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TUpdateParallelDataResponse }

function TUpdateParallelDataResponse.Obj: TUpdateParallelDataResponse;
begin
  Result := Self;
end;

function TUpdateParallelDataResponse.GetLatestUpdateAttemptAt: TDateTime;
begin
  Result := FLatestUpdateAttemptAt.ValueOrDefault;
end;

procedure TUpdateParallelDataResponse.SetLatestUpdateAttemptAt(const Value: TDateTime);
begin
  FLatestUpdateAttemptAt := Value;
end;

function TUpdateParallelDataResponse.IsSetLatestUpdateAttemptAt: Boolean;
begin
  Result := FLatestUpdateAttemptAt.HasValue;
end;

function TUpdateParallelDataResponse.GetLatestUpdateAttemptStatus: TParallelDataStatus;
begin
  Result := FLatestUpdateAttemptStatus.ValueOrDefault;
end;

procedure TUpdateParallelDataResponse.SetLatestUpdateAttemptStatus(const Value: TParallelDataStatus);
begin
  FLatestUpdateAttemptStatus := Value;
end;

function TUpdateParallelDataResponse.IsSetLatestUpdateAttemptStatus: Boolean;
begin
  Result := FLatestUpdateAttemptStatus.HasValue;
end;

function TUpdateParallelDataResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUpdateParallelDataResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TUpdateParallelDataResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TUpdateParallelDataResponse.GetStatus: TParallelDataStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TUpdateParallelDataResponse.SetStatus(const Value: TParallelDataStatus);
begin
  FStatus := Value;
end;

function TUpdateParallelDataResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
