unit AWS.SSM.Model.Command;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.CloudWatchOutputConfig, 
  AWS.Nullable, 
  AWS.SSM.Model.NotificationConfig, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.Target;

type
  TCommand = class;
  
  ICommand = interface
    function GetCloudWatchOutputConfig: TCloudWatchOutputConfig;
    procedure SetCloudWatchOutputConfig(const Value: TCloudWatchOutputConfig);
    function GetKeepCloudWatchOutputConfig: Boolean;
    procedure SetKeepCloudWatchOutputConfig(const Value: Boolean);
    function GetCommandId: string;
    procedure SetCommandId(const Value: string);
    function GetComment: string;
    procedure SetComment(const Value: string);
    function GetCompletedCount: Integer;
    procedure SetCompletedCount(const Value: Integer);
    function GetDeliveryTimedOutCount: Integer;
    procedure SetDeliveryTimedOutCount(const Value: Integer);
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetErrorCount: Integer;
    procedure SetErrorCount(const Value: Integer);
    function GetExpiresAfter: TDateTime;
    procedure SetExpiresAfter(const Value: TDateTime);
    function GetInstanceIds: TList<string>;
    procedure SetInstanceIds(const Value: TList<string>);
    function GetKeepInstanceIds: Boolean;
    procedure SetKeepInstanceIds(const Value: Boolean);
    function GetMaxConcurrency: string;
    procedure SetMaxConcurrency(const Value: string);
    function GetMaxErrors: string;
    procedure SetMaxErrors(const Value: string);
    function GetNotificationConfig: TNotificationConfig;
    procedure SetNotificationConfig(const Value: TNotificationConfig);
    function GetKeepNotificationConfig: Boolean;
    procedure SetKeepNotificationConfig(const Value: Boolean);
    function GetOutputS3BucketName: string;
    procedure SetOutputS3BucketName(const Value: string);
    function GetOutputS3KeyPrefix: string;
    procedure SetOutputS3KeyPrefix(const Value: string);
    function GetOutputS3Region: string;
    procedure SetOutputS3Region(const Value: string);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetRequestedDateTime: TDateTime;
    procedure SetRequestedDateTime(const Value: TDateTime);
    function GetServiceRole: string;
    procedure SetServiceRole(const Value: string);
    function GetStatus: TCommandStatus;
    procedure SetStatus(const Value: TCommandStatus);
    function GetStatusDetails: string;
    procedure SetStatusDetails(const Value: string);
    function GetTargetCount: Integer;
    procedure SetTargetCount(const Value: Integer);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetTimeoutSeconds: Integer;
    procedure SetTimeoutSeconds(const Value: Integer);
    function Obj: TCommand;
    function IsSetCloudWatchOutputConfig: Boolean;
    function IsSetCommandId: Boolean;
    function IsSetComment: Boolean;
    function IsSetCompletedCount: Boolean;
    function IsSetDeliveryTimedOutCount: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetErrorCount: Boolean;
    function IsSetExpiresAfter: Boolean;
    function IsSetInstanceIds: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetNotificationConfig: Boolean;
    function IsSetOutputS3BucketName: Boolean;
    function IsSetOutputS3KeyPrefix: Boolean;
    function IsSetOutputS3Region: Boolean;
    function IsSetParameters: Boolean;
    function IsSetRequestedDateTime: Boolean;
    function IsSetServiceRole: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    function IsSetTargetCount: Boolean;
    function IsSetTargets: Boolean;
    function IsSetTimeoutSeconds: Boolean;
    property CloudWatchOutputConfig: TCloudWatchOutputConfig read GetCloudWatchOutputConfig write SetCloudWatchOutputConfig;
    property KeepCloudWatchOutputConfig: Boolean read GetKeepCloudWatchOutputConfig write SetKeepCloudWatchOutputConfig;
    property CommandId: string read GetCommandId write SetCommandId;
    property Comment: string read GetComment write SetComment;
    property CompletedCount: Integer read GetCompletedCount write SetCompletedCount;
    property DeliveryTimedOutCount: Integer read GetDeliveryTimedOutCount write SetDeliveryTimedOutCount;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property ErrorCount: Integer read GetErrorCount write SetErrorCount;
    property ExpiresAfter: TDateTime read GetExpiresAfter write SetExpiresAfter;
    property InstanceIds: TList<string> read GetInstanceIds write SetInstanceIds;
    property KeepInstanceIds: Boolean read GetKeepInstanceIds write SetKeepInstanceIds;
    property MaxConcurrency: string read GetMaxConcurrency write SetMaxConcurrency;
    property MaxErrors: string read GetMaxErrors write SetMaxErrors;
    property NotificationConfig: TNotificationConfig read GetNotificationConfig write SetNotificationConfig;
    property KeepNotificationConfig: Boolean read GetKeepNotificationConfig write SetKeepNotificationConfig;
    property OutputS3BucketName: string read GetOutputS3BucketName write SetOutputS3BucketName;
    property OutputS3KeyPrefix: string read GetOutputS3KeyPrefix write SetOutputS3KeyPrefix;
    property OutputS3Region: string read GetOutputS3Region write SetOutputS3Region;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property RequestedDateTime: TDateTime read GetRequestedDateTime write SetRequestedDateTime;
    property ServiceRole: string read GetServiceRole write SetServiceRole;
    property Status: TCommandStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
    property TargetCount: Integer read GetTargetCount write SetTargetCount;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property TimeoutSeconds: Integer read GetTimeoutSeconds write SetTimeoutSeconds;
  end;
  
  TCommand = class
  strict private
    FCloudWatchOutputConfig: TCloudWatchOutputConfig;
    FKeepCloudWatchOutputConfig: Boolean;
    FCommandId: Nullable<string>;
    FComment: Nullable<string>;
    FCompletedCount: Nullable<Integer>;
    FDeliveryTimedOutCount: Nullable<Integer>;
    FDocumentName: Nullable<string>;
    FDocumentVersion: Nullable<string>;
    FErrorCount: Nullable<Integer>;
    FExpiresAfter: Nullable<TDateTime>;
    FInstanceIds: TList<string>;
    FKeepInstanceIds: Boolean;
    FMaxConcurrency: Nullable<string>;
    FMaxErrors: Nullable<string>;
    FNotificationConfig: TNotificationConfig;
    FKeepNotificationConfig: Boolean;
    FOutputS3BucketName: Nullable<string>;
    FOutputS3KeyPrefix: Nullable<string>;
    FOutputS3Region: Nullable<string>;
    FParameters: TObjectDictionary<string, TList<string>>;
    FKeepParameters: Boolean;
    FRequestedDateTime: Nullable<TDateTime>;
    FServiceRole: Nullable<string>;
    FStatus: Nullable<TCommandStatus>;
    FStatusDetails: Nullable<string>;
    FTargetCount: Nullable<Integer>;
    FTargets: TObjectList<TTarget>;
    FKeepTargets: Boolean;
    FTimeoutSeconds: Nullable<Integer>;
    function GetCloudWatchOutputConfig: TCloudWatchOutputConfig;
    procedure SetCloudWatchOutputConfig(const Value: TCloudWatchOutputConfig);
    function GetKeepCloudWatchOutputConfig: Boolean;
    procedure SetKeepCloudWatchOutputConfig(const Value: Boolean);
    function GetCommandId: string;
    procedure SetCommandId(const Value: string);
    function GetComment: string;
    procedure SetComment(const Value: string);
    function GetCompletedCount: Integer;
    procedure SetCompletedCount(const Value: Integer);
    function GetDeliveryTimedOutCount: Integer;
    procedure SetDeliveryTimedOutCount(const Value: Integer);
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetErrorCount: Integer;
    procedure SetErrorCount(const Value: Integer);
    function GetExpiresAfter: TDateTime;
    procedure SetExpiresAfter(const Value: TDateTime);
    function GetInstanceIds: TList<string>;
    procedure SetInstanceIds(const Value: TList<string>);
    function GetKeepInstanceIds: Boolean;
    procedure SetKeepInstanceIds(const Value: Boolean);
    function GetMaxConcurrency: string;
    procedure SetMaxConcurrency(const Value: string);
    function GetMaxErrors: string;
    procedure SetMaxErrors(const Value: string);
    function GetNotificationConfig: TNotificationConfig;
    procedure SetNotificationConfig(const Value: TNotificationConfig);
    function GetKeepNotificationConfig: Boolean;
    procedure SetKeepNotificationConfig(const Value: Boolean);
    function GetOutputS3BucketName: string;
    procedure SetOutputS3BucketName(const Value: string);
    function GetOutputS3KeyPrefix: string;
    procedure SetOutputS3KeyPrefix(const Value: string);
    function GetOutputS3Region: string;
    procedure SetOutputS3Region(const Value: string);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetRequestedDateTime: TDateTime;
    procedure SetRequestedDateTime(const Value: TDateTime);
    function GetServiceRole: string;
    procedure SetServiceRole(const Value: string);
    function GetStatus: TCommandStatus;
    procedure SetStatus(const Value: TCommandStatus);
    function GetStatusDetails: string;
    procedure SetStatusDetails(const Value: string);
    function GetTargetCount: Integer;
    procedure SetTargetCount(const Value: Integer);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetTimeoutSeconds: Integer;
    procedure SetTimeoutSeconds(const Value: Integer);
  strict protected
    function Obj: TCommand;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCloudWatchOutputConfig: Boolean;
    function IsSetCommandId: Boolean;
    function IsSetComment: Boolean;
    function IsSetCompletedCount: Boolean;
    function IsSetDeliveryTimedOutCount: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetErrorCount: Boolean;
    function IsSetExpiresAfter: Boolean;
    function IsSetInstanceIds: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetNotificationConfig: Boolean;
    function IsSetOutputS3BucketName: Boolean;
    function IsSetOutputS3KeyPrefix: Boolean;
    function IsSetOutputS3Region: Boolean;
    function IsSetParameters: Boolean;
    function IsSetRequestedDateTime: Boolean;
    function IsSetServiceRole: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    function IsSetTargetCount: Boolean;
    function IsSetTargets: Boolean;
    function IsSetTimeoutSeconds: Boolean;
    property CloudWatchOutputConfig: TCloudWatchOutputConfig read GetCloudWatchOutputConfig write SetCloudWatchOutputConfig;
    property KeepCloudWatchOutputConfig: Boolean read GetKeepCloudWatchOutputConfig write SetKeepCloudWatchOutputConfig;
    property CommandId: string read GetCommandId write SetCommandId;
    property Comment: string read GetComment write SetComment;
    property CompletedCount: Integer read GetCompletedCount write SetCompletedCount;
    property DeliveryTimedOutCount: Integer read GetDeliveryTimedOutCount write SetDeliveryTimedOutCount;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property ErrorCount: Integer read GetErrorCount write SetErrorCount;
    property ExpiresAfter: TDateTime read GetExpiresAfter write SetExpiresAfter;
    property InstanceIds: TList<string> read GetInstanceIds write SetInstanceIds;
    property KeepInstanceIds: Boolean read GetKeepInstanceIds write SetKeepInstanceIds;
    property MaxConcurrency: string read GetMaxConcurrency write SetMaxConcurrency;
    property MaxErrors: string read GetMaxErrors write SetMaxErrors;
    property NotificationConfig: TNotificationConfig read GetNotificationConfig write SetNotificationConfig;
    property KeepNotificationConfig: Boolean read GetKeepNotificationConfig write SetKeepNotificationConfig;
    property OutputS3BucketName: string read GetOutputS3BucketName write SetOutputS3BucketName;
    property OutputS3KeyPrefix: string read GetOutputS3KeyPrefix write SetOutputS3KeyPrefix;
    property OutputS3Region: string read GetOutputS3Region write SetOutputS3Region;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property RequestedDateTime: TDateTime read GetRequestedDateTime write SetRequestedDateTime;
    property ServiceRole: string read GetServiceRole write SetServiceRole;
    property Status: TCommandStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
    property TargetCount: Integer read GetTargetCount write SetTargetCount;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property TimeoutSeconds: Integer read GetTimeoutSeconds write SetTimeoutSeconds;
  end;
  
implementation

{ TCommand }

constructor TCommand.Create;
begin
  inherited;
  FInstanceIds := TList<string>.Create;
  FParameters := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TCommand.Destroy;
begin
  Targets := nil;
  Parameters := nil;
  NotificationConfig := nil;
  InstanceIds := nil;
  CloudWatchOutputConfig := nil;
  inherited;
end;

function TCommand.Obj: TCommand;
begin
  Result := Self;
end;

function TCommand.GetCloudWatchOutputConfig: TCloudWatchOutputConfig;
begin
  Result := FCloudWatchOutputConfig;
end;

procedure TCommand.SetCloudWatchOutputConfig(const Value: TCloudWatchOutputConfig);
begin
  if FCloudWatchOutputConfig <> Value then
  begin
    if not KeepCloudWatchOutputConfig then
      FCloudWatchOutputConfig.Free;
    FCloudWatchOutputConfig := Value;
  end;
end;

function TCommand.GetKeepCloudWatchOutputConfig: Boolean;
begin
  Result := FKeepCloudWatchOutputConfig;
end;

procedure TCommand.SetKeepCloudWatchOutputConfig(const Value: Boolean);
begin
  FKeepCloudWatchOutputConfig := Value;
end;

function TCommand.IsSetCloudWatchOutputConfig: Boolean;
begin
  Result := FCloudWatchOutputConfig <> nil;
end;

function TCommand.GetCommandId: string;
begin
  Result := FCommandId.ValueOrDefault;
end;

procedure TCommand.SetCommandId(const Value: string);
begin
  FCommandId := Value;
end;

function TCommand.IsSetCommandId: Boolean;
begin
  Result := FCommandId.HasValue;
end;

function TCommand.GetComment: string;
begin
  Result := FComment.ValueOrDefault;
end;

procedure TCommand.SetComment(const Value: string);
begin
  FComment := Value;
end;

function TCommand.IsSetComment: Boolean;
begin
  Result := FComment.HasValue;
end;

function TCommand.GetCompletedCount: Integer;
begin
  Result := FCompletedCount.ValueOrDefault;
end;

procedure TCommand.SetCompletedCount(const Value: Integer);
begin
  FCompletedCount := Value;
end;

function TCommand.IsSetCompletedCount: Boolean;
begin
  Result := FCompletedCount.HasValue;
end;

function TCommand.GetDeliveryTimedOutCount: Integer;
begin
  Result := FDeliveryTimedOutCount.ValueOrDefault;
end;

procedure TCommand.SetDeliveryTimedOutCount(const Value: Integer);
begin
  FDeliveryTimedOutCount := Value;
end;

function TCommand.IsSetDeliveryTimedOutCount: Boolean;
begin
  Result := FDeliveryTimedOutCount.HasValue;
end;

function TCommand.GetDocumentName: string;
begin
  Result := FDocumentName.ValueOrDefault;
end;

procedure TCommand.SetDocumentName(const Value: string);
begin
  FDocumentName := Value;
end;

function TCommand.IsSetDocumentName: Boolean;
begin
  Result := FDocumentName.HasValue;
end;

function TCommand.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TCommand.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TCommand.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TCommand.GetErrorCount: Integer;
begin
  Result := FErrorCount.ValueOrDefault;
end;

procedure TCommand.SetErrorCount(const Value: Integer);
begin
  FErrorCount := Value;
end;

function TCommand.IsSetErrorCount: Boolean;
begin
  Result := FErrorCount.HasValue;
end;

function TCommand.GetExpiresAfter: TDateTime;
begin
  Result := FExpiresAfter.ValueOrDefault;
end;

procedure TCommand.SetExpiresAfter(const Value: TDateTime);
begin
  FExpiresAfter := Value;
end;

function TCommand.IsSetExpiresAfter: Boolean;
begin
  Result := FExpiresAfter.HasValue;
end;

function TCommand.GetInstanceIds: TList<string>;
begin
  Result := FInstanceIds;
end;

procedure TCommand.SetInstanceIds(const Value: TList<string>);
begin
  if FInstanceIds <> Value then
  begin
    if not KeepInstanceIds then
      FInstanceIds.Free;
    FInstanceIds := Value;
  end;
end;

function TCommand.GetKeepInstanceIds: Boolean;
begin
  Result := FKeepInstanceIds;
end;

procedure TCommand.SetKeepInstanceIds(const Value: Boolean);
begin
  FKeepInstanceIds := Value;
end;

function TCommand.IsSetInstanceIds: Boolean;
begin
  Result := (FInstanceIds <> nil) and (FInstanceIds.Count > 0);
end;

function TCommand.GetMaxConcurrency: string;
begin
  Result := FMaxConcurrency.ValueOrDefault;
end;

procedure TCommand.SetMaxConcurrency(const Value: string);
begin
  FMaxConcurrency := Value;
end;

function TCommand.IsSetMaxConcurrency: Boolean;
begin
  Result := FMaxConcurrency.HasValue;
end;

function TCommand.GetMaxErrors: string;
begin
  Result := FMaxErrors.ValueOrDefault;
end;

procedure TCommand.SetMaxErrors(const Value: string);
begin
  FMaxErrors := Value;
end;

function TCommand.IsSetMaxErrors: Boolean;
begin
  Result := FMaxErrors.HasValue;
end;

function TCommand.GetNotificationConfig: TNotificationConfig;
begin
  Result := FNotificationConfig;
end;

procedure TCommand.SetNotificationConfig(const Value: TNotificationConfig);
begin
  if FNotificationConfig <> Value then
  begin
    if not KeepNotificationConfig then
      FNotificationConfig.Free;
    FNotificationConfig := Value;
  end;
end;

function TCommand.GetKeepNotificationConfig: Boolean;
begin
  Result := FKeepNotificationConfig;
end;

procedure TCommand.SetKeepNotificationConfig(const Value: Boolean);
begin
  FKeepNotificationConfig := Value;
end;

function TCommand.IsSetNotificationConfig: Boolean;
begin
  Result := FNotificationConfig <> nil;
end;

function TCommand.GetOutputS3BucketName: string;
begin
  Result := FOutputS3BucketName.ValueOrDefault;
end;

procedure TCommand.SetOutputS3BucketName(const Value: string);
begin
  FOutputS3BucketName := Value;
end;

function TCommand.IsSetOutputS3BucketName: Boolean;
begin
  Result := FOutputS3BucketName.HasValue;
end;

function TCommand.GetOutputS3KeyPrefix: string;
begin
  Result := FOutputS3KeyPrefix.ValueOrDefault;
end;

procedure TCommand.SetOutputS3KeyPrefix(const Value: string);
begin
  FOutputS3KeyPrefix := Value;
end;

function TCommand.IsSetOutputS3KeyPrefix: Boolean;
begin
  Result := FOutputS3KeyPrefix.HasValue;
end;

function TCommand.GetOutputS3Region: string;
begin
  Result := FOutputS3Region.ValueOrDefault;
end;

procedure TCommand.SetOutputS3Region(const Value: string);
begin
  FOutputS3Region := Value;
end;

function TCommand.IsSetOutputS3Region: Boolean;
begin
  Result := FOutputS3Region.HasValue;
end;

function TCommand.GetParameters: TObjectDictionary<string, TList<string>>;
begin
  Result := FParameters;
end;

procedure TCommand.SetParameters(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TCommand.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TCommand.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TCommand.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

function TCommand.GetRequestedDateTime: TDateTime;
begin
  Result := FRequestedDateTime.ValueOrDefault;
end;

procedure TCommand.SetRequestedDateTime(const Value: TDateTime);
begin
  FRequestedDateTime := Value;
end;

function TCommand.IsSetRequestedDateTime: Boolean;
begin
  Result := FRequestedDateTime.HasValue;
end;

function TCommand.GetServiceRole: string;
begin
  Result := FServiceRole.ValueOrDefault;
end;

procedure TCommand.SetServiceRole(const Value: string);
begin
  FServiceRole := Value;
end;

function TCommand.IsSetServiceRole: Boolean;
begin
  Result := FServiceRole.HasValue;
end;

function TCommand.GetStatus: TCommandStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TCommand.SetStatus(const Value: TCommandStatus);
begin
  FStatus := Value;
end;

function TCommand.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TCommand.GetStatusDetails: string;
begin
  Result := FStatusDetails.ValueOrDefault;
end;

procedure TCommand.SetStatusDetails(const Value: string);
begin
  FStatusDetails := Value;
end;

function TCommand.IsSetStatusDetails: Boolean;
begin
  Result := FStatusDetails.HasValue;
end;

function TCommand.GetTargetCount: Integer;
begin
  Result := FTargetCount.ValueOrDefault;
end;

procedure TCommand.SetTargetCount(const Value: Integer);
begin
  FTargetCount := Value;
end;

function TCommand.IsSetTargetCount: Boolean;
begin
  Result := FTargetCount.HasValue;
end;

function TCommand.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TCommand.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TCommand.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TCommand.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TCommand.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

function TCommand.GetTimeoutSeconds: Integer;
begin
  Result := FTimeoutSeconds.ValueOrDefault;
end;

procedure TCommand.SetTimeoutSeconds(const Value: Integer);
begin
  FTimeoutSeconds := Value;
end;

function TCommand.IsSetTimeoutSeconds: Boolean;
begin
  Result := FTimeoutSeconds.HasValue;
end;

end.
