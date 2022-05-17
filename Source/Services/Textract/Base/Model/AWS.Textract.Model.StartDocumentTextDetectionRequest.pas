unit AWS.Textract.Model.StartDocumentTextDetectionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Textract.Model.Request, 
  AWS.Textract.Model.DocumentLocation, 
  AWS.Textract.Model.NotificationChannel, 
  AWS.Textract.Model.OutputConfig;

type
  TStartDocumentTextDetectionRequest = class;
  
  IStartDocumentTextDetectionRequest = interface
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
    function GetDocumentLocation: TDocumentLocation;
    procedure SetDocumentLocation(const Value: TDocumentLocation);
    function GetKeepDocumentLocation: Boolean;
    procedure SetKeepDocumentLocation(const Value: Boolean);
    function GetJobTag: string;
    procedure SetJobTag(const Value: string);
    function GetKMSKeyId: string;
    procedure SetKMSKeyId(const Value: string);
    function GetNotificationChannel: TNotificationChannel;
    procedure SetNotificationChannel(const Value: TNotificationChannel);
    function GetKeepNotificationChannel: Boolean;
    procedure SetKeepNotificationChannel(const Value: Boolean);
    function GetOutputConfig: TOutputConfig;
    procedure SetOutputConfig(const Value: TOutputConfig);
    function GetKeepOutputConfig: Boolean;
    procedure SetKeepOutputConfig(const Value: Boolean);
    function Obj: TStartDocumentTextDetectionRequest;
    function IsSetClientRequestToken: Boolean;
    function IsSetDocumentLocation: Boolean;
    function IsSetJobTag: Boolean;
    function IsSetKMSKeyId: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetOutputConfig: Boolean;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property DocumentLocation: TDocumentLocation read GetDocumentLocation write SetDocumentLocation;
    property KeepDocumentLocation: Boolean read GetKeepDocumentLocation write SetKeepDocumentLocation;
    property JobTag: string read GetJobTag write SetJobTag;
    property KMSKeyId: string read GetKMSKeyId write SetKMSKeyId;
    property NotificationChannel: TNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property OutputConfig: TOutputConfig read GetOutputConfig write SetOutputConfig;
    property KeepOutputConfig: Boolean read GetKeepOutputConfig write SetKeepOutputConfig;
  end;
  
  TStartDocumentTextDetectionRequest = class(TAmazonTextractRequest, IStartDocumentTextDetectionRequest)
  strict private
    FClientRequestToken: Nullable<string>;
    FDocumentLocation: TDocumentLocation;
    FKeepDocumentLocation: Boolean;
    FJobTag: Nullable<string>;
    FKMSKeyId: Nullable<string>;
    FNotificationChannel: TNotificationChannel;
    FKeepNotificationChannel: Boolean;
    FOutputConfig: TOutputConfig;
    FKeepOutputConfig: Boolean;
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
    function GetDocumentLocation: TDocumentLocation;
    procedure SetDocumentLocation(const Value: TDocumentLocation);
    function GetKeepDocumentLocation: Boolean;
    procedure SetKeepDocumentLocation(const Value: Boolean);
    function GetJobTag: string;
    procedure SetJobTag(const Value: string);
    function GetKMSKeyId: string;
    procedure SetKMSKeyId(const Value: string);
    function GetNotificationChannel: TNotificationChannel;
    procedure SetNotificationChannel(const Value: TNotificationChannel);
    function GetKeepNotificationChannel: Boolean;
    procedure SetKeepNotificationChannel(const Value: Boolean);
    function GetOutputConfig: TOutputConfig;
    procedure SetOutputConfig(const Value: TOutputConfig);
    function GetKeepOutputConfig: Boolean;
    procedure SetKeepOutputConfig(const Value: Boolean);
  strict protected
    function Obj: TStartDocumentTextDetectionRequest;
  public
    destructor Destroy; override;
    function IsSetClientRequestToken: Boolean;
    function IsSetDocumentLocation: Boolean;
    function IsSetJobTag: Boolean;
    function IsSetKMSKeyId: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetOutputConfig: Boolean;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property DocumentLocation: TDocumentLocation read GetDocumentLocation write SetDocumentLocation;
    property KeepDocumentLocation: Boolean read GetKeepDocumentLocation write SetKeepDocumentLocation;
    property JobTag: string read GetJobTag write SetJobTag;
    property KMSKeyId: string read GetKMSKeyId write SetKMSKeyId;
    property NotificationChannel: TNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property OutputConfig: TOutputConfig read GetOutputConfig write SetOutputConfig;
    property KeepOutputConfig: Boolean read GetKeepOutputConfig write SetKeepOutputConfig;
  end;
  
implementation

{ TStartDocumentTextDetectionRequest }

destructor TStartDocumentTextDetectionRequest.Destroy;
begin
  OutputConfig := nil;
  NotificationChannel := nil;
  DocumentLocation := nil;
  inherited;
end;

function TStartDocumentTextDetectionRequest.Obj: TStartDocumentTextDetectionRequest;
begin
  Result := Self;
end;

function TStartDocumentTextDetectionRequest.GetClientRequestToken: string;
begin
  Result := FClientRequestToken.ValueOrDefault;
end;

procedure TStartDocumentTextDetectionRequest.SetClientRequestToken(const Value: string);
begin
  FClientRequestToken := Value;
end;

function TStartDocumentTextDetectionRequest.IsSetClientRequestToken: Boolean;
begin
  Result := FClientRequestToken.HasValue;
end;

function TStartDocumentTextDetectionRequest.GetDocumentLocation: TDocumentLocation;
begin
  Result := FDocumentLocation;
end;

procedure TStartDocumentTextDetectionRequest.SetDocumentLocation(const Value: TDocumentLocation);
begin
  if FDocumentLocation <> Value then
  begin
    if not KeepDocumentLocation then
      FDocumentLocation.Free;
    FDocumentLocation := Value;
  end;
end;

function TStartDocumentTextDetectionRequest.GetKeepDocumentLocation: Boolean;
begin
  Result := FKeepDocumentLocation;
end;

procedure TStartDocumentTextDetectionRequest.SetKeepDocumentLocation(const Value: Boolean);
begin
  FKeepDocumentLocation := Value;
end;

function TStartDocumentTextDetectionRequest.IsSetDocumentLocation: Boolean;
begin
  Result := FDocumentLocation <> nil;
end;

function TStartDocumentTextDetectionRequest.GetJobTag: string;
begin
  Result := FJobTag.ValueOrDefault;
end;

procedure TStartDocumentTextDetectionRequest.SetJobTag(const Value: string);
begin
  FJobTag := Value;
end;

function TStartDocumentTextDetectionRequest.IsSetJobTag: Boolean;
begin
  Result := FJobTag.HasValue;
end;

function TStartDocumentTextDetectionRequest.GetKMSKeyId: string;
begin
  Result := FKMSKeyId.ValueOrDefault;
end;

procedure TStartDocumentTextDetectionRequest.SetKMSKeyId(const Value: string);
begin
  FKMSKeyId := Value;
end;

function TStartDocumentTextDetectionRequest.IsSetKMSKeyId: Boolean;
begin
  Result := FKMSKeyId.HasValue;
end;

function TStartDocumentTextDetectionRequest.GetNotificationChannel: TNotificationChannel;
begin
  Result := FNotificationChannel;
end;

procedure TStartDocumentTextDetectionRequest.SetNotificationChannel(const Value: TNotificationChannel);
begin
  if FNotificationChannel <> Value then
  begin
    if not KeepNotificationChannel then
      FNotificationChannel.Free;
    FNotificationChannel := Value;
  end;
end;

function TStartDocumentTextDetectionRequest.GetKeepNotificationChannel: Boolean;
begin
  Result := FKeepNotificationChannel;
end;

procedure TStartDocumentTextDetectionRequest.SetKeepNotificationChannel(const Value: Boolean);
begin
  FKeepNotificationChannel := Value;
end;

function TStartDocumentTextDetectionRequest.IsSetNotificationChannel: Boolean;
begin
  Result := FNotificationChannel <> nil;
end;

function TStartDocumentTextDetectionRequest.GetOutputConfig: TOutputConfig;
begin
  Result := FOutputConfig;
end;

procedure TStartDocumentTextDetectionRequest.SetOutputConfig(const Value: TOutputConfig);
begin
  if FOutputConfig <> Value then
  begin
    if not KeepOutputConfig then
      FOutputConfig.Free;
    FOutputConfig := Value;
  end;
end;

function TStartDocumentTextDetectionRequest.GetKeepOutputConfig: Boolean;
begin
  Result := FKeepOutputConfig;
end;

procedure TStartDocumentTextDetectionRequest.SetKeepOutputConfig(const Value: Boolean);
begin
  FKeepOutputConfig := Value;
end;

function TStartDocumentTextDetectionRequest.IsSetOutputConfig: Boolean;
begin
  Result := FOutputConfig <> nil;
end;

end.
