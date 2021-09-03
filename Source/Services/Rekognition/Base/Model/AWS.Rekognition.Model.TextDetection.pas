unit AWS.Rekognition.Model.TextDetection;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Geometry, 
  AWS.Rekognition.Enums;

type
  TTextDetection = class;
  
  ITextDetection = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetDetectedText: string;
    procedure SetDetectedText(const Value: string);
    function GetGeometry: TGeometry;
    procedure SetGeometry(const Value: TGeometry);
    function GetKeepGeometry: Boolean;
    procedure SetKeepGeometry(const Value: Boolean);
    function GetId: Integer;
    procedure SetId(const Value: Integer);
    function GetParentId: Integer;
    procedure SetParentId(const Value: Integer);
    function GetType: TTextTypes;
    procedure SetType(const Value: TTextTypes);
    function Obj: TTextDetection;
    function IsSetConfidence: Boolean;
    function IsSetDetectedText: Boolean;
    function IsSetGeometry: Boolean;
    function IsSetId: Boolean;
    function IsSetParentId: Boolean;
    function IsSetType: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property DetectedText: string read GetDetectedText write SetDetectedText;
    property Geometry: TGeometry read GetGeometry write SetGeometry;
    property KeepGeometry: Boolean read GetKeepGeometry write SetKeepGeometry;
    property Id: Integer read GetId write SetId;
    property ParentId: Integer read GetParentId write SetParentId;
    property &Type: TTextTypes read GetType write SetType;
  end;
  
  TTextDetection = class
  strict private
    FConfidence: Nullable<Double>;
    FDetectedText: Nullable<string>;
    FGeometry: TGeometry;
    FKeepGeometry: Boolean;
    FId: Nullable<Integer>;
    FParentId: Nullable<Integer>;
    FType: Nullable<TTextTypes>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetDetectedText: string;
    procedure SetDetectedText(const Value: string);
    function GetGeometry: TGeometry;
    procedure SetGeometry(const Value: TGeometry);
    function GetKeepGeometry: Boolean;
    procedure SetKeepGeometry(const Value: Boolean);
    function GetId: Integer;
    procedure SetId(const Value: Integer);
    function GetParentId: Integer;
    procedure SetParentId(const Value: Integer);
    function GetType: TTextTypes;
    procedure SetType(const Value: TTextTypes);
  strict protected
    function Obj: TTextDetection;
  public
    destructor Destroy; override;
    function IsSetConfidence: Boolean;
    function IsSetDetectedText: Boolean;
    function IsSetGeometry: Boolean;
    function IsSetId: Boolean;
    function IsSetParentId: Boolean;
    function IsSetType: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property DetectedText: string read GetDetectedText write SetDetectedText;
    property Geometry: TGeometry read GetGeometry write SetGeometry;
    property KeepGeometry: Boolean read GetKeepGeometry write SetKeepGeometry;
    property Id: Integer read GetId write SetId;
    property ParentId: Integer read GetParentId write SetParentId;
    property &Type: TTextTypes read GetType write SetType;
  end;
  
implementation

{ TTextDetection }

destructor TTextDetection.Destroy;
begin
  Geometry := nil;
  inherited;
end;

function TTextDetection.Obj: TTextDetection;
begin
  Result := Self;
end;

function TTextDetection.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TTextDetection.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TTextDetection.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TTextDetection.GetDetectedText: string;
begin
  Result := FDetectedText.ValueOrDefault;
end;

procedure TTextDetection.SetDetectedText(const Value: string);
begin
  FDetectedText := Value;
end;

function TTextDetection.IsSetDetectedText: Boolean;
begin
  Result := FDetectedText.HasValue;
end;

function TTextDetection.GetGeometry: TGeometry;
begin
  Result := FGeometry;
end;

procedure TTextDetection.SetGeometry(const Value: TGeometry);
begin
  if FGeometry <> Value then
  begin
    if not KeepGeometry then
      FGeometry.Free;
    FGeometry := Value;
  end;
end;

function TTextDetection.GetKeepGeometry: Boolean;
begin
  Result := FKeepGeometry;
end;

procedure TTextDetection.SetKeepGeometry(const Value: Boolean);
begin
  FKeepGeometry := Value;
end;

function TTextDetection.IsSetGeometry: Boolean;
begin
  Result := FGeometry <> nil;
end;

function TTextDetection.GetId: Integer;
begin
  Result := FId.ValueOrDefault;
end;

procedure TTextDetection.SetId(const Value: Integer);
begin
  FId := Value;
end;

function TTextDetection.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TTextDetection.GetParentId: Integer;
begin
  Result := FParentId.ValueOrDefault;
end;

procedure TTextDetection.SetParentId(const Value: Integer);
begin
  FParentId := Value;
end;

function TTextDetection.IsSetParentId: Boolean;
begin
  Result := FParentId.HasValue;
end;

function TTextDetection.GetType: TTextTypes;
begin
  Result := FType.ValueOrDefault;
end;

procedure TTextDetection.SetType(const Value: TTextTypes);
begin
  FType := Value;
end;

function TTextDetection.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.
