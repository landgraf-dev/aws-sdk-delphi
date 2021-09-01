unit AWS.Translate.Model.DeleteParallelDataResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Translate.Enums;

type
  TDeleteParallelDataResponse = class;
  
  IDeleteParallelDataResponse = interface(IAmazonWebServiceResponse)
    function GetName: string;
    procedure SetName(const Value: string);
    function GetStatus: TParallelDataStatus;
    procedure SetStatus(const Value: TParallelDataStatus);
    function Obj: TDeleteParallelDataResponse;
    function IsSetName: Boolean;
    function IsSetStatus: Boolean;
    property Name: string read GetName write SetName;
    property Status: TParallelDataStatus read GetStatus write SetStatus;
  end;
  
  TDeleteParallelDataResponse = class(TAmazonWebServiceResponse, IDeleteParallelDataResponse)
  strict private
    FName: Nullable<string>;
    FStatus: Nullable<TParallelDataStatus>;
    function GetName: string;
    procedure SetName(const Value: string);
    function GetStatus: TParallelDataStatus;
    procedure SetStatus(const Value: TParallelDataStatus);
  strict protected
    function Obj: TDeleteParallelDataResponse;
  public
    function IsSetName: Boolean;
    function IsSetStatus: Boolean;
    property Name: string read GetName write SetName;
    property Status: TParallelDataStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TDeleteParallelDataResponse }

function TDeleteParallelDataResponse.Obj: TDeleteParallelDataResponse;
begin
  Result := Self;
end;

function TDeleteParallelDataResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDeleteParallelDataResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TDeleteParallelDataResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TDeleteParallelDataResponse.GetStatus: TParallelDataStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TDeleteParallelDataResponse.SetStatus(const Value: TParallelDataStatus);
begin
  FStatus := Value;
end;

function TDeleteParallelDataResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
