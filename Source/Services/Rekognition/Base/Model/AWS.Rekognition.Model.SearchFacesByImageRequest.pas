unit AWS.Rekognition.Model.SearchFacesByImageRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable, 
  AWS.Rekognition.Model.Image, 
  AWS.Rekognition.Enums;

type
  TSearchFacesByImageRequest = class;
  
  ISearchFacesByImageRequest = interface
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function GetFaceMatchThreshold: Double;
    procedure SetFaceMatchThreshold(const Value: Double);
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
    function GetMaxFaces: Integer;
    procedure SetMaxFaces(const Value: Integer);
    function GetQualityFilter: TQualityFilter;
    procedure SetQualityFilter(const Value: TQualityFilter);
    function Obj: TSearchFacesByImageRequest;
    function IsSetCollectionId: Boolean;
    function IsSetFaceMatchThreshold: Boolean;
    function IsSetImage: Boolean;
    function IsSetMaxFaces: Boolean;
    function IsSetQualityFilter: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
    property FaceMatchThreshold: Double read GetFaceMatchThreshold write SetFaceMatchThreshold;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
    property MaxFaces: Integer read GetMaxFaces write SetMaxFaces;
    property QualityFilter: TQualityFilter read GetQualityFilter write SetQualityFilter;
  end;
  
  TSearchFacesByImageRequest = class(TAmazonRekognitionRequest, ISearchFacesByImageRequest)
  strict private
    FCollectionId: Nullable<string>;
    FFaceMatchThreshold: Nullable<Double>;
    FImage: TImage;
    FKeepImage: Boolean;
    FMaxFaces: Nullable<Integer>;
    FQualityFilter: Nullable<TQualityFilter>;
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function GetFaceMatchThreshold: Double;
    procedure SetFaceMatchThreshold(const Value: Double);
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
    function GetMaxFaces: Integer;
    procedure SetMaxFaces(const Value: Integer);
    function GetQualityFilter: TQualityFilter;
    procedure SetQualityFilter(const Value: TQualityFilter);
  strict protected
    function Obj: TSearchFacesByImageRequest;
  public
    destructor Destroy; override;
    function IsSetCollectionId: Boolean;
    function IsSetFaceMatchThreshold: Boolean;
    function IsSetImage: Boolean;
    function IsSetMaxFaces: Boolean;
    function IsSetQualityFilter: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
    property FaceMatchThreshold: Double read GetFaceMatchThreshold write SetFaceMatchThreshold;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
    property MaxFaces: Integer read GetMaxFaces write SetMaxFaces;
    property QualityFilter: TQualityFilter read GetQualityFilter write SetQualityFilter;
  end;
  
implementation

{ TSearchFacesByImageRequest }

destructor TSearchFacesByImageRequest.Destroy;
begin
  Image := nil;
  inherited;
end;

function TSearchFacesByImageRequest.Obj: TSearchFacesByImageRequest;
begin
  Result := Self;
end;

function TSearchFacesByImageRequest.GetCollectionId: string;
begin
  Result := FCollectionId.ValueOrDefault;
end;

procedure TSearchFacesByImageRequest.SetCollectionId(const Value: string);
begin
  FCollectionId := Value;
end;

function TSearchFacesByImageRequest.IsSetCollectionId: Boolean;
begin
  Result := FCollectionId.HasValue;
end;

function TSearchFacesByImageRequest.GetFaceMatchThreshold: Double;
begin
  Result := FFaceMatchThreshold.ValueOrDefault;
end;

procedure TSearchFacesByImageRequest.SetFaceMatchThreshold(const Value: Double);
begin
  FFaceMatchThreshold := Value;
end;

function TSearchFacesByImageRequest.IsSetFaceMatchThreshold: Boolean;
begin
  Result := FFaceMatchThreshold.HasValue;
end;

function TSearchFacesByImageRequest.GetImage: TImage;
begin
  Result := FImage;
end;

procedure TSearchFacesByImageRequest.SetImage(const Value: TImage);
begin
  if FImage <> Value then
  begin
    if not KeepImage then
      FImage.Free;
    FImage := Value;
  end;
end;

function TSearchFacesByImageRequest.GetKeepImage: Boolean;
begin
  Result := FKeepImage;
end;

procedure TSearchFacesByImageRequest.SetKeepImage(const Value: Boolean);
begin
  FKeepImage := Value;
end;

function TSearchFacesByImageRequest.IsSetImage: Boolean;
begin
  Result := FImage <> nil;
end;

function TSearchFacesByImageRequest.GetMaxFaces: Integer;
begin
  Result := FMaxFaces.ValueOrDefault;
end;

procedure TSearchFacesByImageRequest.SetMaxFaces(const Value: Integer);
begin
  FMaxFaces := Value;
end;

function TSearchFacesByImageRequest.IsSetMaxFaces: Boolean;
begin
  Result := FMaxFaces.HasValue;
end;

function TSearchFacesByImageRequest.GetQualityFilter: TQualityFilter;
begin
  Result := FQualityFilter.ValueOrDefault;
end;

procedure TSearchFacesByImageRequest.SetQualityFilter(const Value: TQualityFilter);
begin
  FQualityFilter := Value;
end;

function TSearchFacesByImageRequest.IsSetQualityFilter: Boolean;
begin
  Result := FQualityFilter.HasValue;
end;

end.
