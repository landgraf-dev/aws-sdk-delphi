unit AWS.Rekognition.Model.FaceMatch;

interface

uses
  AWS.Rekognition.Model.Face, 
  AWS.Nullable;

type
  TFaceMatch = class;
  
  IFaceMatch = interface
    function GetFace: TFace;
    procedure SetFace(const Value: TFace);
    function GetKeepFace: Boolean;
    procedure SetKeepFace(const Value: Boolean);
    function GetSimilarity: Double;
    procedure SetSimilarity(const Value: Double);
    function Obj: TFaceMatch;
    function IsSetFace: Boolean;
    function IsSetSimilarity: Boolean;
    property Face: TFace read GetFace write SetFace;
    property KeepFace: Boolean read GetKeepFace write SetKeepFace;
    property Similarity: Double read GetSimilarity write SetSimilarity;
  end;
  
  TFaceMatch = class
  strict private
    FFace: TFace;
    FKeepFace: Boolean;
    FSimilarity: Nullable<Double>;
    function GetFace: TFace;
    procedure SetFace(const Value: TFace);
    function GetKeepFace: Boolean;
    procedure SetKeepFace(const Value: Boolean);
    function GetSimilarity: Double;
    procedure SetSimilarity(const Value: Double);
  strict protected
    function Obj: TFaceMatch;
  public
    destructor Destroy; override;
    function IsSetFace: Boolean;
    function IsSetSimilarity: Boolean;
    property Face: TFace read GetFace write SetFace;
    property KeepFace: Boolean read GetKeepFace write SetKeepFace;
    property Similarity: Double read GetSimilarity write SetSimilarity;
  end;
  
implementation

{ TFaceMatch }

destructor TFaceMatch.Destroy;
begin
  Face := nil;
  inherited;
end;

function TFaceMatch.Obj: TFaceMatch;
begin
  Result := Self;
end;

function TFaceMatch.GetFace: TFace;
begin
  Result := FFace;
end;

procedure TFaceMatch.SetFace(const Value: TFace);
begin
  if FFace <> Value then
  begin
    if not KeepFace then
      FFace.Free;
    FFace := Value;
  end;
end;

function TFaceMatch.GetKeepFace: Boolean;
begin
  Result := FKeepFace;
end;

procedure TFaceMatch.SetKeepFace(const Value: Boolean);
begin
  FKeepFace := Value;
end;

function TFaceMatch.IsSetFace: Boolean;
begin
  Result := FFace <> nil;
end;

function TFaceMatch.GetSimilarity: Double;
begin
  Result := FSimilarity.ValueOrDefault;
end;

procedure TFaceMatch.SetSimilarity(const Value: Double);
begin
  FSimilarity := Value;
end;

function TFaceMatch.IsSetSimilarity: Boolean;
begin
  Result := FSimilarity.HasValue;
end;

end.
