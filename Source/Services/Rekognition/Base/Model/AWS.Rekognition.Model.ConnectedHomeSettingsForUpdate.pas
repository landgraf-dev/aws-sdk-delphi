unit AWS.Rekognition.Model.ConnectedHomeSettingsForUpdate;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TConnectedHomeSettingsForUpdate = class;
  
  IConnectedHomeSettingsForUpdate = interface
    function GetLabels: TList<string>;
    procedure SetLabels(const Value: TList<string>);
    function GetKeepLabels: Boolean;
    procedure SetKeepLabels(const Value: Boolean);
    function GetMinConfidence: Double;
    procedure SetMinConfidence(const Value: Double);
    function Obj: TConnectedHomeSettingsForUpdate;
    function IsSetLabels: Boolean;
    function IsSetMinConfidence: Boolean;
    property Labels: TList<string> read GetLabels write SetLabels;
    property KeepLabels: Boolean read GetKeepLabels write SetKeepLabels;
    property MinConfidence: Double read GetMinConfidence write SetMinConfidence;
  end;
  
  TConnectedHomeSettingsForUpdate = class
  strict private
    FLabels: TList<string>;
    FKeepLabels: Boolean;
    FMinConfidence: Nullable<Double>;
    function GetLabels: TList<string>;
    procedure SetLabels(const Value: TList<string>);
    function GetKeepLabels: Boolean;
    procedure SetKeepLabels(const Value: Boolean);
    function GetMinConfidence: Double;
    procedure SetMinConfidence(const Value: Double);
  strict protected
    function Obj: TConnectedHomeSettingsForUpdate;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetLabels: Boolean;
    function IsSetMinConfidence: Boolean;
    property Labels: TList<string> read GetLabels write SetLabels;
    property KeepLabels: Boolean read GetKeepLabels write SetKeepLabels;
    property MinConfidence: Double read GetMinConfidence write SetMinConfidence;
  end;
  
implementation

{ TConnectedHomeSettingsForUpdate }

constructor TConnectedHomeSettingsForUpdate.Create;
begin
  inherited;
  FLabels := TList<string>.Create;
end;

destructor TConnectedHomeSettingsForUpdate.Destroy;
begin
  Labels := nil;
  inherited;
end;

function TConnectedHomeSettingsForUpdate.Obj: TConnectedHomeSettingsForUpdate;
begin
  Result := Self;
end;

function TConnectedHomeSettingsForUpdate.GetLabels: TList<string>;
begin
  Result := FLabels;
end;

procedure TConnectedHomeSettingsForUpdate.SetLabels(const Value: TList<string>);
begin
  if FLabels <> Value then
  begin
    if not KeepLabels then
      FLabels.Free;
    FLabels := Value;
  end;
end;

function TConnectedHomeSettingsForUpdate.GetKeepLabels: Boolean;
begin
  Result := FKeepLabels;
end;

procedure TConnectedHomeSettingsForUpdate.SetKeepLabels(const Value: Boolean);
begin
  FKeepLabels := Value;
end;

function TConnectedHomeSettingsForUpdate.IsSetLabels: Boolean;
begin
  Result := (FLabels <> nil) and (FLabels.Count > 0);
end;

function TConnectedHomeSettingsForUpdate.GetMinConfidence: Double;
begin
  Result := FMinConfidence.ValueOrDefault;
end;

procedure TConnectedHomeSettingsForUpdate.SetMinConfidence(const Value: Double);
begin
  FMinConfidence := Value;
end;

function TConnectedHomeSettingsForUpdate.IsSetMinConfidence: Boolean;
begin
  Result := FMinConfidence.HasValue;
end;

end.
