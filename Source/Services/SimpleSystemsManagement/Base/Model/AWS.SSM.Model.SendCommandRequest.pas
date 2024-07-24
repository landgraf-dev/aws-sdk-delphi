unit AWS.SSM.Model.SendCommandRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.CloudWatchOutputConfig, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.NotificationConfig, 
  AWS.SSM.Model.Target;

type
  TSendCommandRequest = class;
  
  ISendCommandRequest = interface
    function GetCloudWatchOutputConfig: TCloudWatchOutputConfig;
    procedure SetCloudWatchOutputConfig(const Value: TCloudWatchOutputConfig);
    function GetKeepCloudWatchOutputConfig: Boolean;
    procedure SetKeepCloudWatchOutputConfig(const Value: Boolean);
    function GetComment: string;
    procedure SetComment(const Value: string);
    function GetDocumentHash: string;
    procedure SetDocumentHash(const Value: string);
    function GetDocumentHashType: TDocumentHashType;
    procedure SetDocumentHashType(const Value: TDocumentHashType);
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
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
    function GetServiceRoleArn: string;
    procedure SetServiceRoleArn(const Value: string);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetTimeoutSeconds: Integer;
    procedure SetTimeoutSeconds(const Value: Integer);
    function Obj: TSendCommandRequest;
    function IsSetCloudWatchOutputConfig: Boolean;
    function IsSetComment: Boolean;
    function IsSetDocumentHash: Boolean;
    function IsSetDocumentHashType: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetInstanceIds: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetNotificationConfig: Boolean;
    function IsSetOutputS3BucketName: Boolean;
    function IsSetOutputS3KeyPrefix: Boolean;
    function IsSetOutputS3Region: Boolean;
    function IsSetParameters: Boolean;
    function IsSetServiceRoleArn: Boolean;
    function IsSetTargets: Boolean;
    function IsSetTimeoutSeconds: Boolean;
    property CloudWatchOutputConfig: TCloudWatchOutputConfig read GetCloudWatchOutputConfig write SetCloudWatchOutputConfig;
    property KeepCloudWatchOutputConfig: Boolean read GetKeepCloudWatchOutputConfig write SetKeepCloudWatchOutputConfig;
    property Comment: string read GetComment write SetComment;
    property DocumentHash: string read GetDocumentHash write SetDocumentHash;
    property DocumentHashType: TDocumentHashType read GetDocumentHashType write SetDocumentHashType;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
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
    property ServiceRoleArn: string read GetServiceRoleArn write SetServiceRoleArn;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property TimeoutSeconds: Integer read GetTimeoutSeconds write SetTimeoutSeconds;
  end;
  
  TSendCommandRequest = class(TAmazonSimpleSystemsManagementRequest, ISendCommandRequest)
  strict private
    FCloudWatchOutputConfig: TCloudWatchOutputConfig;
    FKeepCloudWatchOutputConfig: Boolean;
    FComment: Nullable<string>;
    FDocumentHash: Nullable<string>;
    FDocumentHashType: Nullable<TDocumentHashType>;
    FDocumentName: Nullable<string>;
    FDocumentVersion: Nullable<string>;
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
    FServiceRoleArn: Nullable<string>;
    FTargets: TObjectList<TTarget>;
    FKeepTargets: Boolean;
    FTimeoutSeconds: Nullable<Integer>;
    function GetCloudWatchOutputConfig: TCloudWatchOutputConfig;
    procedure SetCloudWatchOutputConfig(const Value: TCloudWatchOutputConfig);
    function GetKeepCloudWatchOutputConfig: Boolean;
    procedure SetKeepCloudWatchOutputConfig(const Value: Boolean);
    function GetComment: string;
    procedure SetComment(const Value: string);
    function GetDocumentHash: string;
    procedure SetDocumentHash(const Value: string);
    function GetDocumentHashType: TDocumentHashType;
    procedure SetDocumentHashType(const Value: TDocumentHashType);
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
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
    function GetServiceRoleArn: string;
    procedure SetServiceRoleArn(const Value: string);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetTimeoutSeconds: Integer;
    procedure SetTimeoutSeconds(const Value: Integer);
  strict protected
    function Obj: TSendCommandRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const ADocumentName: string; const AInstanceIds: TList<string>); overload;
    function IsSetCloudWatchOutputConfig: Boolean;
    function IsSetComment: Boolean;
    function IsSetDocumentHash: Boolean;
    function IsSetDocumentHashType: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetInstanceIds: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetNotificationConfig: Boolean;
    function IsSetOutputS3BucketName: Boolean;
    function IsSetOutputS3KeyPrefix: Boolean;
    function IsSetOutputS3Region: Boolean;
    function IsSetParameters: Boolean;
    function IsSetServiceRoleArn: Boolean;
    function IsSetTargets: Boolean;
    function IsSetTimeoutSeconds: Boolean;
    property CloudWatchOutputConfig: TCloudWatchOutputConfig read GetCloudWatchOutputConfig write SetCloudWatchOutputConfig;
    property KeepCloudWatchOutputConfig: Boolean read GetKeepCloudWatchOutputConfig write SetKeepCloudWatchOutputConfig;
    property Comment: string read GetComment write SetComment;
    property DocumentHash: string read GetDocumentHash write SetDocumentHash;
    property DocumentHashType: TDocumentHashType read GetDocumentHashType write SetDocumentHashType;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
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
    property ServiceRoleArn: string read GetServiceRoleArn write SetServiceRoleArn;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property TimeoutSeconds: Integer read GetTimeoutSeconds write SetTimeoutSeconds;
  end;
  
implementation

{ TSendCommandRequest }

constructor TSendCommandRequest.Create;
begin
  inherited;
  FInstanceIds := TList<string>.Create;
  FParameters := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TSendCommandRequest.Destroy;
begin
  Targets := nil;
  Parameters := nil;
  NotificationConfig := nil;
  InstanceIds := nil;
  CloudWatchOutputConfig := nil;
  inherited;
end;

function TSendCommandRequest.Obj: TSendCommandRequest;
begin
  Result := Self;
end;

constructor TSendCommandRequest.Create(const ADocumentName: string; const AInstanceIds: TList<string>);
begin
  Create;
  DocumentName := ADocumentName;
  InstanceIds := AInstanceIds;
end;

function TSendCommandRequest.GetCloudWatchOutputConfig: TCloudWatchOutputConfig;
begin
  Result := FCloudWatchOutputConfig;
end;

procedure TSendCommandRequest.SetCloudWatchOutputConfig(const Value: TCloudWatchOutputConfig);
begin
  if FCloudWatchOutputConfig <> Value then
  begin
    if not KeepCloudWatchOutputConfig then
      FCloudWatchOutputConfig.Free;
    FCloudWatchOutputConfig := Value;
  end;
end;

function TSendCommandRequest.GetKeepCloudWatchOutputConfig: Boolean;
begin
  Result := FKeepCloudWatchOutputConfig;
end;

procedure TSendCommandRequest.SetKeepCloudWatchOutputConfig(const Value: Boolean);
begin
  FKeepCloudWatchOutputConfig := Value;
end;

function TSendCommandRequest.IsSetCloudWatchOutputConfig: Boolean;
begin
  Result := FCloudWatchOutputConfig <> nil;
end;

function TSendCommandRequest.GetComment: string;
begin
  Result := FComment.ValueOrDefault;
end;

procedure TSendCommandRequest.SetComment(const Value: string);
begin
  FComment := Value;
end;

function TSendCommandRequest.IsSetComment: Boolean;
begin
  Result := FComment.HasValue;
end;

function TSendCommandRequest.GetDocumentHash: string;
begin
  Result := FDocumentHash.ValueOrDefault;
end;

procedure TSendCommandRequest.SetDocumentHash(const Value: string);
begin
  FDocumentHash := Value;
end;

function TSendCommandRequest.IsSetDocumentHash: Boolean;
begin
  Result := FDocumentHash.HasValue;
end;

function TSendCommandRequest.GetDocumentHashType: TDocumentHashType;
begin
  Result := FDocumentHashType.ValueOrDefault;
end;

procedure TSendCommandRequest.SetDocumentHashType(const Value: TDocumentHashType);
begin
  FDocumentHashType := Value;
end;

function TSendCommandRequest.IsSetDocumentHashType: Boolean;
begin
  Result := FDocumentHashType.HasValue;
end;

function TSendCommandRequest.GetDocumentName: string;
begin
  Result := FDocumentName.ValueOrDefault;
end;

procedure TSendCommandRequest.SetDocumentName(const Value: string);
begin
  FDocumentName := Value;
end;

function TSendCommandRequest.IsSetDocumentName: Boolean;
begin
  Result := FDocumentName.HasValue;
end;

function TSendCommandRequest.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TSendCommandRequest.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TSendCommandRequest.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TSendCommandRequest.GetInstanceIds: TList<string>;
begin
  Result := FInstanceIds;
end;

procedure TSendCommandRequest.SetInstanceIds(const Value: TList<string>);
begin
  if FInstanceIds <> Value then
  begin
    if not KeepInstanceIds then
      FInstanceIds.Free;
    FInstanceIds := Value;
  end;
end;

function TSendCommandRequest.GetKeepInstanceIds: Boolean;
begin
  Result := FKeepInstanceIds;
end;

procedure TSendCommandRequest.SetKeepInstanceIds(const Value: Boolean);
begin
  FKeepInstanceIds := Value;
end;

function TSendCommandRequest.IsSetInstanceIds: Boolean;
begin
  Result := (FInstanceIds <> nil) and (FInstanceIds.Count > 0);
end;

function TSendCommandRequest.GetMaxConcurrency: string;
begin
  Result := FMaxConcurrency.ValueOrDefault;
end;

procedure TSendCommandRequest.SetMaxConcurrency(const Value: string);
begin
  FMaxConcurrency := Value;
end;

function TSendCommandRequest.IsSetMaxConcurrency: Boolean;
begin
  Result := FMaxConcurrency.HasValue;
end;

function TSendCommandRequest.GetMaxErrors: string;
begin
  Result := FMaxErrors.ValueOrDefault;
end;

procedure TSendCommandRequest.SetMaxErrors(const Value: string);
begin
  FMaxErrors := Value;
end;

function TSendCommandRequest.IsSetMaxErrors: Boolean;
begin
  Result := FMaxErrors.HasValue;
end;

function TSendCommandRequest.GetNotificationConfig: TNotificationConfig;
begin
  Result := FNotificationConfig;
end;

procedure TSendCommandRequest.SetNotificationConfig(const Value: TNotificationConfig);
begin
  if FNotificationConfig <> Value then
  begin
    if not KeepNotificationConfig then
      FNotificationConfig.Free;
    FNotificationConfig := Value;
  end;
end;

function TSendCommandRequest.GetKeepNotificationConfig: Boolean;
begin
  Result := FKeepNotificationConfig;
end;

procedure TSendCommandRequest.SetKeepNotificationConfig(const Value: Boolean);
begin
  FKeepNotificationConfig := Value;
end;

function TSendCommandRequest.IsSetNotificationConfig: Boolean;
begin
  Result := FNotificationConfig <> nil;
end;

function TSendCommandRequest.GetOutputS3BucketName: string;
begin
  Result := FOutputS3BucketName.ValueOrDefault;
end;

procedure TSendCommandRequest.SetOutputS3BucketName(const Value: string);
begin
  FOutputS3BucketName := Value;
end;

function TSendCommandRequest.IsSetOutputS3BucketName: Boolean;
begin
  Result := FOutputS3BucketName.HasValue;
end;

function TSendCommandRequest.GetOutputS3KeyPrefix: string;
begin
  Result := FOutputS3KeyPrefix.ValueOrDefault;
end;

procedure TSendCommandRequest.SetOutputS3KeyPrefix(const Value: string);
begin
  FOutputS3KeyPrefix := Value;
end;

function TSendCommandRequest.IsSetOutputS3KeyPrefix: Boolean;
begin
  Result := FOutputS3KeyPrefix.HasValue;
end;

function TSendCommandRequest.GetOutputS3Region: string;
begin
  Result := FOutputS3Region.ValueOrDefault;
end;

procedure TSendCommandRequest.SetOutputS3Region(const Value: string);
begin
  FOutputS3Region := Value;
end;

function TSendCommandRequest.IsSetOutputS3Region: Boolean;
begin
  Result := FOutputS3Region.HasValue;
end;

function TSendCommandRequest.GetParameters: TObjectDictionary<string, TList<string>>;
begin
  Result := FParameters;
end;

procedure TSendCommandRequest.SetParameters(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TSendCommandRequest.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TSendCommandRequest.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TSendCommandRequest.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

function TSendCommandRequest.GetServiceRoleArn: string;
begin
  Result := FServiceRoleArn.ValueOrDefault;
end;

procedure TSendCommandRequest.SetServiceRoleArn(const Value: string);
begin
  FServiceRoleArn := Value;
end;

function TSendCommandRequest.IsSetServiceRoleArn: Boolean;
begin
  Result := FServiceRoleArn.HasValue;
end;

function TSendCommandRequest.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TSendCommandRequest.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TSendCommandRequest.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TSendCommandRequest.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TSendCommandRequest.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

function TSendCommandRequest.GetTimeoutSeconds: Integer;
begin
  Result := FTimeoutSeconds.ValueOrDefault;
end;

procedure TSendCommandRequest.SetTimeoutSeconds(const Value: Integer);
begin
  FTimeoutSeconds := Value;
end;

function TSendCommandRequest.IsSetTimeoutSeconds: Boolean;
begin
  Result := FTimeoutSeconds.HasValue;
end;

end.
