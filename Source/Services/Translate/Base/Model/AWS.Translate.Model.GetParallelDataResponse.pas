unit AWS.Translate.Model.GetParallelDataResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Translate.Model.ParallelDataDataLocation, 
  AWS.Translate.Model.ParallelDataProperties;

type
  TGetParallelDataResponse = class;
  
  IGetParallelDataResponse = interface(IAmazonWebServiceResponse)
    function GetAuxiliaryDataLocation: TParallelDataDataLocation;
    procedure SetAuxiliaryDataLocation(const Value: TParallelDataDataLocation);
    function GetKeepAuxiliaryDataLocation: Boolean;
    procedure SetKeepAuxiliaryDataLocation(const Value: Boolean);
    function GetDataLocation: TParallelDataDataLocation;
    procedure SetDataLocation(const Value: TParallelDataDataLocation);
    function GetKeepDataLocation: Boolean;
    procedure SetKeepDataLocation(const Value: Boolean);
    function GetLatestUpdateAttemptAuxiliaryDataLocation: TParallelDataDataLocation;
    procedure SetLatestUpdateAttemptAuxiliaryDataLocation(const Value: TParallelDataDataLocation);
    function GetKeepLatestUpdateAttemptAuxiliaryDataLocation: Boolean;
    procedure SetKeepLatestUpdateAttemptAuxiliaryDataLocation(const Value: Boolean);
    function GetParallelDataProperties: TParallelDataProperties;
    procedure SetParallelDataProperties(const Value: TParallelDataProperties);
    function GetKeepParallelDataProperties: Boolean;
    procedure SetKeepParallelDataProperties(const Value: Boolean);
    function Obj: TGetParallelDataResponse;
    function IsSetAuxiliaryDataLocation: Boolean;
    function IsSetDataLocation: Boolean;
    function IsSetLatestUpdateAttemptAuxiliaryDataLocation: Boolean;
    function IsSetParallelDataProperties: Boolean;
    property AuxiliaryDataLocation: TParallelDataDataLocation read GetAuxiliaryDataLocation write SetAuxiliaryDataLocation;
    property KeepAuxiliaryDataLocation: Boolean read GetKeepAuxiliaryDataLocation write SetKeepAuxiliaryDataLocation;
    property DataLocation: TParallelDataDataLocation read GetDataLocation write SetDataLocation;
    property KeepDataLocation: Boolean read GetKeepDataLocation write SetKeepDataLocation;
    property LatestUpdateAttemptAuxiliaryDataLocation: TParallelDataDataLocation read GetLatestUpdateAttemptAuxiliaryDataLocation write SetLatestUpdateAttemptAuxiliaryDataLocation;
    property KeepLatestUpdateAttemptAuxiliaryDataLocation: Boolean read GetKeepLatestUpdateAttemptAuxiliaryDataLocation write SetKeepLatestUpdateAttemptAuxiliaryDataLocation;
    property ParallelDataProperties: TParallelDataProperties read GetParallelDataProperties write SetParallelDataProperties;
    property KeepParallelDataProperties: Boolean read GetKeepParallelDataProperties write SetKeepParallelDataProperties;
  end;
  
  TGetParallelDataResponse = class(TAmazonWebServiceResponse, IGetParallelDataResponse)
  strict private
    FAuxiliaryDataLocation: TParallelDataDataLocation;
    FKeepAuxiliaryDataLocation: Boolean;
    FDataLocation: TParallelDataDataLocation;
    FKeepDataLocation: Boolean;
    FLatestUpdateAttemptAuxiliaryDataLocation: TParallelDataDataLocation;
    FKeepLatestUpdateAttemptAuxiliaryDataLocation: Boolean;
    FParallelDataProperties: TParallelDataProperties;
    FKeepParallelDataProperties: Boolean;
    function GetAuxiliaryDataLocation: TParallelDataDataLocation;
    procedure SetAuxiliaryDataLocation(const Value: TParallelDataDataLocation);
    function GetKeepAuxiliaryDataLocation: Boolean;
    procedure SetKeepAuxiliaryDataLocation(const Value: Boolean);
    function GetDataLocation: TParallelDataDataLocation;
    procedure SetDataLocation(const Value: TParallelDataDataLocation);
    function GetKeepDataLocation: Boolean;
    procedure SetKeepDataLocation(const Value: Boolean);
    function GetLatestUpdateAttemptAuxiliaryDataLocation: TParallelDataDataLocation;
    procedure SetLatestUpdateAttemptAuxiliaryDataLocation(const Value: TParallelDataDataLocation);
    function GetKeepLatestUpdateAttemptAuxiliaryDataLocation: Boolean;
    procedure SetKeepLatestUpdateAttemptAuxiliaryDataLocation(const Value: Boolean);
    function GetParallelDataProperties: TParallelDataProperties;
    procedure SetParallelDataProperties(const Value: TParallelDataProperties);
    function GetKeepParallelDataProperties: Boolean;
    procedure SetKeepParallelDataProperties(const Value: Boolean);
  strict protected
    function Obj: TGetParallelDataResponse;
  public
    destructor Destroy; override;
    function IsSetAuxiliaryDataLocation: Boolean;
    function IsSetDataLocation: Boolean;
    function IsSetLatestUpdateAttemptAuxiliaryDataLocation: Boolean;
    function IsSetParallelDataProperties: Boolean;
    property AuxiliaryDataLocation: TParallelDataDataLocation read GetAuxiliaryDataLocation write SetAuxiliaryDataLocation;
    property KeepAuxiliaryDataLocation: Boolean read GetKeepAuxiliaryDataLocation write SetKeepAuxiliaryDataLocation;
    property DataLocation: TParallelDataDataLocation read GetDataLocation write SetDataLocation;
    property KeepDataLocation: Boolean read GetKeepDataLocation write SetKeepDataLocation;
    property LatestUpdateAttemptAuxiliaryDataLocation: TParallelDataDataLocation read GetLatestUpdateAttemptAuxiliaryDataLocation write SetLatestUpdateAttemptAuxiliaryDataLocation;
    property KeepLatestUpdateAttemptAuxiliaryDataLocation: Boolean read GetKeepLatestUpdateAttemptAuxiliaryDataLocation write SetKeepLatestUpdateAttemptAuxiliaryDataLocation;
    property ParallelDataProperties: TParallelDataProperties read GetParallelDataProperties write SetParallelDataProperties;
    property KeepParallelDataProperties: Boolean read GetKeepParallelDataProperties write SetKeepParallelDataProperties;
  end;
  
implementation

{ TGetParallelDataResponse }

destructor TGetParallelDataResponse.Destroy;
begin
  ParallelDataProperties := nil;
  LatestUpdateAttemptAuxiliaryDataLocation := nil;
  DataLocation := nil;
  AuxiliaryDataLocation := nil;
  inherited;
end;

function TGetParallelDataResponse.Obj: TGetParallelDataResponse;
begin
  Result := Self;
end;

function TGetParallelDataResponse.GetAuxiliaryDataLocation: TParallelDataDataLocation;
begin
  Result := FAuxiliaryDataLocation;
end;

procedure TGetParallelDataResponse.SetAuxiliaryDataLocation(const Value: TParallelDataDataLocation);
begin
  if FAuxiliaryDataLocation <> Value then
  begin
    if not KeepAuxiliaryDataLocation then
      FAuxiliaryDataLocation.Free;
    FAuxiliaryDataLocation := Value;
  end;
end;

function TGetParallelDataResponse.GetKeepAuxiliaryDataLocation: Boolean;
begin
  Result := FKeepAuxiliaryDataLocation;
end;

procedure TGetParallelDataResponse.SetKeepAuxiliaryDataLocation(const Value: Boolean);
begin
  FKeepAuxiliaryDataLocation := Value;
end;

function TGetParallelDataResponse.IsSetAuxiliaryDataLocation: Boolean;
begin
  Result := FAuxiliaryDataLocation <> nil;
end;

function TGetParallelDataResponse.GetDataLocation: TParallelDataDataLocation;
begin
  Result := FDataLocation;
end;

procedure TGetParallelDataResponse.SetDataLocation(const Value: TParallelDataDataLocation);
begin
  if FDataLocation <> Value then
  begin
    if not KeepDataLocation then
      FDataLocation.Free;
    FDataLocation := Value;
  end;
end;

function TGetParallelDataResponse.GetKeepDataLocation: Boolean;
begin
  Result := FKeepDataLocation;
end;

procedure TGetParallelDataResponse.SetKeepDataLocation(const Value: Boolean);
begin
  FKeepDataLocation := Value;
end;

function TGetParallelDataResponse.IsSetDataLocation: Boolean;
begin
  Result := FDataLocation <> nil;
end;

function TGetParallelDataResponse.GetLatestUpdateAttemptAuxiliaryDataLocation: TParallelDataDataLocation;
begin
  Result := FLatestUpdateAttemptAuxiliaryDataLocation;
end;

procedure TGetParallelDataResponse.SetLatestUpdateAttemptAuxiliaryDataLocation(const Value: TParallelDataDataLocation);
begin
  if FLatestUpdateAttemptAuxiliaryDataLocation <> Value then
  begin
    if not KeepLatestUpdateAttemptAuxiliaryDataLocation then
      FLatestUpdateAttemptAuxiliaryDataLocation.Free;
    FLatestUpdateAttemptAuxiliaryDataLocation := Value;
  end;
end;

function TGetParallelDataResponse.GetKeepLatestUpdateAttemptAuxiliaryDataLocation: Boolean;
begin
  Result := FKeepLatestUpdateAttemptAuxiliaryDataLocation;
end;

procedure TGetParallelDataResponse.SetKeepLatestUpdateAttemptAuxiliaryDataLocation(const Value: Boolean);
begin
  FKeepLatestUpdateAttemptAuxiliaryDataLocation := Value;
end;

function TGetParallelDataResponse.IsSetLatestUpdateAttemptAuxiliaryDataLocation: Boolean;
begin
  Result := FLatestUpdateAttemptAuxiliaryDataLocation <> nil;
end;

function TGetParallelDataResponse.GetParallelDataProperties: TParallelDataProperties;
begin
  Result := FParallelDataProperties;
end;

procedure TGetParallelDataResponse.SetParallelDataProperties(const Value: TParallelDataProperties);
begin
  if FParallelDataProperties <> Value then
  begin
    if not KeepParallelDataProperties then
      FParallelDataProperties.Free;
    FParallelDataProperties := Value;
  end;
end;

function TGetParallelDataResponse.GetKeepParallelDataProperties: Boolean;
begin
  Result := FKeepParallelDataProperties;
end;

procedure TGetParallelDataResponse.SetKeepParallelDataProperties(const Value: Boolean);
begin
  FKeepParallelDataProperties := Value;
end;

function TGetParallelDataResponse.IsSetParallelDataProperties: Boolean;
begin
  Result := FParallelDataProperties <> nil;
end;

end.
