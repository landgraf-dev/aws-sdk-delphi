unit AWS.Rekognition.Model.DetectCustomLabelsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.Image;

type
  TDetectCustomLabelsRequest = class;
  
  IDetectCustomLabelsRequest = interface
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetMinConfidence: Double;
    procedure SetMinConfidence(const Value: Double);
    function GetProjectVersionArn: string;
    procedure SetProjectVersionArn(const Value: string);
    function Obj: TDetectCustomLabelsRequest;
    function IsSetImage: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetMinConfidence: Boolean;
    function IsSetProjectVersionArn: Boolean;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property MinConfidence: Double read GetMinConfidence write SetMinConfidence;
    property ProjectVersionArn: string read GetProjectVersionArn write SetProjectVersionArn;
  end;
  
  TDetectCustomLabelsRequest = class(TAmazonRekognitionRequest, IDetectCustomLabelsRequest)
  strict private
    FImage: TImage;
    FKeepImage: Boolean;
    FMaxResults: Nullable<Integer>;
    FMinConfidence: Nullable<Double>;
    FProjectVersionArn: Nullable<string>;
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetMinConfidence: Double;
    procedure SetMinConfidence(const Value: Double);
    function GetProjectVersionArn: string;
    procedure SetProjectVersionArn(const Value: string);
  strict protected
    function Obj: TDetectCustomLabelsRequest;
  public
    destructor Destroy; override;
    function IsSetImage: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetMinConfidence: Boolean;
    function IsSetProjectVersionArn: Boolean;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property MinConfidence: Double read GetMinConfidence write SetMinConfidence;
    property ProjectVersionArn: string read GetProjectVersionArn write SetProjectVersionArn;
  end;
  
implementation

{ TDetectCustomLabelsRequest }

destructor TDetectCustomLabelsRequest.Destroy;
begin
  Image := nil;
  inherited;
end;

function TDetectCustomLabelsRequest.Obj: TDetectCustomLabelsRequest;
begin
  Result := Self;
end;

function TDetectCustomLabelsRequest.GetImage: TImage;
begin
  Result := FImage;
end;

procedure TDetectCustomLabelsRequest.SetImage(const Value: TImage);
begin
  if FImage <> Value then
  begin
    if not KeepImage then
      FImage.Free;
    FImage := Value;
  end;
end;

function TDetectCustomLabelsRequest.GetKeepImage: Boolean;
begin
  Result := FKeepImage;
end;

procedure TDetectCustomLabelsRequest.SetKeepImage(const Value: Boolean);
begin
  FKeepImage := Value;
end;

function TDetectCustomLabelsRequest.IsSetImage: Boolean;
begin
  Result := FImage <> nil;
end;

function TDetectCustomLabelsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDetectCustomLabelsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDetectCustomLabelsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDetectCustomLabelsRequest.GetMinConfidence: Double;
begin
  Result := FMinConfidence.ValueOrDefault;
end;

procedure TDetectCustomLabelsRequest.SetMinConfidence(const Value: Double);
begin
  FMinConfidence := Value;
end;

function TDetectCustomLabelsRequest.IsSetMinConfidence: Boolean;
begin
  Result := FMinConfidence.HasValue;
end;

function TDetectCustomLabelsRequest.GetProjectVersionArn: string;
begin
  Result := FProjectVersionArn.ValueOrDefault;
end;

procedure TDetectCustomLabelsRequest.SetProjectVersionArn(const Value: string);
begin
  FProjectVersionArn := Value;
end;

function TDetectCustomLabelsRequest.IsSetProjectVersionArn: Boolean;
begin
  Result := FProjectVersionArn.HasValue;
end;

end.
