unit AWS.Rekognition.Model.ListFacesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.Rekognition.Model.Face;

type
  TListFacesResponse = class;
  
  IListFacesResponse = interface(IAmazonWebServiceResponse)
    function GetFaceModelVersion: string;
    procedure SetFaceModelVersion(const Value: string);
    function GetFaces: TObjectList<TFace>;
    procedure SetFaces(const Value: TObjectList<TFace>);
    function GetKeepFaces: Boolean;
    procedure SetKeepFaces(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListFacesResponse;
    function IsSetFaceModelVersion: Boolean;
    function IsSetFaces: Boolean;
    function IsSetNextToken: Boolean;
    property FaceModelVersion: string read GetFaceModelVersion write SetFaceModelVersion;
    property Faces: TObjectList<TFace> read GetFaces write SetFaces;
    property KeepFaces: Boolean read GetKeepFaces write SetKeepFaces;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListFacesResponse = class(TAmazonWebServiceResponse, IListFacesResponse)
  strict private
    FFaceModelVersion: Nullable<string>;
    FFaces: TObjectList<TFace>;
    FKeepFaces: Boolean;
    FNextToken: Nullable<string>;
    function GetFaceModelVersion: string;
    procedure SetFaceModelVersion(const Value: string);
    function GetFaces: TObjectList<TFace>;
    procedure SetFaces(const Value: TObjectList<TFace>);
    function GetKeepFaces: Boolean;
    procedure SetKeepFaces(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListFacesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFaceModelVersion: Boolean;
    function IsSetFaces: Boolean;
    function IsSetNextToken: Boolean;
    property FaceModelVersion: string read GetFaceModelVersion write SetFaceModelVersion;
    property Faces: TObjectList<TFace> read GetFaces write SetFaces;
    property KeepFaces: Boolean read GetKeepFaces write SetKeepFaces;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListFacesResponse }

constructor TListFacesResponse.Create;
begin
  inherited;
  FFaces := TObjectList<TFace>.Create;
end;

destructor TListFacesResponse.Destroy;
begin
  Faces := nil;
  inherited;
end;

function TListFacesResponse.Obj: TListFacesResponse;
begin
  Result := Self;
end;

function TListFacesResponse.GetFaceModelVersion: string;
begin
  Result := FFaceModelVersion.ValueOrDefault;
end;

procedure TListFacesResponse.SetFaceModelVersion(const Value: string);
begin
  FFaceModelVersion := Value;
end;

function TListFacesResponse.IsSetFaceModelVersion: Boolean;
begin
  Result := FFaceModelVersion.HasValue;
end;

function TListFacesResponse.GetFaces: TObjectList<TFace>;
begin
  Result := FFaces;
end;

procedure TListFacesResponse.SetFaces(const Value: TObjectList<TFace>);
begin
  if FFaces <> Value then
  begin
    if not KeepFaces then
      FFaces.Free;
    FFaces := Value;
  end;
end;

function TListFacesResponse.GetKeepFaces: Boolean;
begin
  Result := FKeepFaces;
end;

procedure TListFacesResponse.SetKeepFaces(const Value: Boolean);
begin
  FKeepFaces := Value;
end;

function TListFacesResponse.IsSetFaces: Boolean;
begin
  Result := (FFaces <> nil) and (FFaces.Count > 0);
end;

function TListFacesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListFacesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListFacesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
