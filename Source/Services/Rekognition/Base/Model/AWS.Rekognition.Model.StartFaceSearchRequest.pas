unit AWS.Rekognition.Model.StartFaceSearchRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.NotificationChannel, 
  AWS.Rekognition.Model.Video;

type
  TStartFaceSearchRequest = class;
  
  IStartFaceSearchRequest = interface
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function GetFaceMatchThreshold: Double;
    procedure SetFaceMatchThreshold(const Value: Double);
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
    function Obj: TStartFaceSearchRequest;
    function IsSetClientRequestToken: Boolean;
    function IsSetCollectionId: Boolean;
    function IsSetFaceMatchThreshold: Boolean;
    function IsSetJobTag: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetVideo: Boolean;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property CollectionId: string read GetCollectionId write SetCollectionId;
    property FaceMatchThreshold: Double read GetFaceMatchThreshold write SetFaceMatchThreshold;
    property JobTag: string read GetJobTag write SetJobTag;
    property NotificationChannel: TNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property Video: TVideo read GetVideo write SetVideo;
    property KeepVideo: Boolean read GetKeepVideo write SetKeepVideo;
  end;
  
  TStartFaceSearchRequest = class(TAmazonRekognitionRequest, IStartFaceSearchRequest)
  strict private
    FClientRequestToken: Nullable<string>;
    FCollectionId: Nullable<string>;
    FFaceMatchThreshold: Nullable<Double>;
    FJobTag: Nullable<string>;
    FNotificationChannel: TNotificationChannel;
    FKeepNotificationChannel: Boolean;
    FVideo: TVideo;
    FKeepVideo: Boolean;
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function GetFaceMatchThreshold: Double;
    procedure SetFaceMatchThreshold(const Value: Double);
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
    function Obj: TStartFaceSearchRequest;
  public
    destructor Destroy; override;
    function IsSetClientRequestToken: Boolean;
    function IsSetCollectionId: Boolean;
    function IsSetFaceMatchThreshold: Boolean;
    function IsSetJobTag: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetVideo: Boolean;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property CollectionId: string read GetCollectionId write SetCollectionId;
    property FaceMatchThreshold: Double read GetFaceMatchThreshold write SetFaceMatchThreshold;
    property JobTag: string read GetJobTag write SetJobTag;
    property NotificationChannel: TNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property Video: TVideo read GetVideo write SetVideo;
    property KeepVideo: Boolean read GetKeepVideo write SetKeepVideo;
  end;
  
implementation

{ TStartFaceSearchRequest }

destructor TStartFaceSearchRequest.Destroy;
begin
  Video := nil;
  NotificationChannel := nil;
  inherited;
end;

function TStartFaceSearchRequest.Obj: TStartFaceSearchRequest;
begin
  Result := Self;
end;

function TStartFaceSearchRequest.GetClientRequestToken: string;
begin
  Result := FClientRequestToken.ValueOrDefault;
end;

procedure TStartFaceSearchRequest.SetClientRequestToken(const Value: string);
begin
  FClientRequestToken := Value;
end;

function TStartFaceSearchRequest.IsSetClientRequestToken: Boolean;
begin
  Result := FClientRequestToken.HasValue;
end;

function TStartFaceSearchRequest.GetCollectionId: string;
begin
  Result := FCollectionId.ValueOrDefault;
end;

procedure TStartFaceSearchRequest.SetCollectionId(const Value: string);
begin
  FCollectionId := Value;
end;

function TStartFaceSearchRequest.IsSetCollectionId: Boolean;
begin
  Result := FCollectionId.HasValue;
end;

function TStartFaceSearchRequest.GetFaceMatchThreshold: Double;
begin
  Result := FFaceMatchThreshold.ValueOrDefault;
end;

procedure TStartFaceSearchRequest.SetFaceMatchThreshold(const Value: Double);
begin
  FFaceMatchThreshold := Value;
end;

function TStartFaceSearchRequest.IsSetFaceMatchThreshold: Boolean;
begin
  Result := FFaceMatchThreshold.HasValue;
end;

function TStartFaceSearchRequest.GetJobTag: string;
begin
  Result := FJobTag.ValueOrDefault;
end;

procedure TStartFaceSearchRequest.SetJobTag(const Value: string);
begin
  FJobTag := Value;
end;

function TStartFaceSearchRequest.IsSetJobTag: Boolean;
begin
  Result := FJobTag.HasValue;
end;

function TStartFaceSearchRequest.GetNotificationChannel: TNotificationChannel;
begin
  Result := FNotificationChannel;
end;

procedure TStartFaceSearchRequest.SetNotificationChannel(const Value: TNotificationChannel);
begin
  if FNotificationChannel <> Value then
  begin
    if not KeepNotificationChannel then
      FNotificationChannel.Free;
    FNotificationChannel := Value;
  end;
end;

function TStartFaceSearchRequest.GetKeepNotificationChannel: Boolean;
begin
  Result := FKeepNotificationChannel;
end;

procedure TStartFaceSearchRequest.SetKeepNotificationChannel(const Value: Boolean);
begin
  FKeepNotificationChannel := Value;
end;

function TStartFaceSearchRequest.IsSetNotificationChannel: Boolean;
begin
  Result := FNotificationChannel <> nil;
end;

function TStartFaceSearchRequest.GetVideo: TVideo;
begin
  Result := FVideo;
end;

procedure TStartFaceSearchRequest.SetVideo(const Value: TVideo);
begin
  if FVideo <> Value then
  begin
    if not KeepVideo then
      FVideo.Free;
    FVideo := Value;
  end;
end;

function TStartFaceSearchRequest.GetKeepVideo: Boolean;
begin
  Result := FKeepVideo;
end;

procedure TStartFaceSearchRequest.SetKeepVideo(const Value: Boolean);
begin
  FKeepVideo := Value;
end;

function TStartFaceSearchRequest.IsSetVideo: Boolean;
begin
  Result := FVideo <> nil;
end;

end.
