unit AWS.Rekognition.Model.CompareFacesRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable, 
  AWS.Rekognition.Enums, 
  AWS.Rekognition.Model.Image;

type
  TCompareFacesRequest = class;
  
  ICompareFacesRequest = interface
    function GetQualityFilter: TQualityFilter;
    procedure SetQualityFilter(const Value: TQualityFilter);
    function GetSimilarityThreshold: Double;
    procedure SetSimilarityThreshold(const Value: Double);
    function GetSourceImage: TImage;
    procedure SetSourceImage(const Value: TImage);
    function GetKeepSourceImage: Boolean;
    procedure SetKeepSourceImage(const Value: Boolean);
    function GetTargetImage: TImage;
    procedure SetTargetImage(const Value: TImage);
    function GetKeepTargetImage: Boolean;
    procedure SetKeepTargetImage(const Value: Boolean);
    function Obj: TCompareFacesRequest;
    function IsSetQualityFilter: Boolean;
    function IsSetSimilarityThreshold: Boolean;
    function IsSetSourceImage: Boolean;
    function IsSetTargetImage: Boolean;
    property QualityFilter: TQualityFilter read GetQualityFilter write SetQualityFilter;
    property SimilarityThreshold: Double read GetSimilarityThreshold write SetSimilarityThreshold;
    property SourceImage: TImage read GetSourceImage write SetSourceImage;
    property KeepSourceImage: Boolean read GetKeepSourceImage write SetKeepSourceImage;
    property TargetImage: TImage read GetTargetImage write SetTargetImage;
    property KeepTargetImage: Boolean read GetKeepTargetImage write SetKeepTargetImage;
  end;
  
  TCompareFacesRequest = class(TAmazonRekognitionRequest, ICompareFacesRequest)
  strict private
    FQualityFilter: Nullable<TQualityFilter>;
    FSimilarityThreshold: Nullable<Double>;
    FSourceImage: TImage;
    FKeepSourceImage: Boolean;
    FTargetImage: TImage;
    FKeepTargetImage: Boolean;
    function GetQualityFilter: TQualityFilter;
    procedure SetQualityFilter(const Value: TQualityFilter);
    function GetSimilarityThreshold: Double;
    procedure SetSimilarityThreshold(const Value: Double);
    function GetSourceImage: TImage;
    procedure SetSourceImage(const Value: TImage);
    function GetKeepSourceImage: Boolean;
    procedure SetKeepSourceImage(const Value: Boolean);
    function GetTargetImage: TImage;
    procedure SetTargetImage(const Value: TImage);
    function GetKeepTargetImage: Boolean;
    procedure SetKeepTargetImage(const Value: Boolean);
  strict protected
    function Obj: TCompareFacesRequest;
  public
    destructor Destroy; override;
    function IsSetQualityFilter: Boolean;
    function IsSetSimilarityThreshold: Boolean;
    function IsSetSourceImage: Boolean;
    function IsSetTargetImage: Boolean;
    property QualityFilter: TQualityFilter read GetQualityFilter write SetQualityFilter;
    property SimilarityThreshold: Double read GetSimilarityThreshold write SetSimilarityThreshold;
    property SourceImage: TImage read GetSourceImage write SetSourceImage;
    property KeepSourceImage: Boolean read GetKeepSourceImage write SetKeepSourceImage;
    property TargetImage: TImage read GetTargetImage write SetTargetImage;
    property KeepTargetImage: Boolean read GetKeepTargetImage write SetKeepTargetImage;
  end;
  
implementation

{ TCompareFacesRequest }

destructor TCompareFacesRequest.Destroy;
begin
  TargetImage := nil;
  SourceImage := nil;
  inherited;
end;

function TCompareFacesRequest.Obj: TCompareFacesRequest;
begin
  Result := Self;
end;

function TCompareFacesRequest.GetQualityFilter: TQualityFilter;
begin
  Result := FQualityFilter.ValueOrDefault;
end;

procedure TCompareFacesRequest.SetQualityFilter(const Value: TQualityFilter);
begin
  FQualityFilter := Value;
end;

function TCompareFacesRequest.IsSetQualityFilter: Boolean;
begin
  Result := FQualityFilter.HasValue;
end;

function TCompareFacesRequest.GetSimilarityThreshold: Double;
begin
  Result := FSimilarityThreshold.ValueOrDefault;
end;

procedure TCompareFacesRequest.SetSimilarityThreshold(const Value: Double);
begin
  FSimilarityThreshold := Value;
end;

function TCompareFacesRequest.IsSetSimilarityThreshold: Boolean;
begin
  Result := FSimilarityThreshold.HasValue;
end;

function TCompareFacesRequest.GetSourceImage: TImage;
begin
  Result := FSourceImage;
end;

procedure TCompareFacesRequest.SetSourceImage(const Value: TImage);
begin
  if FSourceImage <> Value then
  begin
    if not KeepSourceImage then
      FSourceImage.Free;
    FSourceImage := Value;
  end;
end;

function TCompareFacesRequest.GetKeepSourceImage: Boolean;
begin
  Result := FKeepSourceImage;
end;

procedure TCompareFacesRequest.SetKeepSourceImage(const Value: Boolean);
begin
  FKeepSourceImage := Value;
end;

function TCompareFacesRequest.IsSetSourceImage: Boolean;
begin
  Result := FSourceImage <> nil;
end;

function TCompareFacesRequest.GetTargetImage: TImage;
begin
  Result := FTargetImage;
end;

procedure TCompareFacesRequest.SetTargetImage(const Value: TImage);
begin
  if FTargetImage <> Value then
  begin
    if not KeepTargetImage then
      FTargetImage.Free;
    FTargetImage := Value;
  end;
end;

function TCompareFacesRequest.GetKeepTargetImage: Boolean;
begin
  Result := FKeepTargetImage;
end;

procedure TCompareFacesRequest.SetKeepTargetImage(const Value: Boolean);
begin
  FKeepTargetImage := Value;
end;

function TCompareFacesRequest.IsSetTargetImage: Boolean;
begin
  Result := FTargetImage <> nil;
end;

end.
