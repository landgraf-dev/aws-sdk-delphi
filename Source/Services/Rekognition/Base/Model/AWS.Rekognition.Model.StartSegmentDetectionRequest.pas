unit AWS.Rekognition.Model.StartSegmentDetectionRequest;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.Request, 
  AWS.Nullable, 
  AWS.Rekognition.Model.StartSegmentDetectionFilters, 
  AWS.Rekognition.Model.NotificationChannel, 
  AWS.Rekognition.Model.Video;

type
  TStartSegmentDetectionRequest = class;
  
  IStartSegmentDetectionRequest = interface
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
    function GetFilters: TStartSegmentDetectionFilters;
    procedure SetFilters(const Value: TStartSegmentDetectionFilters);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetJobTag: string;
    procedure SetJobTag(const Value: string);
    function GetNotificationChannel: TNotificationChannel;
    procedure SetNotificationChannel(const Value: TNotificationChannel);
    function GetKeepNotificationChannel: Boolean;
    procedure SetKeepNotificationChannel(const Value: Boolean);
    function GetSegmentTypes: TList<string>;
    procedure SetSegmentTypes(const Value: TList<string>);
    function GetKeepSegmentTypes: Boolean;
    procedure SetKeepSegmentTypes(const Value: Boolean);
    function GetVideo: TVideo;
    procedure SetVideo(const Value: TVideo);
    function GetKeepVideo: Boolean;
    procedure SetKeepVideo(const Value: Boolean);
    function Obj: TStartSegmentDetectionRequest;
    function IsSetClientRequestToken: Boolean;
    function IsSetFilters: Boolean;
    function IsSetJobTag: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetSegmentTypes: Boolean;
    function IsSetVideo: Boolean;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property Filters: TStartSegmentDetectionFilters read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property JobTag: string read GetJobTag write SetJobTag;
    property NotificationChannel: TNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property SegmentTypes: TList<string> read GetSegmentTypes write SetSegmentTypes;
    property KeepSegmentTypes: Boolean read GetKeepSegmentTypes write SetKeepSegmentTypes;
    property Video: TVideo read GetVideo write SetVideo;
    property KeepVideo: Boolean read GetKeepVideo write SetKeepVideo;
  end;
  
  TStartSegmentDetectionRequest = class(TAmazonRekognitionRequest, IStartSegmentDetectionRequest)
  strict private
    FClientRequestToken: Nullable<string>;
    FFilters: TStartSegmentDetectionFilters;
    FKeepFilters: Boolean;
    FJobTag: Nullable<string>;
    FNotificationChannel: TNotificationChannel;
    FKeepNotificationChannel: Boolean;
    FSegmentTypes: TList<string>;
    FKeepSegmentTypes: Boolean;
    FVideo: TVideo;
    FKeepVideo: Boolean;
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
    function GetFilters: TStartSegmentDetectionFilters;
    procedure SetFilters(const Value: TStartSegmentDetectionFilters);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetJobTag: string;
    procedure SetJobTag(const Value: string);
    function GetNotificationChannel: TNotificationChannel;
    procedure SetNotificationChannel(const Value: TNotificationChannel);
    function GetKeepNotificationChannel: Boolean;
    procedure SetKeepNotificationChannel(const Value: Boolean);
    function GetSegmentTypes: TList<string>;
    procedure SetSegmentTypes(const Value: TList<string>);
    function GetKeepSegmentTypes: Boolean;
    procedure SetKeepSegmentTypes(const Value: Boolean);
    function GetVideo: TVideo;
    procedure SetVideo(const Value: TVideo);
    function GetKeepVideo: Boolean;
    procedure SetKeepVideo(const Value: Boolean);
  strict protected
    function Obj: TStartSegmentDetectionRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetClientRequestToken: Boolean;
    function IsSetFilters: Boolean;
    function IsSetJobTag: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetSegmentTypes: Boolean;
    function IsSetVideo: Boolean;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property Filters: TStartSegmentDetectionFilters read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property JobTag: string read GetJobTag write SetJobTag;
    property NotificationChannel: TNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property SegmentTypes: TList<string> read GetSegmentTypes write SetSegmentTypes;
    property KeepSegmentTypes: Boolean read GetKeepSegmentTypes write SetKeepSegmentTypes;
    property Video: TVideo read GetVideo write SetVideo;
    property KeepVideo: Boolean read GetKeepVideo write SetKeepVideo;
  end;
  
implementation

{ TStartSegmentDetectionRequest }

constructor TStartSegmentDetectionRequest.Create;
begin
  inherited;
  FSegmentTypes := TList<string>.Create;
end;

destructor TStartSegmentDetectionRequest.Destroy;
begin
  Video := nil;
  SegmentTypes := nil;
  NotificationChannel := nil;
  Filters := nil;
  inherited;
end;

function TStartSegmentDetectionRequest.Obj: TStartSegmentDetectionRequest;
begin
  Result := Self;
end;

function TStartSegmentDetectionRequest.GetClientRequestToken: string;
begin
  Result := FClientRequestToken.ValueOrDefault;
end;

procedure TStartSegmentDetectionRequest.SetClientRequestToken(const Value: string);
begin
  FClientRequestToken := Value;
end;

function TStartSegmentDetectionRequest.IsSetClientRequestToken: Boolean;
begin
  Result := FClientRequestToken.HasValue;
end;

function TStartSegmentDetectionRequest.GetFilters: TStartSegmentDetectionFilters;
begin
  Result := FFilters;
end;

procedure TStartSegmentDetectionRequest.SetFilters(const Value: TStartSegmentDetectionFilters);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TStartSegmentDetectionRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TStartSegmentDetectionRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TStartSegmentDetectionRequest.IsSetFilters: Boolean;
begin
  Result := FFilters <> nil;
end;

function TStartSegmentDetectionRequest.GetJobTag: string;
begin
  Result := FJobTag.ValueOrDefault;
end;

procedure TStartSegmentDetectionRequest.SetJobTag(const Value: string);
begin
  FJobTag := Value;
end;

function TStartSegmentDetectionRequest.IsSetJobTag: Boolean;
begin
  Result := FJobTag.HasValue;
end;

function TStartSegmentDetectionRequest.GetNotificationChannel: TNotificationChannel;
begin
  Result := FNotificationChannel;
end;

procedure TStartSegmentDetectionRequest.SetNotificationChannel(const Value: TNotificationChannel);
begin
  if FNotificationChannel <> Value then
  begin
    if not KeepNotificationChannel then
      FNotificationChannel.Free;
    FNotificationChannel := Value;
  end;
end;

function TStartSegmentDetectionRequest.GetKeepNotificationChannel: Boolean;
begin
  Result := FKeepNotificationChannel;
end;

procedure TStartSegmentDetectionRequest.SetKeepNotificationChannel(const Value: Boolean);
begin
  FKeepNotificationChannel := Value;
end;

function TStartSegmentDetectionRequest.IsSetNotificationChannel: Boolean;
begin
  Result := FNotificationChannel <> nil;
end;

function TStartSegmentDetectionRequest.GetSegmentTypes: TList<string>;
begin
  Result := FSegmentTypes;
end;

procedure TStartSegmentDetectionRequest.SetSegmentTypes(const Value: TList<string>);
begin
  if FSegmentTypes <> Value then
  begin
    if not KeepSegmentTypes then
      FSegmentTypes.Free;
    FSegmentTypes := Value;
  end;
end;

function TStartSegmentDetectionRequest.GetKeepSegmentTypes: Boolean;
begin
  Result := FKeepSegmentTypes;
end;

procedure TStartSegmentDetectionRequest.SetKeepSegmentTypes(const Value: Boolean);
begin
  FKeepSegmentTypes := Value;
end;

function TStartSegmentDetectionRequest.IsSetSegmentTypes: Boolean;
begin
  Result := (FSegmentTypes <> nil) and (FSegmentTypes.Count > 0);
end;

function TStartSegmentDetectionRequest.GetVideo: TVideo;
begin
  Result := FVideo;
end;

procedure TStartSegmentDetectionRequest.SetVideo(const Value: TVideo);
begin
  if FVideo <> Value then
  begin
    if not KeepVideo then
      FVideo.Free;
    FVideo := Value;
  end;
end;

function TStartSegmentDetectionRequest.GetKeepVideo: Boolean;
begin
  Result := FKeepVideo;
end;

procedure TStartSegmentDetectionRequest.SetKeepVideo(const Value: Boolean);
begin
  FKeepVideo := Value;
end;

function TStartSegmentDetectionRequest.IsSetVideo: Boolean;
begin
  Result := FVideo <> nil;
end;

end.
