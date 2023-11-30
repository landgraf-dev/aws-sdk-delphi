unit AWS.Rekognition.Model.ConnectedHomeSettings;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TConnectedHomeSettings = class;
  
  IConnectedHomeSettings = interface
    function GetLabels: TList<string>;
    procedure SetLabels(const Value: TList<string>);
    function GetKeepLabels: Boolean;
    procedure SetKeepLabels(const Value: Boolean);
    function GetMinConfidence: Double;
    procedure SetMinConfidence(const Value: Double);
    function Obj: TConnectedHomeSettings;
    function IsSetLabels: Boolean;
    function IsSetMinConfidence: Boolean;
    property Labels: TList<string> read GetLabels write SetLabels;
    property KeepLabels: Boolean read GetKeepLabels write SetKeepLabels;
    property MinConfidence: Double read GetMinConfidence write SetMinConfidence;
  end;
  
  TConnectedHomeSettings = class
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
    function Obj: TConnectedHomeSettings;
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

{ TConnectedHomeSettings }

constructor TConnectedHomeSettings.Create;
begin
  inherited;
  FLabels := TList<string>.Create;
end;

destructor TConnectedHomeSettings.Destroy;
begin
  Labels := nil;
  inherited;
end;

function TConnectedHomeSettings.Obj: TConnectedHomeSettings;
begin
  Result := Self;
end;

function TConnectedHomeSettings.GetLabels: TList<string>;
begin
  Result := FLabels;
end;

procedure TConnectedHomeSettings.SetLabels(const Value: TList<string>);
begin
  if FLabels <> Value then
  begin
    if not KeepLabels then
      FLabels.Free;
    FLabels := Value;
  end;
end;

function TConnectedHomeSettings.GetKeepLabels: Boolean;
begin
  Result := FKeepLabels;
end;

procedure TConnectedHomeSettings.SetKeepLabels(const Value: Boolean);
begin
  FKeepLabels := Value;
end;

function TConnectedHomeSettings.IsSetLabels: Boolean;
begin
  Result := (FLabels <> nil) and (FLabels.Count > 0);
end;

function TConnectedHomeSettings.GetMinConfidence: Double;
begin
  Result := FMinConfidence.ValueOrDefault;
end;

procedure TConnectedHomeSettings.SetMinConfidence(const Value: Double);
begin
  FMinConfidence := Value;
end;

function TConnectedHomeSettings.IsSetMinConfidence: Boolean;
begin
  Result := FMinConfidence.HasValue;
end;

end.
