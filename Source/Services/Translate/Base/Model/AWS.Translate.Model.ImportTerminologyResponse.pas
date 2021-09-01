unit AWS.Translate.Model.ImportTerminologyResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Translate.Model.TerminologyProperties;

type
  TImportTerminologyResponse = class;
  
  IImportTerminologyResponse = interface(IAmazonWebServiceResponse)
    function GetTerminologyProperties: TTerminologyProperties;
    procedure SetTerminologyProperties(const Value: TTerminologyProperties);
    function GetKeepTerminologyProperties: Boolean;
    procedure SetKeepTerminologyProperties(const Value: Boolean);
    function Obj: TImportTerminologyResponse;
    function IsSetTerminologyProperties: Boolean;
    property TerminologyProperties: TTerminologyProperties read GetTerminologyProperties write SetTerminologyProperties;
    property KeepTerminologyProperties: Boolean read GetKeepTerminologyProperties write SetKeepTerminologyProperties;
  end;
  
  TImportTerminologyResponse = class(TAmazonWebServiceResponse, IImportTerminologyResponse)
  strict private
    FTerminologyProperties: TTerminologyProperties;
    FKeepTerminologyProperties: Boolean;
    function GetTerminologyProperties: TTerminologyProperties;
    procedure SetTerminologyProperties(const Value: TTerminologyProperties);
    function GetKeepTerminologyProperties: Boolean;
    procedure SetKeepTerminologyProperties(const Value: Boolean);
  strict protected
    function Obj: TImportTerminologyResponse;
  public
    destructor Destroy; override;
    function IsSetTerminologyProperties: Boolean;
    property TerminologyProperties: TTerminologyProperties read GetTerminologyProperties write SetTerminologyProperties;
    property KeepTerminologyProperties: Boolean read GetKeepTerminologyProperties write SetKeepTerminologyProperties;
  end;
  
implementation

{ TImportTerminologyResponse }

destructor TImportTerminologyResponse.Destroy;
begin
  TerminologyProperties := nil;
  inherited;
end;

function TImportTerminologyResponse.Obj: TImportTerminologyResponse;
begin
  Result := Self;
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
