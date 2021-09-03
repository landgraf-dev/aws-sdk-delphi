unit AWS.Rekognition.Model.DetectLabelsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.Image;

type
  TDetectLabelsRequest = class;
  
  IDetectLabelsRequest = interface
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
    function GetMaxLabels: Integer;
    procedure SetMaxLabels(const Value: Integer);
    function GetMinConfidence: Double;
    procedure SetMinConfidence(const Value: Double);
    function Obj: TDetectLabelsRequest;
    function IsSetImage: Boolean;
    function IsSetMaxLabels: Boolean;
    function IsSetMinConfidence: Boolean;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
    property MaxLabels: Integer read GetMaxLabels write SetMaxLabels;
    property MinConfidence: Double read GetMinConfidence write SetMinConfidence;
  end;
  
  TDetectLabelsRequest = class(TAmazonRekognitionRequest, IDetectLabelsRequest)
  strict private
    FImage: TImage;
    FKeepImage: Boolean;
    FMaxLabels: Nullable<Integer>;
    FMinConfidence: Nullable<Double>;
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
    function GetMaxLabels: Integer;
    procedure SetMaxLabels(const Value: Integer);
    function GetMinConfidence: Double;
    procedure SetMinConfidence(const Value: Double);
  strict protected
    function Obj: TDetectLabelsRequest;
  public
    destructor Destroy; override;
    function IsSetImage: Boolean;
    function IsSetMaxLabels: Boolean;
    function IsSetMinConfidence: Boolean;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
    property MaxLabels: Integer read GetMaxLabels write SetMaxLabels;
    property MinConfidence: Double read GetMinConfidence write SetMinConfidence;
  end;
  
implementation

{ TDetectLabelsRequest }

destructor TDetectLabelsRequest.Destroy;
begin
  Image := nil;
  inherited;
end;

function TDetectLabelsRequest.Obj: TDetectLabelsRequest;
begin
  Result := Self;
end;

function TDetectLabelsRequest.GetImage: TImage;
begin
  Result := FImage;
end;

procedure TDetectLabelsRequest.SetImage(const Value: TImage);
begin
  if FImage <> Value then
  begin
    if not KeepImage then
      FImage.Free;
    FImage := Value;
  end;
end;

function TDetectLabelsRequest.GetKeepImage: Boolean;
begin
  Result := FKeepImage;
end;

procedure TDetectLabelsRequest.SetKeepImage(const Value: Boolean);
begin
  FKeepImage := Value;
end;

function TDetectLabelsRequest.IsSetImage: Boolean;
begin
  Result := FImage <> nil;
end;

function TDetectLabelsRequest.GetMaxLabels: Integer;
begin
  Result := FMaxLabels.ValueOrDefault;
end;

procedure TDetectLabelsRequest.SetMaxLabels(const Value: Integer);
begin
  FMaxLabels := Value;
end;

function TDetectLabelsRequest.IsSetMaxLabels: Boolean;
begin
  Result := FMaxLabels.HasValue;
end;

function TDetectLabelsRequest.GetMinConfidence: Double;
begin
  Result := FMinConfidence.ValueOrDefault;
end;

procedure TDetectLabelsRequest.SetMinConfidence(const Value: Double);
begin
  FMinConfidence := Value;
end;

function TDetectLabelsRequest.IsSetMinConfidence: Boolean;
begin
  Result := FMinConfidence.HasValue;
end;

end.
