unit AWS.Rekognition.Model.IndexFacesResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.FaceRecord, 
  AWS.Rekognition.Enums, 
  AWS.Rekognition.Model.UnindexedFace;

type
  TIndexFacesResponse = class;
  
  IIndexFacesResponse = interface(IAmazonWebServiceResponse)
    function GetFaceModelVersion: string;
    procedure SetFaceModelVersion(const Value: string);
    function GetFaceRecords: TObjectList<TFaceRecord>;
    procedure SetFaceRecords(const Value: TObjectList<TFaceRecord>);
    function GetKeepFaceRecords: Boolean;
    procedure SetKeepFaceRecords(const Value: Boolean);
    function GetOrientationCorrection: TOrientationCorrection;
    procedure SetOrientationCorrection(const Value: TOrientationCorrection);
    function GetUnindexedFaces: TObjectList<TUnindexedFace>;
    procedure SetUnindexedFaces(const Value: TObjectList<TUnindexedFace>);
    function GetKeepUnindexedFaces: Boolean;
    procedure SetKeepUnindexedFaces(const Value: Boolean);
    function Obj: TIndexFacesResponse;
    function IsSetFaceModelVersion: Boolean;
    function IsSetFaceRecords: Boolean;
    function IsSetOrientationCorrection: Boolean;
    function IsSetUnindexedFaces: Boolean;
    property FaceModelVersion: string read GetFaceModelVersion write SetFaceModelVersion;
    property FaceRecords: TObjectList<TFaceRecord> read GetFaceRecords write SetFaceRecords;
    property KeepFaceRecords: Boolean read GetKeepFaceRecords write SetKeepFaceRecords;
    property OrientationCorrection: TOrientationCorrection read GetOrientationCorrection write SetOrientationCorrection;
    property UnindexedFaces: TObjectList<TUnindexedFace> read GetUnindexedFaces write SetUnindexedFaces;
    property KeepUnindexedFaces: Boolean read GetKeepUnindexedFaces write SetKeepUnindexedFaces;
  end;
  
  TIndexFacesResponse = class(TAmazonWebServiceResponse, IIndexFacesResponse)
  strict private
    FFaceModelVersion: Nullable<string>;
    FFaceRecords: TObjectList<TFaceRecord>;
    FKeepFaceRecords: Boolean;
    FOrientationCorrection: Nullable<TOrientationCorrection>;
    FUnindexedFaces: TObjectList<TUnindexedFace>;
    FKeepUnindexedFaces: Boolean;
    function GetFaceModelVersion: string;
    procedure SetFaceModelVersion(const Value: string);
    function GetFaceRecords: TObjectList<TFaceRecord>;
    procedure SetFaceRecords(const Value: TObjectList<TFaceRecord>);
    function GetKeepFaceRecords: Boolean;
    procedure SetKeepFaceRecords(const Value: Boolean);
    function GetOrientationCorrection: TOrientationCorrection;
    procedure SetOrientationCorrection(const Value: TOrientationCorrection);
    function GetUnindexedFaces: TObjectList<TUnindexedFace>;
    procedure SetUnindexedFaces(const Value: TObjectList<TUnindexedFace>);
    function GetKeepUnindexedFaces: Boolean;
    procedure SetKeepUnindexedFaces(const Value: Boolean);
  strict protected
    function Obj: TIndexFacesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFaceModelVersion: Boolean;
    function IsSetFaceRecords: Boolean;
    function IsSetOrientationCorrection: Boolean;
    function IsSetUnindexedFaces: Boolean;
    property FaceModelVersion: string read GetFaceModelVersion write SetFaceModelVersion;
    property FaceRecords: TObjectList<TFaceRecord> read GetFaceRecords write SetFaceRecords;
    property KeepFaceRecords: Boolean read GetKeepFaceRecords write SetKeepFaceRecords;
    property OrientationCorrection: TOrientationCorrection read GetOrientationCorrection write SetOrientationCorrection;
    property UnindexedFaces: TObjectList<TUnindexedFace> read GetUnindexedFaces write SetUnindexedFaces;
    property KeepUnindexedFaces: Boolean read GetKeepUnindexedFaces write SetKeepUnindexedFaces;
  end;
  
implementation

{ TIndexFacesResponse }

constructor TIndexFacesResponse.Create;
begin
  inherited;
  FFaceRecords := TObjectList<TFaceRecord>.Create;
  FUnindexedFaces := TObjectList<TUnindexedFace>.Create;
end;

destructor TIndexFacesResponse.Destroy;
begin
  UnindexedFaces := nil;
  FaceRecords := nil;
  inherited;
end;

function TIndexFacesResponse.Obj: TIndexFacesResponse;
begin
  Result := Self;
end;

function TIndexFacesResponse.GetFaceModelVersion: string;
begin
  Result := FFaceModelVersion.ValueOrDefault;
end;

procedure TIndexFacesResponse.SetFaceModelVersion(const Value: string);
begin
  FFaceModelVersion := Value;
end;

function TIndexFacesResponse.IsSetFaceModelVersion: Boolean;
begin
  Result := FFaceModelVersion.HasValue;
end;

function TIndexFacesResponse.GetFaceRecords: TObjectList<TFaceRecord>;
begin
  Result := FFaceRecords;
end;

procedure TIndexFacesResponse.SetFaceRecords(const Value: TObjectList<TFaceRecord>);
begin
  if FFaceRecords <> Value then
  begin
    if not KeepFaceRecords then
      FFaceRecords.Free;
    FFaceRecords := Value;
  end;
end;

function TIndexFacesResponse.GetKeepFaceRecords: Boolean;
begin
  Result := FKeepFaceRecords;
end;

procedure TIndexFacesResponse.SetKeepFaceRecords(const Value: Boolean);
begin
  FKeepFaceRecords := Value;
end;

function TIndexFacesResponse.IsSetFaceRecords: Boolean;
begin
  Result := (FFaceRecords <> nil) and (FFaceRecords.Count > 0);
end;

function TIndexFacesResponse.GetOrientationCorrection: TOrientationCorrection;
begin
  Result := FOrientationCorrection.ValueOrDefault;
end;

procedure TIndexFacesResponse.SetOrientationCorrection(const Value: TOrientationCorrection);
begin
  FOrientationCorrection := Value;
end;

function TIndexFacesResponse.IsSetOrientationCorrection: Boolean;
begin
  Result := FOrientationCorrection.HasValue;
end;

function TIndexFacesResponse.GetUnindexedFaces: TObjectList<TUnindexedFace>;
begin
  Result := FUnindexedFaces;
end;

procedure TIndexFacesResponse.SetUnindexedFaces(const Value: TObjectList<TUnindexedFace>);
begin
  if FUnindexedFaces <> Value then
  begin
    if not KeepUnindexedFaces then
      FUnindexedFaces.Free;
    FUnindexedFaces := Value;
  end;
end;

function TIndexFacesResponse.GetKeepUnindexedFaces: Boolean;
begin
  Result := FKeepUnindexedFaces;
end;

procedure TIndexFacesResponse.SetKeepUnindexedFaces(const Value: Boolean);
begin
  FKeepUnindexedFaces := Value;
end;

function TIndexFacesResponse.IsSetUnindexedFaces: Boolean;
begin
  Result := (FUnindexedFaces <> nil) and (FUnindexedFaces.Count > 0);
end;

end.
