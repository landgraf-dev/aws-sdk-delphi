unit AWS.SSM.Model.MaintenanceWindowAutomationParameters;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TMaintenanceWindowAutomationParameters = class;
  
  IMaintenanceWindowAutomationParameters = interface
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function Obj: TMaintenanceWindowAutomationParameters;
    function IsSetDocumentVersion: Boolean;
    function IsSetParameters: Boolean;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
  end;
  
  TMaintenanceWindowAutomationParameters = class
  strict private
    FDocumentVersion: Nullable<string>;
    FParameters: TObjectDictionary<string, TList<string>>;
    FKeepParameters: Boolean;
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
  strict protected
    function Obj: TMaintenanceWindowAutomationParameters;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDocumentVersion: Boolean;
    function IsSetParameters: Boolean;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
  end;
  
implementation

{ TMaintenanceWindowAutomationParameters }

constructor TMaintenanceWindowAutomationParameters.Create;
begin
  inherited;
  FParameters := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
end;

destructor TMaintenanceWindowAutomationParameters.Destroy;
begin
  Parameters := nil;
  inherited;
end;

function TMaintenanceWindowAutomationParameters.Obj: TMaintenanceWindowAutomationParameters;
begin
  Result := Self;
end;

function TMaintenanceWindowAutomationParameters.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TMaintenanceWindowAutomationParameters.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TMaintenanceWindowAutomationParameters.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TMaintenanceWindowAutomationParameters.GetParameters: TObjectDictionary<string, TList<string>>;
begin
  Result := FParameters;
end;

procedure TMaintenanceWindowAutomationParameters.SetParameters(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TMaintenanceWindowAutomationParameters.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TMaintenanceWindowAutomationParameters.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TMaintenanceWindowAutomationParameters.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

end.
