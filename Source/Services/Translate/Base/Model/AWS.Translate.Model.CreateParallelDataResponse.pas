unit AWS.Translate.Model.CreateParallelDataResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.Translate.Enums;

type
  TCreateParallelDataResponse = class;
  
  ICreateParallelDataResponse = interface(IAmazonWebServiceResponse)
    function GetName: string;
    procedure SetName(const Value: string);
    function GetStatus: TParallelDataStatus;
    procedure SetStatus(const Value: TParallelDataStatus);
    function Obj: TCreateParallelDataResponse;
    function IsSetName: Boolean;
    function IsSetStatus: Boolean;
    property Name: string read GetName write SetName;
    property Status: TParallelDataStatus read GetStatus write SetStatus;
  end;
  
  TCreateParallelDataResponse = class(TAmazonWebServiceResponse, ICreateParallelDataResponse)
  strict private
    FName: Nullable<string>;
    FStatus: Nullable<TParallelDataStatus>;
    function GetName: string;
    procedure SetName(const Value: string);
    function GetStatus: TParallelDataStatus;
    procedure SetStatus(const Value: TParallelDataStatus);
  strict protected
    function Obj: TCreateParallelDataResponse;
  public
    function IsSetName: Boolean;
    function IsSetStatus: Boolean;
    property Name: string read GetName write SetName;
    property Status: TParallelDataStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TCreateParallelDataResponse }

function TCreateParallelDataResponse.Obj: TCreateParallelDataResponse;
begin
  Result := Self;
end;

function TCreateParallelDataResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TCreateParallelDataResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TCreateParallelDataResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TCreateParallelDataResponse.GetStatus: TParallelDataStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TCreateParallelDataResponse.SetStatus(const Value: TParallelDataStatus);
begin
  FStatus := Value;
end;

function TCreateParallelDataResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
