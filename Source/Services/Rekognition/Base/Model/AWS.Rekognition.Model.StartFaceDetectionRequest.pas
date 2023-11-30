unit AWS.Rekognition.Model.StartFaceDetectionRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable, 
  AWS.Rekognition.Enums, 
  AWS.Rekognition.Model.NotificationChannel, 
  AWS.Rekognition.Model.Video;

type
  TStartFaceDetectionRequest = class;
  
  IStartFaceDetectionRequest = interface
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
    function GetFaceAttributes: TFaceAttributes;
    procedure SetFaceAttributes(const Value: TFaceAttributes);
    function GetJobTag: string;
    procedure SetJobTag(const Value: string);
    function GetNotificationChannel: TNotificationChannel;
    procedure SetNotificationChannel(const Value: TNotificationChannel);
    function GetKeepNotificationChannel: Boolean;
    procedure SetKeepNotificationChannel(const Value: Boolean);
    function GetVideo: TVideo;
    procedure SetVideo(const Value: TVideo);
    function GetKeepVideo: Boolean;
    procedure SetKeepVideo(const Value: Boolean);
    function Obj: TStartFaceDetectionRequest;
    function IsSetClientRequestToken: Boolean;
    function IsSetFaceAttributes: Boolean;
    function IsSetJobTag: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetVideo: Boolean;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property FaceAttributes: TFaceAttributes read GetFaceAttributes write SetFaceAttributes;
    property JobTag: string read GetJobTag write SetJobTag;
    property NotificationChannel: TNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property Video: TVideo read GetVideo write SetVideo;
    property KeepVideo: Boolean read GetKeepVideo write SetKeepVideo;
  end;
  
  TStartFaceDetectionRequest = class(TAmazonRekognitionRequest, IStartFaceDetectionRequest)
  strict private
    FClientRequestToken: Nullable<string>;
    FFaceAttributes: Nullable<TFaceAttributes>;
    FJobTag: Nullable<string>;
    FNotificationChannel: TNotificationChannel;
    FKeepNotificationChannel: Boolean;
    FVideo: TVideo;
    FKeepVideo: Boolean;
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
    function GetFaceAttributes: TFaceAttributes;
    procedure SetFaceAttributes(const Value: TFaceAttributes);
    function GetJobTag: string;
    procedure SetJobTag(const Value: string);
    function GetNotificationChannel: TNotificationChannel;
    procedure SetNotificationChannel(const Value: TNotificationChannel);
    function GetKeepNotificationChannel: Boolean;
    procedure SetKeepNotificationChannel(const Value: Boolean);
    function GetVideo: TVideo;
    procedure SetVideo(const Value: TVideo);
    function GetKeepVideo: Boolean;
    procedure SetKeepVideo(const Value: Boolean);
  strict protected
    function Obj: TStartFaceDetectionRequest;
  public
    destructor Destroy; override;
    function IsSetClientRequestToken: Boolean;
    function IsSetFaceAttributes: Boolean;
    function IsSetJobTag: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetVideo: Boolean;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property FaceAttributes: TFaceAttributes read GetFaceAttributes write SetFaceAttributes;
    property JobTag: string read GetJobTag write SetJobTag;
    property NotificationChannel: TNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property Video: TVideo read GetVideo write SetVideo;
    property KeepVideo: Boolean read GetKeepVideo write SetKeepVideo;
  end;
  
implementation

{ TStartFaceDetectionRequest }

destructor TStartFaceDetectionRequest.Destroy;
begin
  Video := nil;
  NotificationChannel := nil;
  inherited;
end;

function TStartFaceDetectionRequest.Obj: TStartFaceDetectionRequest;
begin
  Result := Self;
end;

function TStartFaceDetectionRequest.GetClientRequestToken: string;
begin
  Result := FClientRequestToken.ValueOrDefault;
end;

procedure TStartFaceDetectionRequest.SetClientRequestToken(const Value: string);
begin
  FClientRequestToken := Value;
end;

function TStartFaceDetectionRequest.IsSetClientRequestToken: Boolean;
begin
  Result := FClientRequestToken.HasValue;
end;

function TStartFaceDetectionRequest.GetFaceAttributes: TFaceAttributes;
begin
  Result := FFaceAttributes.ValueOrDefault;
end;

procedure TStartFaceDetectionRequest.SetFaceAttributes(const Value: TFaceAttributes);
begin
  FFaceAttributes := Value;
end;

function TStartFaceDetectionRequest.IsSetFaceAttributes: Boolean;
begin
  Result := FFaceAttributes.HasValue;
end;

function TStartFaceDetectionRequest.GetJobTag: string;
begin
  Result := FJobTag.ValueOrDefault;
end;

procedure TStartFaceDetectionRequest.SetJobTag(const Value: string);
begin
  FJobTag := Value;
end;

function TStartFaceDetectionRequest.IsSetJobTag: Boolean;
begin
  Result := FJobTag.HasValue;
end;

function TStartFaceDetectionRequest.GetNotificationChannel: TNotificationChannel;
begin
  Result := FNotificationChannel;
end;

procedure TStartFaceDetectionRequest.SetNotificationChannel(const Value: TNotificationChannel);
begin
  if FNotificationChannel <> Value then
  begin
    if not KeepNotificationChannel then
      FNotificationChannel.Free;
    FNotificationChannel := Value;
  end;
end;

function TStartFaceDetectionRequest.GetKeepNotificationChannel: Boolean;
begin
  Result := FKeepNotificationChannel;
end;

procedure TStartFaceDetectionRequest.SetKeepNotificationChannel(const Value: Boolean);
begin
  FKeepNotificationChannel := Value;
end;

function TStartFaceDetectionRequest.IsSetNotificationChannel: Boolean;
begin
  Result := FNotificationChannel <> nil;
end;

function TStartFaceDetectionRequest.GetVideo: TVideo;
begin
  Result := FVideo;
end;

procedure TStartFaceDetectionRequest.SetVideo(const Value: TVideo);
begin
  if FVideo <> Value then
  begin
    if not KeepVideo then
      FVideo.Free;
    FVideo := Value;
  end;
end;

function TStartFaceDetectionRequest.GetKeepVideo: Boolean;
begin
  Result := FKeepVideo;
end;

procedure TStartFaceDetectionRequest.SetKeepVideo(const Value: Boolean);
begin
  FKeepVideo := Value;
end;

function TStartFaceDetectionRequest.IsSetVideo: Boolean;
begin
  Result := FVideo <> nil;
end;

end.
