unit AWS.Translate.Model.ImportTerminologyResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Translate.Model.TerminologyDataLocation, 
  AWS.Translate.Model.TerminologyProperties;

type
  TImportTerminologyResponse = class;
  
  IImportTerminologyResponse = interface(IAmazonWebServiceResponse)
    function GetAuxiliaryDataLocation: TTerminologyDataLocation;
    procedure SetAuxiliaryDataLocation(const Value: TTerminologyDataLocation);
    function GetKeepAuxiliaryDataLocation: Boolean;
    procedure SetKeepAuxiliaryDataLocation(const Value: Boolean);
    function GetTerminologyProperties: TTerminologyProperties;
    procedure SetTerminologyProperties(const Value: TTerminologyProperties);
    function GetKeepTerminologyProperties: Boolean;
    procedure SetKeepTerminologyProperties(const Value: Boolean);
    function Obj: TImportTerminologyResponse;
    function IsSetAuxiliaryDataLocation: Boolean;
    function IsSetTerminologyProperties: Boolean;
    property AuxiliaryDataLocation: TTerminologyDataLocation read GetAuxiliaryDataLocation write SetAuxiliaryDataLocation;
    property KeepAuxiliaryDataLocation: Boolean read GetKeepAuxiliaryDataLocation write SetKeepAuxiliaryDataLocation;
    property TerminologyProperties: TTerminologyProperties read GetTerminologyProperties write SetTerminologyProperties;
    property KeepTerminologyProperties: Boolean read GetKeepTerminologyProperties write SetKeepTerminologyProperties;
  end;
  
  TImportTerminologyResponse = class(TAmazonWebServiceResponse, IImportTerminologyResponse)
  strict private
    FAuxiliaryDataLocation: TTerminologyDataLocation;
    FKeepAuxiliaryDataLocation: Boolean;
    FTerminologyProperties: TTerminologyProperties;
    FKeepTerminologyProperties: Boolean;
    function GetAuxiliaryDataLocation: TTerminologyDataLocation;
    procedure SetAuxiliaryDataLocation(const Value: TTerminologyDataLocation);
    function GetKeepAuxiliaryDataLocation: Boolean;
    procedure SetKeepAuxiliaryDataLocation(const Value: Boolean);
    function GetTerminologyProperties: TTerminologyProperties;
    procedure SetTerminologyProperties(const Value: TTerminologyProperties);
    function GetKeepTerminologyProperties: Boolean;
    procedure SetKeepTerminologyProperties(const Value: Boolean);
  strict protected
    function Obj: TImportTerminologyResponse;
  public
    destructor Destroy; override;
    function IsSetAuxiliaryDataLocation: Boolean;
    function IsSetTerminologyProperties: Boolean;
    property AuxiliaryDataLocation: TTerminologyDataLocation read GetAuxiliaryDataLocation write SetAuxiliaryDataLocation;
    property KeepAuxiliaryDataLocation: Boolean read GetKeepAuxiliaryDataLocation write SetKeepAuxiliaryDataLocation;
    property TerminologyProperties: TTerminologyProperties read GetTerminologyProperties write SetTerminologyProperties;
    property KeepTerminologyProperties: Boolean read GetKeepTerminologyProperties write SetKeepTerminologyProperties;
  end;
  
implementation

{ TImportTerminologyResponse }

destructor TImportTerminologyResponse.Destroy;
begin
  TerminologyProperties := nil;
  AuxiliaryDataLocation := nil;
  inherited;
end;

function TImportTerminologyResponse.Obj: TImportTerminologyResponse;
begin
  Result := Self;
end;

function TImportTerminologyResponse.GetAuxiliaryDataLocation: TTerminologyDataLocation;
begin
  Result := FAuxiliaryDataLocation;
end;

procedure TImportTerminologyResponse.SetAuxiliaryDataLocation(const Value: TTerminologyDataLocation);
begin
  if FAuxiliaryDataLocation <> Value then
  begin
    if not KeepAuxiliaryDataLocation then
      FAuxiliaryDataLocation.Free;
    FAuxiliaryDataLocation := Value;
  end;
end;

function TImportTerminologyResponse.GetKeepAuxiliaryDataLocation: Boolean;
begin
  Result := FKeepAuxiliaryDataLocation;
end;

procedure TImportTerminologyResponse.SetKeepAuxiliaryDataLocation(const Value: Boolean);
begin
  FKeepAuxiliaryDataLocation := Value;
end;

function TImportTerminologyResponse.IsSetAuxiliaryDataLocation: Boolean;
begin
  Result := FAuxiliaryDataLocation <> nil;
end;

function TImportTerminologyResponse.GetTerminologyProperties: TTerminologyProperties;
begin
  Result := FTerminologyProperties;
end;

procedure TImportTerminologyResponse.SetTerminologyProperties(const Value: TTerminologyProperties);
begin
  if FTerminologyProperties <> Value then
  begin
    if not KeepTerminologyProperties then
      FTerminologyProperties.Free;
    FTerminologyProperties := Value;
  end;
end;

function TImportTerminologyResponse.GetKeepTerminologyProperties: Boolean;
begin
  Result := FKeepTerminologyProperties;
end;

procedure TImportTerminologyResponse.SetKeepTerminologyProperties(const Value: Boolean);
begin
  FKeepTerminologyProperties := Value;
end;

function TImportTerminologyResponse.IsSetTerminologyProperties: Boolean;
begin
  Result := FTerminologyProperties <> nil;
end;

end.
