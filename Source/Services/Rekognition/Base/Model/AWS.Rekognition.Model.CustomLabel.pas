unit AWS.Rekognition.Model.CustomLabel;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Geometry;

type
  TCustomLabel = class;
  
  ICustomLabel = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetGeometry: TGeometry;
    procedure SetGeometry(const Value: TGeometry);
    function GetKeepGeometry: Boolean;
    procedure SetKeepGeometry(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TCustomLabel;
    function IsSetConfidence: Boolean;
    function IsSetGeometry: Boolean;
    function IsSetName: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Geometry: TGeometry read GetGeometry write SetGeometry;
    property KeepGeometry: Boolean read GetKeepGeometry write SetKeepGeometry;
    property Name: string read GetName write SetName;
  end;
  
  TCustomLabel = class
  strict private
    FConfidence: Nullable<Double>;
    FGeometry: TGeometry;
    FKeepGeometry: Boolean;
    FName: Nullable<string>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetGeometry: TGeometry;
    procedure SetGeometry(const Value: TGeometry);
    function GetKeepGeometry: Boolean;
    procedure SetKeepGeometry(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TCustomLabel;
  public
    destructor Destroy; override;
    function IsSetConfidence: Boolean;
    function IsSetGeometry: Boolean;
    function IsSetName: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Geometry: TGeometry read GetGeometry write SetGeometry;
    property KeepGeometry: Boolean read GetKeepGeometry write SetKeepGeometry;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TCustomLabel }

destructor TCustomLabel.Destroy;
begin
  Geometry := nil;
  inherited;
end;

function TCustomLabel.Obj: TCustomLabel;
begin
  Result := Self;
end;

function TCustomLabel.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TCustomLabel.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TCustomLabel.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TCustomLabel.GetGeometry: TGeometry;
begin
  Result := FGeometry;
end;

procedure TCustomLabel.SetGeometry(const Value: TGeometry);
begin
  if FGeometry <> Value then
  begin
    if not KeepGeometry then
      FGeometry.Free;
    FGeometry := Value;
  end;
end;

function TCustomLabel.GetKeepGeometry: Boolean;
begin
  Result := FKeepGeometry;
end;

procedure TCustomLabel.SetKeepGeometry(const Value: Boolean);
begin
  FKeepGeometry := Value;
end;

function TCustomLabel.IsSetGeometry: Boolean;
begin
  Result := FGeometry <> nil;
end;

function TCustomLabel.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TCustomLabel.SetName(const Value: string);
begin
  FName := Value;
end;

function TCustomLabel.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
