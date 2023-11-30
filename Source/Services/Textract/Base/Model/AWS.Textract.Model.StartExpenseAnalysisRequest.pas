unit AWS.Textract.Model.StartExpenseAnalysisRequest;

interface

uses
  AWS.Textract.Model.Request, 
  AWS.Nullable, 
  AWS.Textract.Model.DocumentLocation, 
  AWS.Textract.Model.NotificationChannel, 
  AWS.Textract.Model.OutputConfig;

type
  TStartExpenseAnalysisRequest = class;
  
  IStartExpenseAnalysisRequest = interface
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
    function Obj: TStartExpenseAnalysisRequest;
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
  
  TStartExpenseAnalysisRequest = class(TAmazonTextractRequest, IStartExpenseAnalysisRequest)
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
    function Obj: TStartExpenseAnalysisRequest;
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

{ TStartExpenseAnalysisRequest }

destructor TStartExpenseAnalysisRequest.Destroy;
begin
  OutputConfig := nil;
  NotificationChannel := nil;
  DocumentLocation := nil;
  inherited;
end;

function TStartExpenseAnalysisRequest.Obj: TStartExpenseAnalysisRequest;
begin
  Result := Self;
end;

function TStartExpenseAnalysisRequest.GetClientRequestToken: string;
begin
  Result := FClientRequestToken.ValueOrDefault;
end;

procedure TStartExpenseAnalysisRequest.SetClientRequestToken(const Value: string);
begin
  FClientRequestToken := Value;
end;

function TStartExpenseAnalysisRequest.IsSetClientRequestToken: Boolean;
begin
  Result := FClientRequestToken.HasValue;
end;

function TStartExpenseAnalysisRequest.GetDocumentLocation: TDocumentLocation;
begin
  Result := FDocumentLocation;
end;

procedure TStartExpenseAnalysisRequest.SetDocumentLocation(const Value: TDocumentLocation);
begin
  if FDocumentLocation <> Value then
  begin
    if not KeepDocumentLocation then
      FDocumentLocation.Free;
    FDocumentLocation := Value;
  end;
end;

function TStartExpenseAnalysisRequest.GetKeepDocumentLocation: Boolean;
begin
  Result := FKeepDocumentLocation;
end;

procedure TStartExpenseAnalysisRequest.SetKeepDocumentLocation(const Value: Boolean);
begin
  FKeepDocumentLocation := Value;
end;

function TStartExpenseAnalysisRequest.IsSetDocumentLocation: Boolean;
begin
  Result := FDocumentLocation <> nil;
end;

function TStartExpenseAnalysisRequest.GetJobTag: string;
begin
  Result := FJobTag.ValueOrDefault;
end;

procedure TStartExpenseAnalysisRequest.SetJobTag(const Value: string);
begin
  FJobTag := Value;
end;

function TStartExpenseAnalysisRequest.IsSetJobTag: Boolean;
begin
  Result := FJobTag.HasValue;
end;

function TStartExpenseAnalysisRequest.GetKMSKeyId: string;
begin
  Result := FKMSKeyId.ValueOrDefault;
end;

procedure TStartExpenseAnalysisRequest.SetKMSKeyId(const Value: string);
begin
  FKMSKeyId := Value;
end;

function TStartExpenseAnalysisRequest.IsSetKMSKeyId: Boolean;
begin
  Result := FKMSKeyId.HasValue;
end;

function TStartExpenseAnalysisRequest.GetNotificationChannel: TNotificationChannel;
begin
  Result := FNotificationChannel;
end;

procedure TStartExpenseAnalysisRequest.SetNotificationChannel(const Value: TNotificationChannel);
begin
  if FNotificationChannel <> Value then
  begin
    if not KeepNotificationChannel then
      FNotificationChannel.Free;
    FNotificationChannel := Value;
  end;
end;

function TStartExpenseAnalysisRequest.GetKeepNotificationChannel: Boolean;
begin
  Result := FKeepNotificationChannel;
end;

procedure TStartExpenseAnalysisRequest.SetKeepNotificationChannel(const Value: Boolean);
begin
  FKeepNotificationChannel := Value;
end;

function TStartExpenseAnalysisRequest.IsSetNotificationChannel: Boolean;
begin
  Result := FNotificationChannel <> nil;
end;

function TStartExpenseAnalysisRequest.GetOutputConfig: TOutputConfig;
begin
  Result := FOutputConfig;
end;

procedure TStartExpenseAnalysisRequest.SetOutputConfig(const Value: TOutputConfig);
begin
  if FOutputConfig <> Value then
  begin
    if not KeepOutputConfig then
      FOutputConfig.Free;
    FOutputConfig := Value;
  end;
end;

function TStartExpenseAnalysisRequest.GetKeepOutputConfig: Boolean;
begin
  Result := FKeepOutputConfig;
end;

procedure TStartExpenseAnalysisRequest.SetKeepOutputConfig(const Value: Boolean);
begin
  FKeepOutputConfig := Value;
end;

function TStartExpenseAnalysisRequest.IsSetOutputConfig: Boolean;
begin
  Result := FOutputConfig <> nil;
end;

end.
