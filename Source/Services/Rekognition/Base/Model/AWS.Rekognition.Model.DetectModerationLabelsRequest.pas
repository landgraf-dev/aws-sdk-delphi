unit AWS.Rekognition.Model.DetectModerationLabelsRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.HumanLoopConfig, 
  AWS.Rekognition.Model.Image, 
  AWS.Nullable;

type
  TDetectModerationLabelsRequest = class;
  
  IDetectModerationLabelsRequest = interface
    function GetHumanLoopConfig: THumanLoopConfig;
    procedure SetHumanLoopConfig(const Value: THumanLoopConfig);
    function GetKeepHumanLoopConfig: Boolean;
    procedure SetKeepHumanLoopConfig(const Value: Boolean);
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
    function GetMinConfidence: Double;
    procedure SetMinConfidence(const Value: Double);
    function Obj: TDetectModerationLabelsRequest;
    function IsSetHumanLoopConfig: Boolean;
    function IsSetImage: Boolean;
    function IsSetMinConfidence: Boolean;
    property HumanLoopConfig: THumanLoopConfig read GetHumanLoopConfig write SetHumanLoopConfig;
    property KeepHumanLoopConfig: Boolean read GetKeepHumanLoopConfig write SetKeepHumanLoopConfig;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
    property MinConfidence: Double read GetMinConfidence write SetMinConfidence;
  end;
  
  TDetectModerationLabelsRequest = class(TAmazonRekognitionRequest, IDetectModerationLabelsRequest)
  strict private
    FHumanLoopConfig: THumanLoopConfig;
    FKeepHumanLoopConfig: Boolean;
    FImage: TImage;
    FKeepImage: Boolean;
    FMinConfidence: Nullable<Double>;
    function GetHumanLoopConfig: THumanLoopConfig;
    procedure SetHumanLoopConfig(const Value: THumanLoopConfig);
    function GetKeepHumanLoopConfig: Boolean;
    procedure SetKeepHumanLoopConfig(const Value: Boolean);
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
    function GetMinConfidence: Double;
    procedure SetMinConfidence(const Value: Double);
  strict protected
    function Obj: TDetectModerationLabelsRequest;
  public
    destructor Destroy; override;
    function IsSetHumanLoopConfig: Boolean;
    function IsSetImage: Boolean;
    function IsSetMinConfidence: Boolean;
    property HumanLoopConfig: THumanLoopConfig read GetHumanLoopConfig write SetHumanLoopConfig;
    property KeepHumanLoopConfig: Boolean read GetKeepHumanLoopConfig write SetKeepHumanLoopConfig;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
    property MinConfidence: Double read GetMinConfidence write SetMinConfidence;
  end;
  
implementation

{ TDetectModerationLabelsRequest }

destructor TDetectModerationLabelsRequest.Destroy;
begin
  Image := nil;
  HumanLoopConfig := nil;
  inherited;
end;

function TDetectModerationLabelsRequest.Obj: TDetectModerationLabelsRequest;
begin
  Result := Self;
end;

function TDetectModerationLabelsRequest.GetHumanLoopConfig: THumanLoopConfig;
begin
  Result := FHumanLoopConfig;
end;

procedure TDetectModerationLabelsRequest.SetHumanLoopConfig(const Value: THumanLoopConfig);
begin
  if FHumanLoopConfig <> Value then
  begin
    if not KeepHumanLoopConfig then
      FHumanLoopConfig.Free;
    FHumanLoopConfig := Value;
  end;
end;

function TDetectModerationLabelsRequest.GetKeepHumanLoopConfig: Boolean;
begin
  Result := FKeepHumanLoopConfig;
end;

procedure TDetectModerationLabelsRequest.SetKeepHumanLoopConfig(const Value: Boolean);
begin
  FKeepHumanLoopConfig := Value;
end;

function TDetectModerationLabelsRequest.IsSetHumanLoopConfig: Boolean;
begin
  Result := FHumanLoopConfig <> nil;
end;

function TDetectModerationLabelsRequest.GetImage: TImage;
begin
  Result := FImage;
end;

procedure TDetectModerationLabelsRequest.SetImage(const Value: TImage);
begin
  if FImage <> Value then
  begin
    if not KeepImage then
      FImage.Free;
    FImage := Value;
  end;
end;

function TDetectModerationLabelsRequest.GetKeepImage: Boolean;
begin
  Result := FKeepImage;
end;

procedure TDetectModerationLabelsRequest.SetKeepImage(const Value: Boolean);
begin
  FKeepImage := Value;
end;

function TDetectModerationLabelsRequest.IsSetImage: Boolean;
begin
  Result := FImage <> nil;
end;

function TDetectModerationLabelsRequest.GetMinConfidence: Double;
begin
  Result := FMinConfidence.ValueOrDefault;
end;

procedure TDetectModerationLabelsRequest.SetMinConfidence(const Value: Double);
begin
  FMinConfidence := Value;
end;

function TDetectModerationLabelsRequest.IsSetMinConfidence: Boolean;
begin
  Result := FMinConfidence.HasValue;
end;

end.
