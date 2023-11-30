unit AWS.Textract.Model.StartDocumentAnalysisRequest;

interface

uses
  System.Generics.Collections, 
  AWS.Textract.Model.Request, 
  AWS.Nullable, 
  AWS.Textract.Model.DocumentLocation, 
  AWS.Textract.Model.NotificationChannel, 
  AWS.Textract.Model.OutputConfig, 
  AWS.Textract.Model.QueriesConfig;

type
  TStartDocumentAnalysisRequest = class;
  
  IStartDocumentAnalysisRequest = interface
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
    function GetDocumentLocation: TDocumentLocation;
    procedure SetDocumentLocation(const Value: TDocumentLocation);
    function GetKeepDocumentLocation: Boolean;
    procedure SetKeepDocumentLocation(const Value: Boolean);
    function GetFeatureTypes: TList<string>;
    procedure SetFeatureTypes(const Value: TList<string>);
    function GetKeepFeatureTypes: Boolean;
    procedure SetKeepFeatureTypes(const Value: Boolean);
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
    function GetQueriesConfig: TQueriesConfig;
    procedure SetQueriesConfig(const Value: TQueriesConfig);
    function GetKeepQueriesConfig: Boolean;
    procedure SetKeepQueriesConfig(const Value: Boolean);
    function Obj: TStartDocumentAnalysisRequest;
    function IsSetClientRequestToken: Boolean;
    function IsSetDocumentLocation: Boolean;
    function IsSetFeatureTypes: Boolean;
    function IsSetJobTag: Boolean;
    function IsSetKMSKeyId: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetOutputConfig: Boolean;
    function IsSetQueriesConfig: Boolean;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property DocumentLocation: TDocumentLocation read GetDocumentLocation write SetDocumentLocation;
    property KeepDocumentLocation: Boolean read GetKeepDocumentLocation write SetKeepDocumentLocation;
    property FeatureTypes: TList<string> read GetFeatureTypes write SetFeatureTypes;
    property KeepFeatureTypes: Boolean read GetKeepFeatureTypes write SetKeepFeatureTypes;
    property JobTag: string read GetJobTag write SetJobTag;
    property KMSKeyId: string read GetKMSKeyId write SetKMSKeyId;
    property NotificationChannel: TNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property OutputConfig: TOutputConfig read GetOutputConfig write SetOutputConfig;
    property KeepOutputConfig: Boolean read GetKeepOutputConfig write SetKeepOutputConfig;
    property QueriesConfig: TQueriesConfig read GetQueriesConfig write SetQueriesConfig;
    property KeepQueriesConfig: Boolean read GetKeepQueriesConfig write SetKeepQueriesConfig;
  end;
  
  TStartDocumentAnalysisRequest = class(TAmazonTextractRequest, IStartDocumentAnalysisRequest)
  strict private
    FClientRequestToken: Nullable<string>;
    FDocumentLocation: TDocumentLocation;
    FKeepDocumentLocation: Boolean;
    FFeatureTypes: TList<string>;
    FKeepFeatureTypes: Boolean;
    FJobTag: Nullable<string>;
    FKMSKeyId: Nullable<string>;
    FNotificationChannel: TNotificationChannel;
    FKeepNotificationChannel: Boolean;
    FOutputConfig: TOutputConfig;
    FKeepOutputConfig: Boolean;
    FQueriesConfig: TQueriesConfig;
    FKeepQueriesConfig: Boolean;
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
    function GetDocumentLocation: TDocumentLocation;
    procedure SetDocumentLocation(const Value: TDocumentLocation);
    function GetKeepDocumentLocation: Boolean;
    procedure SetKeepDocumentLocation(const Value: Boolean);
    function GetFeatureTypes: TList<string>;
    procedure SetFeatureTypes(const Value: TList<string>);
    function GetKeepFeatureTypes: Boolean;
    procedure SetKeepFeatureTypes(const Value: Boolean);
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
    function GetQueriesConfig: TQueriesConfig;
    procedure SetQueriesConfig(const Value: TQueriesConfig);
    function GetKeepQueriesConfig: Boolean;
    procedure SetKeepQueriesConfig(const Value: Boolean);
  strict protected
    function Obj: TStartDocumentAnalysisRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetClientRequestToken: Boolean;
    function IsSetDocumentLocation: Boolean;
    function IsSetFeatureTypes: Boolean;
    function IsSetJobTag: Boolean;
    function IsSetKMSKeyId: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetOutputConfig: Boolean;
    function IsSetQueriesConfig: Boolean;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property DocumentLocation: TDocumentLocation read GetDocumentLocation write SetDocumentLocation;
    property KeepDocumentLocation: Boolean read GetKeepDocumentLocation write SetKeepDocumentLocation;
    property FeatureTypes: TList<string> read GetFeatureTypes write SetFeatureTypes;
    property KeepFeatureTypes: Boolean read GetKeepFeatureTypes write SetKeepFeatureTypes;
    property JobTag: string read GetJobTag write SetJobTag;
    property KMSKeyId: string read GetKMSKeyId write SetKMSKeyId;
    property NotificationChannel: TNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property OutputConfig: TOutputConfig read GetOutputConfig write SetOutputConfig;
    property KeepOutputConfig: Boolean read GetKeepOutputConfig write SetKeepOutputConfig;
    property QueriesConfig: TQueriesConfig read GetQueriesConfig write SetQueriesConfig;
    property KeepQueriesConfig: Boolean read GetKeepQueriesConfig write SetKeepQueriesConfig;
  end;
  
implementation

{ TStartDocumentAnalysisRequest }

constructor TStartDocumentAnalysisRequest.Create;
begin
  inherited;
  FFeatureTypes := TList<string>.Create;
end;

destructor TStartDocumentAnalysisRequest.Destroy;
begin
  QueriesConfig := nil;
  OutputConfig := nil;
  NotificationChannel := nil;
  FeatureTypes := nil;
  DocumentLocation := nil;
  inherited;
end;

function TStartDocumentAnalysisRequest.Obj: TStartDocumentAnalysisRequest;
begin
  Result := Self;
end;

function TStartDocumentAnalysisRequest.GetClientRequestToken: string;
begin
  Result := FClientRequestToken.ValueOrDefault;
end;

procedure TStartDocumentAnalysisRequest.SetClientRequestToken(const Value: string);
begin
  FClientRequestToken := Value;
end;

function TStartDocumentAnalysisRequest.IsSetClientRequestToken: Boolean;
begin
  Result := FClientRequestToken.HasValue;
end;

function TStartDocumentAnalysisRequest.GetDocumentLocation: TDocumentLocation;
begin
  Result := FDocumentLocation;
end;

procedure TStartDocumentAnalysisRequest.SetDocumentLocation(const Value: TDocumentLocation);
begin
  if FDocumentLocation <> Value then
  begin
    if not KeepDocumentLocation then
      FDocumentLocation.Free;
    FDocumentLocation := Value;
  end;
end;

function TStartDocumentAnalysisRequest.GetKeepDocumentLocation: Boolean;
begin
  Result := FKeepDocumentLocation;
end;

procedure TStartDocumentAnalysisRequest.SetKeepDocumentLocation(const Value: Boolean);
begin
  FKeepDocumentLocation := Value;
end;

function TStartDocumentAnalysisRequest.IsSetDocumentLocation: Boolean;
begin
  Result := FDocumentLocation <> nil;
end;

function TStartDocumentAnalysisRequest.GetFeatureTypes: TList<string>;
begin
  Result := FFeatureTypes;
end;

procedure TStartDocumentAnalysisRequest.SetFeatureTypes(const Value: TList<string>);
begin
  if FFeatureTypes <> Value then
  begin
    if not KeepFeatureTypes then
      FFeatureTypes.Free;
    FFeatureTypes := Value;
  end;
end;

function TStartDocumentAnalysisRequest.GetKeepFeatureTypes: Boolean;
begin
  Result := FKeepFeatureTypes;
end;

procedure TStartDocumentAnalysisRequest.SetKeepFeatureTypes(const Value: Boolean);
begin
  FKeepFeatureTypes := Value;
end;

function TStartDocumentAnalysisRequest.IsSetFeatureTypes: Boolean;
begin
  Result := (FFeatureTypes <> nil) and (FFeatureTypes.Count > 0);
end;

function TStartDocumentAnalysisRequest.GetJobTag: string;
begin
  Result := FJobTag.ValueOrDefault;
end;

procedure TStartDocumentAnalysisRequest.SetJobTag(const Value: string);
begin
  FJobTag := Value;
end;

function TStartDocumentAnalysisRequest.IsSetJobTag: Boolean;
begin
  Result := FJobTag.HasValue;
end;

function TStartDocumentAnalysisRequest.GetKMSKeyId: string;
begin
  Result := FKMSKeyId.ValueOrDefault;
end;

procedure TStartDocumentAnalysisRequest.SetKMSKeyId(const Value: string);
begin
  FKMSKeyId := Value;
end;

function TStartDocumentAnalysisRequest.IsSetKMSKeyId: Boolean;
begin
  Result := FKMSKeyId.HasValue;
end;

function TStartDocumentAnalysisRequest.GetNotificationChannel: TNotificationChannel;
begin
  Result := FNotificationChannel;
end;

procedure TStartDocumentAnalysisRequest.SetNotificationChannel(const Value: TNotificationChannel);
begin
  if FNotificationChannel <> Value then
  begin
    if not KeepNotificationChannel then
      FNotificationChannel.Free;
    FNotificationChannel := Value;
  end;
end;

function TStartDocumentAnalysisRequest.GetKeepNotificationChannel: Boolean;
begin
  Result := FKeepNotificationChannel;
end;

procedure TStartDocumentAnalysisRequest.SetKeepNotificationChannel(const Value: Boolean);
begin
  FKeepNotificationChannel := Value;
end;

function TStartDocumentAnalysisRequest.IsSetNotificationChannel: Boolean;
begin
  Result := FNotificationChannel <> nil;
end;

function TStartDocumentAnalysisRequest.GetOutputConfig: TOutputConfig;
begin
  Result := FOutputConfig;
end;

procedure TStartDocumentAnalysisRequest.SetOutputConfig(const Value: TOutputConfig);
begin
  if FOutputConfig <> Value then
  begin
    if not KeepOutputConfig then
      FOutputConfig.Free;
    FOutputConfig := Value;
  end;
end;

function TStartDocumentAnalysisRequest.GetKeepOutputConfig: Boolean;
begin
  Result := FKeepOutputConfig;
end;

procedure TStartDocumentAnalysisRequest.SetKeepOutputConfig(const Value: Boolean);
begin
  FKeepOutputConfig := Value;
end;

function TStartDocumentAnalysisRequest.IsSetOutputConfig: Boolean;
begin
  Result := FOutputConfig <> nil;
end;

function TStartDocumentAnalysisRequest.GetQueriesConfig: TQueriesConfig;
begin
  Result := FQueriesConfig;
end;

procedure TStartDocumentAnalysisRequest.SetQueriesConfig(const Value: TQueriesConfig);
begin
  if FQueriesConfig <> Value then
  begin
    if not KeepQueriesConfig then
      FQueriesConfig.Free;
    FQueriesConfig := Value;
  end;
end;

function TStartDocumentAnalysisRequest.GetKeepQueriesConfig: Boolean;
begin
  Result := FKeepQueriesConfig;
end;

procedure TStartDocumentAnalysisRequest.SetKeepQueriesConfig(const Value: Boolean);
begin
  FKeepQueriesConfig := Value;
end;

function TStartDocumentAnalysisRequest.IsSetQueriesConfig: Boolean;
begin
  Result := FQueriesConfig <> nil;
end;

end.
