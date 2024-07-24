unit AWS.SSM.Model.StartSessionRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TStartSessionRequest = class;
  
  IStartSessionRequest = interface
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetReason: string;
    procedure SetReason(const Value: string);
    function GetTarget: string;
    procedure SetTarget(const Value: string);
    function Obj: TStartSessionRequest;
    function IsSetDocumentName: Boolean;
    function IsSetParameters: Boolean;
    function IsSetReason: Boolean;
    function IsSetTarget: Boolean;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property Reason: string read GetReason write SetReason;
    property Target: string read GetTarget write SetTarget;
  end;
  
  TStartSessionRequest = class(TAmazonSimpleSystemsManagementRequest, IStartSessionRequest)
  strict private
    FDocumentName: Nullable<string>;
    FParameters: TObjectDictionary<string, TList<string>>;
    FKeepParameters: Boolean;
    FReason: Nullable<string>;
    FTarget: Nullable<string>;
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetReason: string;
    procedure SetReason(const Value: string);
    function GetTarget: string;
    procedure SetTarget(const Value: string);
  strict protected
    function Obj: TStartSessionRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDocumentName: Boolean;
    function IsSetParameters: Boolean;
    function IsSetReason: Boolean;
    function IsSetTarget: Boolean;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property Reason: string read GetReason write SetReason;
    property Target: string read GetTarget write SetTarget;
  end;
  
implementation

{ TStartSessionRequest }

constructor TStartSessionRequest.Create;
begin
  inherited;
  FParameters := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
end;

destructor TStartSessionRequest.Destroy;
begin
  Parameters := nil;
  inherited;
end;

function TStartSessionRequest.Obj: TStartSessionRequest;
begin
  Result := Self;
end;

function TStartSessionRequest.GetDocumentName: string;
begin
  Result := FDocumentName.ValueOrDefault;
end;

procedure TStartSessionRequest.SetDocumentName(const Value: string);
begin
  FDocumentName := Value;
end;

function TStartSessionRequest.IsSetDocumentName: Boolean;
begin
  Result := FDocumentName.HasValue;
end;

function TStartSessionRequest.GetParameters: TObjectDictionary<string, TList<string>>;
begin
  Result := FParameters;
end;

procedure TStartSessionRequest.SetParameters(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TStartSessionRequest.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TStartSessionRequest.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TStartSessionRequest.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

function TStartSessionRequest.GetReason: string;
begin
  Result := FReason.ValueOrDefault;
end;

procedure TStartSessionRequest.SetReason(const Value: string);
begin
  FReason := Value;
end;

function TStartSessionRequest.IsSetReason: Boolean;
begin
  Result := FReason.HasValue;
end;

function TStartSessionRequest.GetTarget: string;
begin
  Result := FTarget.ValueOrDefault;
end;

procedure TStartSessionRequest.SetTarget(const Value: string);
begin
  FTarget := Value;
end;

function TStartSessionRequest.IsSetTarget: Boolean;
begin
  Result := FTarget.HasValue;
end;

end.
