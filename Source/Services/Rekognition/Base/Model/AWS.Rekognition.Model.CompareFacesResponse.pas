unit AWS.Rekognition.Model.CompareFacesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.CompareFacesMatch, 
  AWS.Rekognition.Model.ComparedSourceImageFace, 
  AWS.Nullable, 
  AWS.Rekognition.Enums, 
  AWS.Rekognition.Model.ComparedFace;

type
  TCompareFacesResponse = class;
  
  ICompareFacesResponse = interface(IAmazonWebServiceResponse)
    function GetFaceMatches: TObjectList<TCompareFacesMatch>;
    procedure SetFaceMatches(const Value: TObjectList<TCompareFacesMatch>);
    function GetKeepFaceMatches: Boolean;
    procedure SetKeepFaceMatches(const Value: Boolean);
    function GetSourceImageFace: TComparedSourceImageFace;
    procedure SetSourceImageFace(const Value: TComparedSourceImageFace);
    function GetKeepSourceImageFace: Boolean;
    procedure SetKeepSourceImageFace(const Value: Boolean);
    function GetSourceImageOrientationCorrection: TOrientationCorrection;
    procedure SetSourceImageOrientationCorrection(const Value: TOrientationCorrection);
    function GetTargetImageOrientationCorrection: TOrientationCorrection;
    procedure SetTargetImageOrientationCorrection(const Value: TOrientationCorrection);
    function GetUnmatchedFaces: TObjectList<TComparedFace>;
    procedure SetUnmatchedFaces(const Value: TObjectList<TComparedFace>);
    function GetKeepUnmatchedFaces: Boolean;
    procedure SetKeepUnmatchedFaces(const Value: Boolean);
    function Obj: TCompareFacesResponse;
    function IsSetFaceMatches: Boolean;
    function IsSetSourceImageFace: Boolean;
    function IsSetSourceImageOrientationCorrection: Boolean;
    function IsSetTargetImageOrientationCorrection: Boolean;
    function IsSetUnmatchedFaces: Boolean;
    property FaceMatches: TObjectList<TCompareFacesMatch> read GetFaceMatches write SetFaceMatches;
    property KeepFaceMatches: Boolean read GetKeepFaceMatches write SetKeepFaceMatches;
    property SourceImageFace: TComparedSourceImageFace read GetSourceImageFace write SetSourceImageFace;
    property KeepSourceImageFace: Boolean read GetKeepSourceImageFace write SetKeepSourceImageFace;
    property SourceImageOrientationCorrection: TOrientationCorrection read GetSourceImageOrientationCorrection write SetSourceImageOrientationCorrection;
    property TargetImageOrientationCorrection: TOrientationCorrection read GetTargetImageOrientationCorrection write SetTargetImageOrientationCorrection;
    property UnmatchedFaces: TObjectList<TComparedFace> read GetUnmatchedFaces write SetUnmatchedFaces;
    property KeepUnmatchedFaces: Boolean read GetKeepUnmatchedFaces write SetKeepUnmatchedFaces;
  end;
  
  TCompareFacesResponse = class(TAmazonWebServiceResponse, ICompareFacesResponse)
  strict private
    FFaceMatches: TObjectList<TCompareFacesMatch>;
    FKeepFaceMatches: Boolean;
    FSourceImageFace: TComparedSourceImageFace;
    FKeepSourceImageFace: Boolean;
    FSourceImageOrientationCorrection: Nullable<TOrientationCorrection>;
    FTargetImageOrientationCorrection: Nullable<TOrientationCorrection>;
    FUnmatchedFaces: TObjectList<TComparedFace>;
    FKeepUnmatchedFaces: Boolean;
    function GetFaceMatches: TObjectList<TCompareFacesMatch>;
    procedure SetFaceMatches(const Value: TObjectList<TCompareFacesMatch>);
    function GetKeepFaceMatches: Boolean;
    procedure SetKeepFaceMatches(const Value: Boolean);
    function GetSourceImageFace: TComparedSourceImageFace;
    procedure SetSourceImageFace(const Value: TComparedSourceImageFace);
    function GetKeepSourceImageFace: Boolean;
    procedure SetKeepSourceImageFace(const Value: Boolean);
    function GetSourceImageOrientationCorrection: TOrientationCorrection;
    procedure SetSourceImageOrientationCorrection(const Value: TOrientationCorrection);
    function GetTargetImageOrientationCorrection: TOrientationCorrection;
    procedure SetTargetImageOrientationCorrection(const Value: TOrientationCorrection);
    function GetUnmatchedFaces: TObjectList<TComparedFace>;
    procedure SetUnmatchedFaces(const Value: TObjectList<TComparedFace>);
    function GetKeepUnmatchedFaces: Boolean;
    procedure SetKeepUnmatchedFaces(const Value: Boolean);
  strict protected
    function Obj: TCompareFacesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFaceMatches: Boolean;
    function IsSetSourceImageFace: Boolean;
    function IsSetSourceImageOrientationCorrection: Boolean;
    function IsSetTargetImageOrientationCorrection: Boolean;
    function IsSetUnmatchedFaces: Boolean;
    property FaceMatches: TObjectList<TCompareFacesMatch> read GetFaceMatches write SetFaceMatches;
    property KeepFaceMatches: Boolean read GetKeepFaceMatches write SetKeepFaceMatches;
    property SourceImageFace: TComparedSourceImageFace read GetSourceImageFace write SetSourceImageFace;
    property KeepSourceImageFace: Boolean read GetKeepSourceImageFace write SetKeepSourceImageFace;
    property SourceImageOrientationCorrection: TOrientationCorrection read GetSourceImageOrientationCorrection write SetSourceImageOrientationCorrection;
    property TargetImageOrientationCorrection: TOrientationCorrection read GetTargetImageOrientationCorrection write SetTargetImageOrientationCorrection;
    property UnmatchedFaces: TObjectList<TComparedFace> read GetUnmatchedFaces write SetUnmatchedFaces;
    property KeepUnmatchedFaces: Boolean read GetKeepUnmatchedFaces write SetKeepUnmatchedFaces;
  end;
  
implementation

{ TCompareFacesResponse }

constructor TCompareFacesResponse.Create;
begin
  inherited;
  FFaceMatches := TObjectList<TCompareFacesMatch>.Create;
  FUnmatchedFaces := TObjectList<TComparedFace>.Create;
end;

destructor TCompareFacesResponse.Destroy;
begin
  UnmatchedFaces := nil;
  SourceImageFace := nil;
  FaceMatches := nil;
  inherited;
end;

function TCompareFacesResponse.Obj: TCompareFacesResponse;
begin
  Result := Self;
end;

function TCompareFacesResponse.GetFaceMatches: TObjectList<TCompareFacesMatch>;
begin
  Result := FFaceMatches;
end;

procedure TCompareFacesResponse.SetFaceMatches(const Value: TObjectList<TCompareFacesMatch>);
begin
  if FFaceMatches <> Value then
  begin
    if not KeepFaceMatches then
      FFaceMatches.Free;
    FFaceMatches := Value;
  end;
end;

function TCompareFacesResponse.GetKeepFaceMatches: Boolean;
begin
  Result := FKeepFaceMatches;
end;

procedure TCompareFacesResponse.SetKeepFaceMatches(const Value: Boolean);
begin
  FKeepFaceMatches := Value;
end;

function TCompareFacesResponse.IsSetFaceMatches: Boolean;
begin
  Result := (FFaceMatches <> nil) and (FFaceMatches.Count > 0);
end;

function TCompareFacesResponse.GetSourceImageFace: TComparedSourceImageFace;
begin
  Result := FSourceImageFace;
end;

procedure TCompareFacesResponse.SetSourceImageFace(const Value: TComparedSourceImageFace);
begin
  if FSourceImageFace <> Value then
  begin
    if not KeepSourceImageFace then
      FSourceImageFace.Free;
    FSourceImageFace := Value;
  end;
end;

function TCompareFacesResponse.GetKeepSourceImageFace: Boolean;
begin
  Result := FKeepSourceImageFace;
end;

procedure TCompareFacesResponse.SetKeepSourceImageFace(const Value: Boolean);
begin
  FKeepSourceImageFace := Value;
end;

function TCompareFacesResponse.IsSetSourceImageFace: Boolean;
begin
  Result := FSourceImageFace <> nil;
end;

function TCompareFacesResponse.GetSourceImageOrientationCorrection: TOrientationCorrection;
begin
  Result := FSourceImageOrientationCorrection.ValueOrDefault;
end;

procedure TCompareFacesResponse.SetSourceImageOrientationCorrection(const Value: TOrientationCorrection);
begin
  FSourceImageOrientationCorrection := Value;
end;

function TCompareFacesResponse.IsSetSourceImageOrientationCorrection: Boolean;
begin
  Result := FSourceImageOrientationCorrection.HasValue;
end;

function TCompareFacesResponse.GetTargetImageOrientationCorrection: TOrientationCorrection;
begin
  Result := FTargetImageOrientationCorrection.ValueOrDefault;
end;

procedure TCompareFacesResponse.SetTargetImageOrientationCorrection(const Value: TOrientationCorrection);
begin
  FTargetImageOrientationCorrection := Value;
end;

function TCompareFacesResponse.IsSetTargetImageOrientationCorrection: Boolean;
begin
  Result := FTargetImageOrientationCorrection.HasValue;
end;

function TCompareFacesResponse.GetUnmatchedFaces: TObjectList<TComparedFace>;
begin
  Result := FUnmatchedFaces;
end;

procedure TCompareFacesResponse.SetUnmatchedFaces(const Value: TObjectList<TComparedFace>);
begin
  if FUnmatchedFaces <> Value then
  begin
    if not KeepUnmatchedFaces then
      FUnmatchedFaces.Free;
    FUnmatchedFaces := Value;
  end;
end;

function TCompareFacesResponse.GetKeepUnmatchedFaces: Boolean;
begin
  Result := FKeepUnmatchedFaces;
end;

procedure TCompareFacesResponse.SetKeepUnmatchedFaces(const Value: Boolean);
begin
  FKeepUnmatchedFaces := Value;
end;

function TCompareFacesResponse.IsSetUnmatchedFaces: Boolean;
begin
  Result := (FUnmatchedFaces <> nil) and (FUnmatchedFaces.Count > 0);
end;

end.
