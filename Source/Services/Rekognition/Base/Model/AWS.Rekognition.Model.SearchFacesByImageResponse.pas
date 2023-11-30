unit AWS.Rekognition.Model.SearchFacesByImageResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.FaceMatch, 
  AWS.Nullable, 
  AWS.Rekognition.Model.BoundingBox;

type
  TSearchFacesByImageResponse = class;
  
  ISearchFacesByImageResponse = interface(IAmazonWebServiceResponse)
    function GetFaceMatches: TObjectList<TFaceMatch>;
    procedure SetFaceMatches(const Value: TObjectList<TFaceMatch>);
    function GetKeepFaceMatches: Boolean;
    procedure SetKeepFaceMatches(const Value: Boolean);
    function GetFaceModelVersion: string;
    procedure SetFaceModelVersion(const Value: string);
    function GetSearchedFaceBoundingBox: TBoundingBox;
    procedure SetSearchedFaceBoundingBox(const Value: TBoundingBox);
    function GetKeepSearchedFaceBoundingBox: Boolean;
    procedure SetKeepSearchedFaceBoundingBox(const Value: Boolean);
    function GetSearchedFaceConfidence: Double;
    procedure SetSearchedFaceConfidence(const Value: Double);
    function Obj: TSearchFacesByImageResponse;
    function IsSetFaceMatches: Boolean;
    function IsSetFaceModelVersion: Boolean;
    function IsSetSearchedFaceBoundingBox: Boolean;
    function IsSetSearchedFaceConfidence: Boolean;
    property FaceMatches: TObjectList<TFaceMatch> read GetFaceMatches write SetFaceMatches;
    property KeepFaceMatches: Boolean read GetKeepFaceMatches write SetKeepFaceMatches;
    property FaceModelVersion: string read GetFaceModelVersion write SetFaceModelVersion;
    property SearchedFaceBoundingBox: TBoundingBox read GetSearchedFaceBoundingBox write SetSearchedFaceBoundingBox;
    property KeepSearchedFaceBoundingBox: Boolean read GetKeepSearchedFaceBoundingBox write SetKeepSearchedFaceBoundingBox;
    property SearchedFaceConfidence: Double read GetSearchedFaceConfidence write SetSearchedFaceConfidence;
  end;
  
  TSearchFacesByImageResponse = class(TAmazonWebServiceResponse, ISearchFacesByImageResponse)
  strict private
    FFaceMatches: TObjectList<TFaceMatch>;
    FKeepFaceMatches: Boolean;
    FFaceModelVersion: Nullable<string>;
    FSearchedFaceBoundingBox: TBoundingBox;
    FKeepSearchedFaceBoundingBox: Boolean;
    FSearchedFaceConfidence: Nullable<Double>;
    function GetFaceMatches: TObjectList<TFaceMatch>;
    procedure SetFaceMatches(const Value: TObjectList<TFaceMatch>);
    function GetKeepFaceMatches: Boolean;
    procedure SetKeepFaceMatches(const Value: Boolean);
    function GetFaceModelVersion: string;
    procedure SetFaceModelVersion(const Value: string);
    function GetSearchedFaceBoundingBox: TBoundingBox;
    procedure SetSearchedFaceBoundingBox(const Value: TBoundingBox);
    function GetKeepSearchedFaceBoundingBox: Boolean;
    procedure SetKeepSearchedFaceBoundingBox(const Value: Boolean);
    function GetSearchedFaceConfidence: Double;
    procedure SetSearchedFaceConfidence(const Value: Double);
  strict protected
    function Obj: TSearchFacesByImageResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFaceMatches: Boolean;
    function IsSetFaceModelVersion: Boolean;
    function IsSetSearchedFaceBoundingBox: Boolean;
    function IsSetSearchedFaceConfidence: Boolean;
    property FaceMatches: TObjectList<TFaceMatch> read GetFaceMatches write SetFaceMatches;
    property KeepFaceMatches: Boolean read GetKeepFaceMatches write SetKeepFaceMatches;
    property FaceModelVersion: string read GetFaceModelVersion write SetFaceModelVersion;
    property SearchedFaceBoundingBox: TBoundingBox read GetSearchedFaceBoundingBox write SetSearchedFaceBoundingBox;
    property KeepSearchedFaceBoundingBox: Boolean read GetKeepSearchedFaceBoundingBox write SetKeepSearchedFaceBoundingBox;
    property SearchedFaceConfidence: Double read GetSearchedFaceConfidence write SetSearchedFaceConfidence;
  end;
  
implementation

{ TSearchFacesByImageResponse }

constructor TSearchFacesByImageResponse.Create;
begin
  inherited;
  FFaceMatches := TObjectList<TFaceMatch>.Create;
end;

destructor TSearchFacesByImageResponse.Destroy;
begin
  SearchedFaceBoundingBox := nil;
  FaceMatches := nil;
  inherited;
end;

function TSearchFacesByImageResponse.Obj: TSearchFacesByImageResponse;
begin
  Result := Self;
end;

function TSearchFacesByImageResponse.GetFaceMatches: TObjectList<TFaceMatch>;
begin
  Result := FFaceMatches;
end;

procedure TSearchFacesByImageResponse.SetFaceMatches(const Value: TObjectList<TFaceMatch>);
begin
  if FFaceMatches <> Value then
  begin
    if not KeepFaceMatches then
      FFaceMatches.Free;
    FFaceMatches := Value;
  end;
end;

function TSearchFacesByImageResponse.GetKeepFaceMatches: Boolean;
begin
  Result := FKeepFaceMatches;
end;

procedure TSearchFacesByImageResponse.SetKeepFaceMatches(const Value: Boolean);
begin
  FKeepFaceMatches := Value;
end;

function TSearchFacesByImageResponse.IsSetFaceMatches: Boolean;
begin
  Result := (FFaceMatches <> nil) and (FFaceMatches.Count > 0);
end;

function TSearchFacesByImageResponse.GetFaceModelVersion: string;
begin
  Result := FFaceModelVersion.ValueOrDefault;
end;

procedure TSearchFacesByImageResponse.SetFaceModelVersion(const Value: string);
begin
  FFaceModelVersion := Value;
end;

function TSearchFacesByImageResponse.IsSetFaceModelVersion: Boolean;
begin
  Result := FFaceModelVersion.HasValue;
end;

function TSearchFacesByImageResponse.GetSearchedFaceBoundingBox: TBoundingBox;
begin
  Result := FSearchedFaceBoundingBox;
end;

procedure TSearchFacesByImageResponse.SetSearchedFaceBoundingBox(const Value: TBoundingBox);
begin
  if FSearchedFaceBoundingBox <> Value then
  begin
    if not KeepSearchedFaceBoundingBox then
      FSearchedFaceBoundingBox.Free;
    FSearchedFaceBoundingBox := Value;
  end;
end;

function TSearchFacesByImageResponse.GetKeepSearchedFaceBoundingBox: Boolean;
begin
  Result := FKeepSearchedFaceBoundingBox;
end;

procedure TSearchFacesByImageResponse.SetKeepSearchedFaceBoundingBox(const Value: Boolean);
begin
  FKeepSearchedFaceBoundingBox := Value;
end;

function TSearchFacesByImageResponse.IsSetSearchedFaceBoundingBox: Boolean;
begin
  Result := FSearchedFaceBoundingBox <> nil;
end;

function TSearchFacesByImageResponse.GetSearchedFaceConfidence: Double;
begin
  Result := FSearchedFaceConfidence.ValueOrDefault;
end;

procedure TSearchFacesByImageResponse.SetSearchedFaceConfidence(const Value: Double);
begin
  FSearchedFaceConfidence := Value;
end;

function TSearchFacesByImageResponse.IsSetSearchedFaceConfidence: Boolean;
begin
  Result := FSearchedFaceConfidence.HasValue;
end;

end.
