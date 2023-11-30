unit AWS.Rekognition.Model.SearchFacesRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable;

type
  TSearchFacesRequest = class;
  
  ISearchFacesRequest = interface
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function GetFaceId: string;
    procedure SetFaceId(const Value: string);
    function GetFaceMatchThreshold: Double;
    procedure SetFaceMatchThreshold(const Value: Double);
    function GetMaxFaces: Integer;
    procedure SetMaxFaces(const Value: Integer);
    function Obj: TSearchFacesRequest;
    function IsSetCollectionId: Boolean;
    function IsSetFaceId: Boolean;
    function IsSetFaceMatchThreshold: Boolean;
    function IsSetMaxFaces: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
    property FaceId: string read GetFaceId write SetFaceId;
    property FaceMatchThreshold: Double read GetFaceMatchThreshold write SetFaceMatchThreshold;
    property MaxFaces: Integer read GetMaxFaces write SetMaxFaces;
  end;
  
  TSearchFacesRequest = class(TAmazonRekognitionRequest, ISearchFacesRequest)
  strict private
    FCollectionId: Nullable<string>;
    FFaceId: Nullable<string>;
    FFaceMatchThreshold: Nullable<Double>;
    FMaxFaces: Nullable<Integer>;
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function GetFaceId: string;
    procedure SetFaceId(const Value: string);
    function GetFaceMatchThreshold: Double;
    procedure SetFaceMatchThreshold(const Value: Double);
    function GetMaxFaces: Integer;
    procedure SetMaxFaces(const Value: Integer);
  strict protected
    function Obj: TSearchFacesRequest;
  public
    function IsSetCollectionId: Boolean;
    function IsSetFaceId: Boolean;
    function IsSetFaceMatchThreshold: Boolean;
    function IsSetMaxFaces: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
    property FaceId: string read GetFaceId write SetFaceId;
    property FaceMatchThreshold: Double read GetFaceMatchThreshold write SetFaceMatchThreshold;
    property MaxFaces: Integer read GetMaxFaces write SetMaxFaces;
  end;
  
implementation

{ TSearchFacesRequest }

function TSearchFacesRequest.Obj: TSearchFacesRequest;
begin
  Result := Self;
end;

function TSearchFacesRequest.GetCollectionId: string;
begin
  Result := FCollectionId.ValueOrDefault;
end;

procedure TSearchFacesRequest.SetCollectionId(const Value: string);
begin
  FCollectionId := Value;
end;

function TSearchFacesRequest.IsSetCollectionId: Boolean;
begin
  Result := FCollectionId.HasValue;
end;

function TSearchFacesRequest.GetFaceId: string;
begin
  Result := FFaceId.ValueOrDefault;
end;

procedure TSearchFacesRequest.SetFaceId(const Value: string);
begin
  FFaceId := Value;
end;

function TSearchFacesRequest.IsSetFaceId: Boolean;
begin
  Result := FFaceId.HasValue;
end;

function TSearchFacesRequest.GetFaceMatchThreshold: Double;
begin
  Result := FFaceMatchThreshold.ValueOrDefault;
end;

procedure TSearchFacesRequest.SetFaceMatchThreshold(const Value: Double);
begin
  FFaceMatchThreshold := Value;
end;

function TSearchFacesRequest.IsSetFaceMatchThreshold: Boolean;
begin
  Result := FFaceMatchThreshold.HasValue;
end;

function TSearchFacesRequest.GetMaxFaces: Integer;
begin
  Result := FMaxFaces.ValueOrDefault;
end;

procedure TSearchFacesRequest.SetMaxFaces(const Value: Integer);
begin
  FMaxFaces := Value;
end;

function TSearchFacesRequest.IsSetMaxFaces: Boolean;
begin
  Result := FMaxFaces.HasValue;
end;

end.
