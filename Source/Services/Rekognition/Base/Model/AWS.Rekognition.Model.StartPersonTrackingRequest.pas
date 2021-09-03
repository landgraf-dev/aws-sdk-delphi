unit AWS.Rekognition.Model.StartPersonTrackingRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.NotificationChannel, 
  AWS.Rekognition.Model.Video;

type
  TStartPersonTrackingRequest = class;
  
  IStartPersonTrackingRequest = interface
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
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
    function Obj: TStartPersonTrackingRequest;
    function IsSetClientRequestToken: Boolean;
    function IsSetJobTag: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetVideo: Boolean;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property JobTag: string read GetJobTag write SetJobTag;
    property NotificationChannel: TNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property Video: TVideo read GetVideo write SetVideo;
    property KeepVideo: Boolean read GetKeepVideo write SetKeepVideo;
  end;
  
  TStartPersonTrackingRequest = class(TAmazonRekognitionRequest, IStartPersonTrackingRequest)
  strict private
    FClientRequestToken: Nullable<string>;
    FJobTag: Nullable<string>;
    FNotificationChannel: TNotificationChannel;
    FKeepNotificationChannel: Boolean;
    FVideo: TVideo;
    FKeepVideo: Boolean;
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
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
    function Obj: TStartPersonTrackingRequest;
  public
    destructor Destroy; override;
    function IsSetClientRequestToken: Boolean;
    function IsSetJobTag: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetVideo: Boolean;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property JobTag: string read GetJobTag write SetJobTag;
    property NotificationChannel: TNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property Video: TVideo read GetVideo write SetVideo;
    property KeepVideo: Boolean read GetKeepVideo write SetKeepVideo;
  end;
  
implementation

{ TStartPersonTrackingRequest }

destructor TStartPersonTrackingRequest.Destroy;
begin
  Video := nil;
  NotificationChannel := nil;
  inherited;
end;

function TStartPersonTrackingRequest.Obj: TStartPersonTrackingRequest;
begin
  Result := Self;
end;

function TStartPersonTrackingRequest.GetClientRequestToken: string;
begin
  Result := FClientRequestToken.ValueOrDefault;
end;

procedure TStartPersonTrackingRequest.SetClientRequestToken(const Value: string);
begin
  FClientRequestToken := Value;
end;

function TStartPersonTrackingRequest.IsSetClientRequestToken: Boolean;
begin
  Result := FClientRequestToken.HasValue;
end;

function TStartPersonTrackingRequest.GetJobTag: string;
begin
  Result := FJobTag.ValueOrDefault;
end;

procedure TStartPersonTrackingRequest.SetJobTag(const Value: string);
begin
  FJobTag := Value;
end;

function TStartPersonTrackingRequest.IsSetJobTag: Boolean;
begin
  Result := FJobTag.HasValue;
end;

function TStartPersonTrackingRequest.GetNotificationChannel: TNotificationChannel;
begin
  Result := FNotificationChannel;
end;

procedure TStartPersonTrackingRequest.SetNotificationChannel(const Value: TNotificationChannel);
begin
  if FNotificationChannel <> Value then
  begin
    if not KeepNotificationChannel then
      FNotificationChannel.Free;
    FNotificationChannel := Value;
  end;
end;

function TStartPersonTrackingRequest.GetKeepNotificationChannel: Boolean;
begin
  Result := FKeepNotificationChannel;
end;

procedure TStartPersonTrackingRequest.SetKeepNotificationChannel(const Value: Boolean);
begin
  FKeepNotificationChannel := Value;
end;

function TStartPersonTrackingRequest.IsSetNotificationChannel: Boolean;
begin
  Result := FNotificationChannel <> nil;
end;

function TStartPersonTrackingRequest.GetVideo: TVideo;
begin
  Result := FVideo;
end;

procedure TStartPersonTrackingRequest.SetVideo(const Value: TVideo);
begin
  if FVideo <> Value then
  begin
    if not KeepVideo then
      FVideo.Free;
    FVideo := Value;
  end;
end;

function TStartPersonTrackingRequest.GetKeepVideo: Boolean;
begin
  Result := FKeepVideo;
end;

procedure TStartPersonTrackingRequest.SetKeepVideo(const Value: Boolean);
begin
  FKeepVideo := Value;
end;

function TStartPersonTrackingRequest.IsSetVideo: Boolean;
begin
  Result := FVideo <> nil;
end;

end.
