unit AWS.Rekognition.Model.StartLabelDetectionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.NotificationChannel, 
  AWS.Rekognition.Model.Video;

type
  TStartLabelDetectionRequest = class;
  
  IStartLabelDetectionRequest = interface
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
    function GetJobTag: string;
    procedure SetJobTag(const Value: string);
    function GetMinConfidence: Double;
    procedure SetMinConfidence(const Value: Double);
    function GetNotificationChannel: TNotificationChannel;
    procedure SetNotificationChannel(const Value: TNotificationChannel);
    function GetKeepNotificationChannel: Boolean;
    procedure SetKeepNotificationChannel(const Value: Boolean);
    function GetVideo: TVideo;
    procedure SetVideo(const Value: TVideo);
    function GetKeepVideo: Boolean;
    procedure SetKeepVideo(const Value: Boolean);
    function Obj: TStartLabelDetectionRequest;
    function IsSetClientRequestToken: Boolean;
    function IsSetJobTag: Boolean;
    function IsSetMinConfidence: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetVideo: Boolean;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property JobTag: string read GetJobTag write SetJobTag;
    property MinConfidence: Double read GetMinConfidence write SetMinConfidence;
    property NotificationChannel: TNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property Video: TVideo read GetVideo write SetVideo;
    property KeepVideo: Boolean read GetKeepVideo write SetKeepVideo;
  end;
  
  TStartLabelDetectionRequest = class(TAmazonRekognitionRequest, IStartLabelDetectionRequest)
  strict private
    FClientRequestToken: Nullable<string>;
    FJobTag: Nullable<string>;
    FMinConfidence: Nullable<Double>;
    FNotificationChannel: TNotificationChannel;
    FKeepNotificationChannel: Boolean;
    FVideo: TVideo;
    FKeepVideo: Boolean;
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
    function GetJobTag: string;
    procedure SetJobTag(const Value: string);
    function GetMinConfidence: Double;
    procedure SetMinConfidence(const Value: Double);
    function GetNotificationChannel: TNotificationChannel;
    procedure SetNotificationChannel(const Value: TNotificationChannel);
    function GetKeepNotificationChannel: Boolean;
    procedure SetKeepNotificationChannel(const Value: Boolean);
    function GetVideo: TVideo;
    procedure SetVideo(const Value: TVideo);
    function GetKeepVideo: Boolean;
    procedure SetKeepVideo(const Value: Boolean);
  strict protected
    function Obj: TStartLabelDetectionRequest;
  public
    destructor Destroy; override;
    function IsSetClientRequestToken: Boolean;
    function IsSetJobTag: Boolean;
    function IsSetMinConfidence: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetVideo: Boolean;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property JobTag: string read GetJobTag write SetJobTag;
    property MinConfidence: Double read GetMinConfidence write SetMinConfidence;
    property NotificationChannel: TNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property Video: TVideo read GetVideo write SetVideo;
    property KeepVideo: Boolean read GetKeepVideo write SetKeepVideo;
  end;
  
implementation

{ TStartLabelDetectionRequest }

destructor TStartLabelDetectionRequest.Destroy;
begin
  Video := nil;
  NotificationChannel := nil;
  inherited;
end;

function TStartLabelDetectionRequest.Obj: TStartLabelDetectionRequest;
begin
  Result := Self;
end;

function TStartLabelDetectionRequest.GetClientRequestToken: string;
begin
  Result := FClientRequestToken.ValueOrDefault;
end;

procedure TStartLabelDetectionRequest.SetClientRequestToken(const Value: string);
begin
  FClientRequestToken := Value;
end;

function TStartLabelDetectionRequest.IsSetClientRequestToken: Boolean;
begin
  Result := FClientRequestToken.HasValue;
end;

function TStartLabelDetectionRequest.GetJobTag: string;
begin
  Result := FJobTag.ValueOrDefault;
end;

procedure TStartLabelDetectionRequest.SetJobTag(const Value: string);
begin
  FJobTag := Value;
end;

function TStartLabelDetectionRequest.IsSetJobTag: Boolean;
begin
  Result := FJobTag.HasValue;
end;

function TStartLabelDetectionRequest.GetMinConfidence: Double;
begin
  Result := FMinConfidence.ValueOrDefault;
end;

procedure TStartLabelDetectionRequest.SetMinConfidence(const Value: Double);
begin
  FMinConfidence := Value;
end;

function TStartLabelDetectionRequest.IsSetMinConfidence: Boolean;
begin
  Result := FMinConfidence.HasValue;
end;

function TStartLabelDetectionRequest.GetNotificationChannel: TNotificationChannel;
begin
  Result := FNotificationChannel;
end;

procedure TStartLabelDetectionRequest.SetNotificationChannel(const Value: TNotificationChannel);
begin
  if FNotificationChannel <> Value then
  begin
    if not KeepNotificationChannel then
      FNotificationChannel.Free;
    FNotificationChannel := Value;
  end;
end;

function TStartLabelDetectionRequest.GetKeepNotificationChannel: Boolean;
begin
  Result := FKeepNotificationChannel;
end;

procedure TStartLabelDetectionRequest.SetKeepNotificationChannel(const Value: Boolean);
begin
  FKeepNotificationChannel := Value;
end;

function TStartLabelDetectionRequest.IsSetNotificationChannel: Boolean;
begin
  Result := FNotificationChannel <> nil;
end;

function TStartLabelDetectionRequest.GetVideo: TVideo;
begin
  Result := FVideo;
end;

procedure TStartLabelDetectionRequest.SetVideo(const Value: TVideo);
begin
  if FVideo <> Value then
  begin
    if not KeepVideo then
      FVideo.Free;
    FVideo := Value;
  end;
end;

function TStartLabelDetectionRequest.GetKeepVideo: Boolean;
begin
  Result := FKeepVideo;
end;

procedure TStartLabelDetectionRequest.SetKeepVideo(const Value: Boolean);
begin
  FKeepVideo := Value;
end;

function TStartLabelDetectionRequest.IsSetVideo: Boolean;
begin
  Result := FVideo <> nil;
end;

end.
