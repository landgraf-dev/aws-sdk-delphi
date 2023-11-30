unit AWS.Rekognition.Model.CompareFacesMatch;

interface

uses
  AWS.Rekognition.Model.ComparedFace, 
  AWS.Nullable;

type
  TCompareFacesMatch = class;
  
  ICompareFacesMatch = interface
    function GetFace: TComparedFace;
    procedure SetFace(const Value: TComparedFace);
    function GetKeepFace: Boolean;
    procedure SetKeepFace(const Value: Boolean);
    function GetSimilarity: Double;
    procedure SetSimilarity(const Value: Double);
    function Obj: TCompareFacesMatch;
    function IsSetFace: Boolean;
    function IsSetSimilarity: Boolean;
    property Face: TComparedFace read GetFace write SetFace;
    property KeepFace: Boolean read GetKeepFace write SetKeepFace;
    property Similarity: Double read GetSimilarity write SetSimilarity;
  end;
  
  TCompareFacesMatch = class
  strict private
    FFace: TComparedFace;
    FKeepFace: Boolean;
    FSimilarity: Nullable<Double>;
    function GetFace: TComparedFace;
    procedure SetFace(const Value: TComparedFace);
    function GetKeepFace: Boolean;
    procedure SetKeepFace(const Value: Boolean);
    function GetSimilarity: Double;
    procedure SetSimilarity(const Value: Double);
  strict protected
    function Obj: TCompareFacesMatch;
  public
    destructor Destroy; override;
    function IsSetFace: Boolean;
    function IsSetSimilarity: Boolean;
    property Face: TComparedFace read GetFace write SetFace;
    property KeepFace: Boolean read GetKeepFace write SetKeepFace;
    property Similarity: Double read GetSimilarity write SetSimilarity;
  end;
  
implementation

{ TCompareFacesMatch }

destructor TCompareFacesMatch.Destroy;
begin
  Face := nil;
  inherited;
end;

function TCompareFacesMatch.Obj: TCompareFacesMatch;
begin
  Result := Self;
end;

function TCompareFacesMatch.GetFace: TComparedFace;
begin
  Result := FFace;
end;

procedure TCompareFacesMatch.SetFace(const Value: TComparedFace);
begin
  if FFace <> Value then
  begin
    if not KeepFace then
      FFace.Free;
    FFace := Value;
  end;
end;

function TCompareFacesMatch.GetKeepFace: Boolean;
begin
  Result := FKeepFace;
end;

procedure TCompareFacesMatch.SetKeepFace(const Value: Boolean);
begin
  FKeepFace := Value;
end;

function TCompareFacesMatch.IsSetFace: Boolean;
begin
  Result := FFace <> nil;
end;

function TCompareFacesMatch.GetSimilarity: Double;
begin
  Result := FSimilarity.ValueOrDefault;
end;

procedure TCompareFacesMatch.SetSimilarity(const Value: Double);
begin
  FSimilarity := Value;
end;

function TCompareFacesMatch.IsSetSimilarity: Boolean;
begin
  Result := FSimilarity.HasValue;
end;

end.
