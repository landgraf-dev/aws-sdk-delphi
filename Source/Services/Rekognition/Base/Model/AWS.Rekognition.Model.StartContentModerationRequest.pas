unit AWS.Rekognition.Model.StartContentModerationRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable, 
  AWS.Rekognition.Model.NotificationChannel, 
  AWS.Rekognition.Model.Video;

type
  TStartContentModerationRequest = class;
  
  IStartContentModerationRequest = interface
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
    function Obj: TStartContentModerationRequest;
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
  
  TStartContentModerationRequest = class(TAmazonRekognitionRequest, IStartContentModerationRequest)
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
    function Obj: TStartContentModerationRequest;
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

{ TStartContentModerationRequest }

destructor TStartContentModerationRequest.Destroy;
begin
  Video := nil;
  NotificationChannel := nil;
  inherited;
end;

function TStartContentModerationRequest.Obj: TStartContentModerationRequest;
begin
  Result := Self;
end;

function TStartContentModerationRequest.GetClientRequestToken: string;
begin
  Result := FClientRequestToken.ValueOrDefault;
end;

procedure TStartContentModerationRequest.SetClientRequestToken(const Value: string);
begin
  FClientRequestToken := Value;
end;

function TStartContentModerationRequest.IsSetClientRequestToken: Boolean;
begin
  Result := FClientRequestToken.HasValue;
end;

function TStartContentModerationRequest.GetJobTag: string;
begin
  Result := FJobTag.ValueOrDefault;
end;

procedure TStartContentModerationRequest.SetJobTag(const Value: string);
begin
  FJobTag := Value;
end;

function TStartContentModerationRequest.IsSetJobTag: Boolean;
begin
  Result := FJobTag.HasValue;
end;

function TStartContentModerationRequest.GetMinConfidence: Double;
begin
  Result := FMinConfidence.ValueOrDefault;
end;

procedure TStartContentModerationRequest.SetMinConfidence(const Value: Double);
begin
  FMinConfidence := Value;
end;

function TStartContentModerationRequest.IsSetMinConfidence: Boolean;
begin
  Result := FMinConfidence.HasValue;
end;

function TStartContentModerationRequest.GetNotificationChannel: TNotificationChannel;
begin
  Result := FNotificationChannel;
end;

procedure TStartContentModerationRequest.SetNotificationChannel(const Value: TNotificationChannel);
begin
  if FNotificationChannel <> Value then
  begin
    if not KeepNotificationChannel then
      FNotificationChannel.Free;
    FNotificationChannel := Value;
  end;
end;

function TStartContentModerationRequest.GetKeepNotificationChannel: Boolean;
begin
  Result := FKeepNotificationChannel;
end;

procedure TStartContentModerationRequest.SetKeepNotificationChannel(const Value: Boolean);
begin
  FKeepNotificationChannel := Value;
end;

function TStartContentModerationRequest.IsSetNotificationChannel: Boolean;
begin
  Result := FNotificationChannel <> nil;
end;

function TStartContentModerationRequest.GetVideo: TVideo;
begin
  Result := FVideo;
end;

procedure TStartContentModerationRequest.SetVideo(const Value: TVideo);
begin
  if FVideo <> Value then
  begin
    if not KeepVideo then
      FVideo.Free;
    FVideo := Value;
  end;
end;

function TStartContentModerationRequest.GetKeepVideo: Boolean;
begin
  Result := FKeepVideo;
end;

procedure TStartContentModerationRequest.SetKeepVideo(const Value: Boolean);
begin
  FKeepVideo := Value;
end;

function TStartContentModerationRequest.IsSetVideo: Boolean;
begin
  Result := FVideo <> nil;
end;

end.
