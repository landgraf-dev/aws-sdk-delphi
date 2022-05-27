unit AWS.Translate.Model.GetTerminologyResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Translate.Model.TerminologyDataLocation, 
  AWS.Translate.Model.TerminologyProperties;

type
  TGetTerminologyResponse = class;
  
  IGetTerminologyResponse = interface(IAmazonWebServiceResponse)
    function GetAuxiliaryDataLocation: TTerminologyDataLocation;
    procedure SetAuxiliaryDataLocation(const Value: TTerminologyDataLocation);
    function GetKeepAuxiliaryDataLocation: Boolean;
    procedure SetKeepAuxiliaryDataLocation(const Value: Boolean);
    function GetTerminologyDataLocation: TTerminologyDataLocation;
    procedure SetTerminologyDataLocation(const Value: TTerminologyDataLocation);
    function GetKeepTerminologyDataLocation: Boolean;
    procedure SetKeepTerminologyDataLocation(const Value: Boolean);
    function GetTerminologyProperties: TTerminologyProperties;
    procedure SetTerminologyProperties(const Value: TTerminologyProperties);
    function GetKeepTerminologyProperties: Boolean;
    procedure SetKeepTerminologyProperties(const Value: Boolean);
    function Obj: TGetTerminologyResponse;
    function IsSetAuxiliaryDataLocation: Boolean;
    function IsSetTerminologyDataLocation: Boolean;
    function IsSetTerminologyProperties: Boolean;
    property AuxiliaryDataLocation: TTerminologyDataLocation read GetAuxiliaryDataLocation write SetAuxiliaryDataLocation;
    property KeepAuxiliaryDataLocation: Boolean read GetKeepAuxiliaryDataLocation write SetKeepAuxiliaryDataLocation;
    property TerminologyDataLocation: TTerminologyDataLocation read GetTerminologyDataLocation write SetTerminologyDataLocation;
    property KeepTerminologyDataLocation: Boolean read GetKeepTerminologyDataLocation write SetKeepTerminologyDataLocation;
    property TerminologyProperties: TTerminologyProperties read GetTerminologyProperties write SetTerminologyProperties;
    property KeepTerminologyProperties: Boolean read GetKeepTerminologyProperties write SetKeepTerminologyProperties;
  end;
  
  TGetTerminologyResponse = class(TAmazonWebServiceResponse, IGetTerminologyResponse)
  strict private
    FAuxiliaryDataLocation: TTerminologyDataLocation;
    FKeepAuxiliaryDataLocation: Boolean;
    FTerminologyDataLocation: TTerminologyDataLocation;
    FKeepTerminologyDataLocation: Boolean;
    FTerminologyProperties: TTerminologyProperties;
    FKeepTerminologyProperties: Boolean;
    function GetAuxiliaryDataLocation: TTerminologyDataLocation;
    procedure SetAuxiliaryDataLocation(const Value: TTerminologyDataLocation);
    function GetKeepAuxiliaryDataLocation: Boolean;
    procedure SetKeepAuxiliaryDataLocation(const Value: Boolean);
    function GetTerminologyDataLocation: TTerminologyDataLocation;
    procedure SetTerminologyDataLocation(const Value: TTerminologyDataLocation);
    function GetKeepTerminologyDataLocation: Boolean;
    procedure SetKeepTerminologyDataLocation(const Value: Boolean);
    function GetTerminologyProperties: TTerminologyProperties;
    procedure SetTerminologyProperties(const Value: TTerminologyProperties);
    function GetKeepTerminologyProperties: Boolean;
    procedure SetKeepTerminologyProperties(const Value: Boolean);
  strict protected
    function Obj: TGetTerminologyResponse;
  public
    destructor Destroy; override;
    function IsSetAuxiliaryDataLocation: Boolean;
    function IsSetTerminologyDataLocation: Boolean;
    function IsSetTerminologyProperties: Boolean;
    property AuxiliaryDataLocation: TTerminologyDataLocation read GetAuxiliaryDataLocation write SetAuxiliaryDataLocation;
    property KeepAuxiliaryDataLocation: Boolean read GetKeepAuxiliaryDataLocation write SetKeepAuxiliaryDataLocation;
    property TerminologyDataLocation: TTerminologyDataLocation read GetTerminologyDataLocation write SetTerminologyDataLocation;
    property KeepTerminologyDataLocation: Boolean read GetKeepTerminologyDataLocation write SetKeepTerminologyDataLocation;
    property TerminologyProperties: TTerminologyProperties read GetTerminologyProperties write SetTerminologyProperties;
    property KeepTerminologyProperties: Boolean read GetKeepTerminologyProperties write SetKeepTerminologyProperties;
  end;
  
implementation

{ TGetTerminologyResponse }

destructor TGetTerminologyResponse.Destroy;
begin
  TerminologyProperties := nil;
  TerminologyDataLocation := nil;
  AuxiliaryDataLocation := nil;
  inherited;
end;

function TGetTerminologyResponse.Obj: TGetTerminologyResponse;
begin
  Result := Self;
end;

function TGetTerminologyResponse.GetAuxiliaryDataLocation: TTerminologyDataLocation;
begin
  Result := FAuxiliaryDataLocation;
end;

procedure TGetTerminologyResponse.SetAuxiliaryDataLocation(const Value: TTerminologyDataLocation);
begin
  if FAuxiliaryDataLocation <> Value then
  begin
    if not KeepAuxiliaryDataLocation then
      FAuxiliaryDataLocation.Free;
    FAuxiliaryDataLocation := Value;
  end;
end;

function TGetTerminologyResponse.GetKeepAuxiliaryDataLocation: Boolean;
begin
  Result := FKeepAuxiliaryDataLocation;
end;

procedure TGetTerminologyResponse.SetKeepAuxiliaryDataLocation(const Value: Boolean);
begin
  FKeepAuxiliaryDataLocation := Value;
end;

function TGetTerminologyResponse.IsSetAuxiliaryDataLocation: Boolean;
begin
  Result := FAuxiliaryDataLocation <> nil;
end;

function TGetTerminologyResponse.GetTerminologyDataLocation: TTerminologyDataLocation;
begin
  Result := FTerminologyDataLocation;
end;

procedure TGetTerminologyResponse.SetTerminologyDataLocation(const Value: TTerminologyDataLocation);
begin
  if FTerminologyDataLocation <> Value then
  begin
    if not KeepTerminologyDataLocation then
      FTerminologyDataLocation.Free;
    FTerminologyDataLocation := Value;
  end;
end;

function TGetTerminologyResponse.GetKeepTerminologyDataLocation: Boolean;
begin
  Result := FKeepTerminologyDataLocation;
end;

procedure TGetTerminologyResponse.SetKeepTerminologyDataLocation(const Value: Boolean);
begin
  FKeepTerminologyDataLocation := Value;
end;

function TGetTerminologyResponse.IsSetTerminologyDataLocation: Boolean;
begin
  Result := FTerminologyDataLocation <> nil;
end;

function TGetTerminologyResponse.GetTerminologyProperties: TTerminologyProperties;
begin
  Result := FTerminologyProperties;
end;

procedure TGetTerminologyResponse.SetTerminologyProperties(const Value: TTerminologyProperties);
begin
  if FTerminologyProperties <> Value then
  begin
    if not KeepTerminologyProperties then
      FTerminologyProperties.Free;
    FTerminologyProperties := Value;
  end;
end;

function TGetTerminologyResponse.GetKeepTerminologyProperties: Boolean;
begin
  Result := FKeepTerminologyProperties;
end;

procedure TGetTerminologyResponse.SetKeepTerminologyProperties(const Value: Boolean);
begin
  FKeepTerminologyProperties := Value;
end;

function TGetTerminologyResponse.IsSetTerminologyProperties: Boolean;
begin
  Result := FTerminologyProperties <> nil;
end;

end.
