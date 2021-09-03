unit AWS.Rekognition.Model.StartTextDetectionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.StartTextDetectionFilters, 
  AWS.Rekognition.Model.NotificationChannel, 
  AWS.Rekognition.Model.Video;

type
  TStartTextDetectionRequest = class;
  
  IStartTextDetectionRequest = interface
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
    function GetFilters: TStartTextDetectionFilters;
    procedure SetFilters(const Value: TStartTextDetectionFilters);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
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
    function Obj: TStartTextDetectionRequest;
    function IsSetClientRequestToken: Boolean;
    function IsSetFilters: Boolean;
    function IsSetJobTag: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetVideo: Boolean;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property Filters: TStartTextDetectionFilters read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property JobTag: string read GetJobTag write SetJobTag;
    property NotificationChannel: TNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property Video: TVideo read GetVideo write SetVideo;
    property KeepVideo: Boolean read GetKeepVideo write SetKeepVideo;
  end;
  
  TStartTextDetectionRequest = class(TAmazonRekognitionRequest, IStartTextDetectionRequest)
  strict private
    FClientRequestToken: Nullable<string>;
    FFilters: TStartTextDetectionFilters;
    FKeepFilters: Boolean;
    FJobTag: Nullable<string>;
    FNotificationChannel: TNotificationChannel;
    FKeepNotificationChannel: Boolean;
    FVideo: TVideo;
    FKeepVideo: Boolean;
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
    function GetFilters: TStartTextDetectionFilters;
    procedure SetFilters(const Value: TStartTextDetectionFilters);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
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
    function Obj: TStartTextDetectionRequest;
  public
    destructor Destroy; override;
    function IsSetClientRequestToken: Boolean;
    function IsSetFilters: Boolean;
    function IsSetJobTag: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetVideo: Boolean;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property Filters: TStartTextDetectionFilters read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property JobTag: string read GetJobTag write SetJobTag;
    property NotificationChannel: TNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property Video: TVideo read GetVideo write SetVideo;
    property KeepVideo: Boolean read GetKeepVideo write SetKeepVideo;
  end;
  
implementation

{ TStartTextDetectionRequest }

destructor TStartTextDetectionRequest.Destroy;
begin
  Video := nil;
  NotificationChannel := nil;
  Filters := nil;
  inherited;
end;

function TStartTextDetectionRequest.Obj: TStartTextDetectionRequest;
begin
  Result := Self;
end;

function TStartTextDetectionRequest.GetClientRequestToken: string;
begin
  Result := FClientRequestToken.ValueOrDefault;
end;

procedure TStartTextDetectionRequest.SetClientRequestToken(const Value: string);
begin
  FClientRequestToken := Value;
end;

function TStartTextDetectionRequest.IsSetClientRequestToken: Boolean;
begin
  Result := FClientRequestToken.HasValue;
end;

function TStartTextDetectionRequest.GetFilters: TStartTextDetectionFilters;
begin
  Result := FFilters;
end;

procedure TStartTextDetectionRequest.SetFilters(const Value: TStartTextDetectionFilters);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TStartTextDetectionRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TStartTextDetectionRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TStartTextDetectionRequest.IsSetFilters: Boolean;
begin
  Result := FFilters <> nil;
end;

function TStartTextDetectionRequest.GetJobTag: string;
begin
  Result := FJobTag.ValueOrDefault;
end;

procedure TStartTextDetectionRequest.SetJobTag(const Value: string);
begin
  FJobTag := Value;
end;

function TStartTextDetectionRequest.IsSetJobTag: Boolean;
begin
  Result := FJobTag.HasValue;
end;

function TStartTextDetectionRequest.GetNotificationChannel: TNotificationChannel;
begin
  Result := FNotificationChannel;
end;

procedure TStartTextDetectionRequest.SetNotificationChannel(const Value: TNotificationChannel);
begin
  if FNotificationChannel <> Value then
  begin
    if not KeepNotificationChannel then
      FNotificationChannel.Free;
    FNotificationChannel := Value;
  end;
end;

function TStartTextDetectionRequest.GetKeepNotificationChannel: Boolean;
begin
  Result := FKeepNotificationChannel;
end;

procedure TStartTextDetectionRequest.SetKeepNotificationChannel(const Value: Boolean);
begin
  FKeepNotificationChannel := Value;
end;

function TStartTextDetectionRequest.IsSetNotificationChannel: Boolean;
begin
  Result := FNotificationChannel <> nil;
end;

function TStartTextDetectionRequest.GetVideo: TVideo;
begin
  Result := FVideo;
end;

procedure TStartTextDetectionRequest.SetVideo(const Value: TVideo);
begin
  if FVideo <> Value then
  begin
    if not KeepVideo then
      FVideo.Free;
    FVideo := Value;
  end;
end;

function TStartTextDetectionRequest.GetKeepVideo: Boolean;
begin
  Result := FKeepVideo;
end;

procedure TStartTextDetectionRequest.SetKeepVideo(const Value: Boolean);
begin
  FKeepVideo := Value;
end;

function TStartTextDetectionRequest.IsSetVideo: Boolean;
begin
  Result := FVideo <> nil;
end;

end.
