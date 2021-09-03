unit AWS.Rekognition.Model.IndexFacesRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.Image, 
  AWS.Rekognition.Enums;

type
  TIndexFacesRequest = class;
  
  IIndexFacesRequest = interface
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function GetDetectionAttributes: TList<string>;
    procedure SetDetectionAttributes(const Value: TList<string>);
    function GetKeepDetectionAttributes: Boolean;
    procedure SetKeepDetectionAttributes(const Value: Boolean);
    function GetExternalImageId: string;
    procedure SetExternalImageId(const Value: string);
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
    function GetMaxFaces: Integer;
    procedure SetMaxFaces(const Value: Integer);
    function GetQualityFilter: TQualityFilter;
    procedure SetQualityFilter(const Value: TQualityFilter);
    function Obj: TIndexFacesRequest;
    function IsSetCollectionId: Boolean;
    function IsSetDetectionAttributes: Boolean;
    function IsSetExternalImageId: Boolean;
    function IsSetImage: Boolean;
    function IsSetMaxFaces: Boolean;
    function IsSetQualityFilter: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
    property DetectionAttributes: TList<string> read GetDetectionAttributes write SetDetectionAttributes;
    property KeepDetectionAttributes: Boolean read GetKeepDetectionAttributes write SetKeepDetectionAttributes;
    property ExternalImageId: string read GetExternalImageId write SetExternalImageId;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
    property MaxFaces: Integer read GetMaxFaces write SetMaxFaces;
    property QualityFilter: TQualityFilter read GetQualityFilter write SetQualityFilter;
  end;
  
  TIndexFacesRequest = class(TAmazonRekognitionRequest, IIndexFacesRequest)
  strict private
    FCollectionId: Nullable<string>;
    FDetectionAttributes: TList<string>;
    FKeepDetectionAttributes: Boolean;
    FExternalImageId: Nullable<string>;
    FImage: TImage;
    FKeepImage: Boolean;
    FMaxFaces: Nullable<Integer>;
    FQualityFilter: Nullable<TQualityFilter>;
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function GetDetectionAttributes: TList<string>;
    procedure SetDetectionAttributes(const Value: TList<string>);
    function GetKeepDetectionAttributes: Boolean;
    procedure SetKeepDetectionAttributes(const Value: Boolean);
    function GetExternalImageId: string;
    procedure SetExternalImageId(const Value: string);
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
    function GetMaxFaces: Integer;
    procedure SetMaxFaces(const Value: Integer);
    function GetQualityFilter: TQualityFilter;
    procedure SetQualityFilter(const Value: TQualityFilter);
  strict protected
    function Obj: TIndexFacesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCollectionId: Boolean;
    function IsSetDetectionAttributes: Boolean;
    function IsSetExternalImageId: Boolean;
    function IsSetImage: Boolean;
    function IsSetMaxFaces: Boolean;
    function IsSetQualityFilter: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
    property DetectionAttributes: TList<string> read GetDetectionAttributes write SetDetectionAttributes;
    property KeepDetectionAttributes: Boolean read GetKeepDetectionAttributes write SetKeepDetectionAttributes;
    property ExternalImageId: string read GetExternalImageId write SetExternalImageId;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
    property MaxFaces: Integer read GetMaxFaces write SetMaxFaces;
    property QualityFilter: TQualityFilter read GetQualityFilter write SetQualityFilter;
  end;
  
implementation

{ TIndexFacesRequest }

constructor TIndexFacesRequest.Create;
begin
  inherited;
  FDetectionAttributes := TList<string>.Create;
end;

destructor TIndexFacesRequest.Destroy;
begin
  Image := nil;
  DetectionAttributes := nil;
  inherited;
end;

function TIndexFacesRequest.Obj: TIndexFacesRequest;
begin
  Result := Self;
end;

function TIndexFacesRequest.GetCollectionId: string;
begin
  Result := FCollectionId.ValueOrDefault;
end;

procedure TIndexFacesRequest.SetCollectionId(const Value: string);
begin
  FCollectionId := Value;
end;

function TIndexFacesRequest.IsSetCollectionId: Boolean;
begin
  Result := FCollectionId.HasValue;
end;

function TIndexFacesRequest.GetDetectionAttributes: TList<string>;
begin
  Result := FDetectionAttributes;
end;

procedure TIndexFacesRequest.SetDetectionAttributes(const Value: TList<string>);
begin
  if FDetectionAttributes <> Value then
  begin
    if not KeepDetectionAttributes then
      FDetectionAttributes.Free;
    FDetectionAttributes := Value;
  end;
end;

function TIndexFacesRequest.GetKeepDetectionAttributes: Boolean;
begin
  Result := FKeepDetectionAttributes;
end;

procedure TIndexFacesRequest.SetKeepDetectionAttributes(const Value: Boolean);
begin
  FKeepDetectionAttributes := Value;
end;

function TIndexFacesRequest.IsSetDetectionAttributes: Boolean;
begin
  Result := (FDetectionAttributes <> nil) and (FDetectionAttributes.Count > 0);
end;

function TIndexFacesRequest.GetExternalImageId: string;
begin
  Result := FExternalImageId.ValueOrDefault;
end;

procedure TIndexFacesRequest.SetExternalImageId(const Value: string);
begin
  FExternalImageId := Value;
end;

function TIndexFacesRequest.IsSetExternalImageId: Boolean;
begin
  Result := FExternalImageId.HasValue;
end;

function TIndexFacesRequest.GetImage: TImage;
begin
  Result := FImage;
end;

procedure TIndexFacesRequest.SetImage(const Value: TImage);
begin
  if FImage <> Value then
  begin
    if not KeepImage then
      FImage.Free;
    FImage := Value;
  end;
end;

function TIndexFacesRequest.GetKeepImage: Boolean;
begin
  Result := FKeepImage;
end;

procedure TIndexFacesRequest.SetKeepImage(const Value: Boolean);
begin
  FKeepImage := Value;
end;

function TIndexFacesRequest.IsSetImage: Boolean;
begin
  Result := FImage <> nil;
end;

function TIndexFacesRequest.GetMaxFaces: Integer;
begin
  Result := FMaxFaces.ValueOrDefault;
end;

procedure TIndexFacesRequest.SetMaxFaces(const Value: Integer);
begin
  FMaxFaces := Value;
end;

function TIndexFacesRequest.IsSetMaxFaces: Boolean;
begin
  Result := FMaxFaces.HasValue;
end;

function TIndexFacesRequest.GetQualityFilter: TQualityFilter;
begin
  Result := FQualityFilter.ValueOrDefault;
end;

procedure TIndexFacesRequest.SetQualityFilter(const Value: TQualityFilter);
begin
  FQualityFilter := Value;
end;

function TIndexFacesRequest.IsSetQualityFilter: Boolean;
begin
  Result := FQualityFilter.HasValue;
end;

end.
