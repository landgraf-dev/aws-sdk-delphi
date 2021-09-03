unit AWS.Rekognition.Model.SearchFacesResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.FaceMatch;

type
  TSearchFacesResponse = class;
  
  ISearchFacesResponse = interface(IAmazonWebServiceResponse)
    function GetFaceMatches: TObjectList<TFaceMatch>;
    procedure SetFaceMatches(const Value: TObjectList<TFaceMatch>);
    function GetKeepFaceMatches: Boolean;
    procedure SetKeepFaceMatches(const Value: Boolean);
    function GetFaceModelVersion: string;
    procedure SetFaceModelVersion(const Value: string);
    function GetSearchedFaceId: string;
    procedure SetSearchedFaceId(const Value: string);
    function Obj: TSearchFacesResponse;
    function IsSetFaceMatches: Boolean;
    function IsSetFaceModelVersion: Boolean;
    function IsSetSearchedFaceId: Boolean;
    property FaceMatches: TObjectList<TFaceMatch> read GetFaceMatches write SetFaceMatches;
    property KeepFaceMatches: Boolean read GetKeepFaceMatches write SetKeepFaceMatches;
    property FaceModelVersion: string read GetFaceModelVersion write SetFaceModelVersion;
    property SearchedFaceId: string read GetSearchedFaceId write SetSearchedFaceId;
  end;
  
  TSearchFacesResponse = class(TAmazonWebServiceResponse, ISearchFacesResponse)
  strict private
    FFaceMatches: TObjectList<TFaceMatch>;
    FKeepFaceMatches: Boolean;
    FFaceModelVersion: Nullable<string>;
    FSearchedFaceId: Nullable<string>;
    function GetFaceMatches: TObjectList<TFaceMatch>;
    procedure SetFaceMatches(const Value: TObjectList<TFaceMatch>);
    function GetKeepFaceMatches: Boolean;
    procedure SetKeepFaceMatches(const Value: Boolean);
    function GetFaceModelVersion: string;
    procedure SetFaceModelVersion(const Value: string);
    function GetSearchedFaceId: string;
    procedure SetSearchedFaceId(const Value: string);
  strict protected
    function Obj: TSearchFacesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFaceMatches: Boolean;
    function IsSetFaceModelVersion: Boolean;
    function IsSetSearchedFaceId: Boolean;
    property FaceMatches: TObjectList<TFaceMatch> read GetFaceMatches write SetFaceMatches;
    property KeepFaceMatches: Boolean read GetKeepFaceMatches write SetKeepFaceMatches;
    property FaceModelVersion: string read GetFaceModelVersion write SetFaceModelVersion;
    property SearchedFaceId: string read GetSearchedFaceId write SetSearchedFaceId;
  end;
  
implementation

{ TSearchFacesResponse }

constructor TSearchFacesResponse.Create;
begin
  inherited;
  FFaceMatches := TObjectList<TFaceMatch>.Create;
end;

destructor TSearchFacesResponse.Destroy;
begin
  FaceMatches := nil;
  inherited;
end;

function TSearchFacesResponse.Obj: TSearchFacesResponse;
begin
  Result := Self;
end;

function TSearchFacesResponse.GetFaceMatches: TObjectList<TFaceMatch>;
begin
  Result := FFaceMatches;
end;

procedure TSearchFacesResponse.SetFaceMatches(const Value: TObjectList<TFaceMatch>);
begin
  if FFaceMatches <> Value then
  begin
    if not KeepFaceMatches then
      FFaceMatches.Free;
    FFaceMatches := Value;
  end;
end;

function TSearchFacesResponse.GetKeepFaceMatches: Boolean;
begin
  Result := FKeepFaceMatches;
end;

procedure TSearchFacesResponse.SetKeepFaceMatches(const Value: Boolean);
begin
  FKeepFaceMatches := Value;
end;

function TSearchFacesResponse.IsSetFaceMatches: Boolean;
begin
  Result := (FFaceMatches <> nil) and (FFaceMatches.Count > 0);
end;

function TSearchFacesResponse.GetFaceModelVersion: string;
begin
  Result := FFaceModelVersion.ValueOrDefault;
end;

procedure TSearchFacesResponse.SetFaceModelVersion(const Value: string);
begin
  FFaceModelVersion := Value;
end;

function TSearchFacesResponse.IsSetFaceModelVersion: Boolean;
begin
  Result := FFaceModelVersion.HasValue;
end;

function TSearchFacesResponse.GetSearchedFaceId: string;
begin
  Result := FSearchedFaceId.ValueOrDefault;
end;

procedure TSearchFacesResponse.SetSearchedFaceId(const Value: string);
begin
  FSearchedFaceId := Value;
end;

function TSearchFacesResponse.IsSetSearchedFaceId: Boolean;
begin
  Result := FSearchedFaceId.HasValue;
end;

end.
