unit AWS.SSM.Model.MaintenanceWindowRunCommandParameters;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.CloudWatchOutputConfig, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.NotificationConfig;

type
  TMaintenanceWindowRunCommandParameters = class;
  
  IMaintenanceWindowRunCommandParameters = interface
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
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetNotificationConfig: TNotificationConfig;
    procedure SetNotificationConfig(const Value: TNotificationConfig);
    function GetKeepNotificationConfig: Boolean;
    procedure SetKeepNotificationConfig(const Value: Boolean);
    function GetOutputS3BucketName: string;
    procedure SetOutputS3BucketName(const Value: string);
    function GetOutputS3KeyPrefix: string;
    procedure SetOutputS3KeyPrefix(const Value: string);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetServiceRoleArn: string;
    procedure SetServiceRoleArn(const Value: string);
    function GetTimeoutSeconds: Integer;
    procedure SetTimeoutSeconds(const Value: Integer);
    function Obj: TMaintenanceWindowRunCommandParameters;
    function IsSetCloudWatchOutputConfig: Boolean;
    function IsSetComment: Boolean;
    function IsSetDocumentHash: Boolean;
    function IsSetDocumentHashType: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetNotificationConfig: Boolean;
    function IsSetOutputS3BucketName: Boolean;
    function IsSetOutputS3KeyPrefix: Boolean;
    function IsSetParameters: Boolean;
    function IsSetServiceRoleArn: Boolean;
    function IsSetTimeoutSeconds: Boolean;
    property CloudWatchOutputConfig: TCloudWatchOutputConfig read GetCloudWatchOutputConfig write SetCloudWatchOutputConfig;
    property KeepCloudWatchOutputConfig: Boolean read GetKeepCloudWatchOutputConfig write SetKeepCloudWatchOutputConfig;
    property Comment: string read GetComment write SetComment;
    property DocumentHash: string read GetDocumentHash write SetDocumentHash;
    property DocumentHashType: TDocumentHashType read GetDocumentHashType write SetDocumentHashType;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property NotificationConfig: TNotificationConfig read GetNotificationConfig write SetNotificationConfig;
    property KeepNotificationConfig: Boolean read GetKeepNotificationConfig write SetKeepNotificationConfig;
    property OutputS3BucketName: string read GetOutputS3BucketName write SetOutputS3BucketName;
    property OutputS3KeyPrefix: string read GetOutputS3KeyPrefix write SetOutputS3KeyPrefix;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property ServiceRoleArn: string read GetServiceRoleArn write SetServiceRoleArn;
    property TimeoutSeconds: Integer read GetTimeoutSeconds write SetTimeoutSeconds;
  end;
  
  TMaintenanceWindowRunCommandParameters = class
  strict private
    FCloudWatchOutputConfig: TCloudWatchOutputConfig;
    FKeepCloudWatchOutputConfig: Boolean;
    FComment: Nullable<string>;
    FDocumentHash: Nullable<string>;
    FDocumentHashType: Nullable<TDocumentHashType>;
    FDocumentVersion: Nullable<string>;
    FNotificationConfig: TNotificationConfig;
    FKeepNotificationConfig: Boolean;
    FOutputS3BucketName: Nullable<string>;
    FOutputS3KeyPrefix: Nullable<string>;
    FParameters: TObjectDictionary<string, TList<string>>;
    FKeepParameters: Boolean;
    FServiceRoleArn: Nullable<string>;
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
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetNotificationConfig: TNotificationConfig;
    procedure SetNotificationConfig(const Value: TNotificationConfig);
    function GetKeepNotificationConfig: Boolean;
    procedure SetKeepNotificationConfig(const Value: Boolean);
    function GetOutputS3BucketName: string;
    procedure SetOutputS3BucketName(const Value: string);
    function GetOutputS3KeyPrefix: string;
    procedure SetOutputS3KeyPrefix(const Value: string);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetServiceRoleArn: string;
    procedure SetServiceRoleArn(const Value: string);
    function GetTimeoutSeconds: Integer;
    procedure SetTimeoutSeconds(const Value: Integer);
  strict protected
    function Obj: TMaintenanceWindowRunCommandParameters;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCloudWatchOutputConfig: Boolean;
    function IsSetComment: Boolean;
    function IsSetDocumentHash: Boolean;
    function IsSetDocumentHashType: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetNotificationConfig: Boolean;
    function IsSetOutputS3BucketName: Boolean;
    function IsSetOutputS3KeyPrefix: Boolean;
    function IsSetParameters: Boolean;
    function IsSetServiceRoleArn: Boolean;
    function IsSetTimeoutSeconds: Boolean;
    property CloudWatchOutputConfig: TCloudWatchOutputConfig read GetCloudWatchOutputConfig write SetCloudWatchOutputConfig;
    property KeepCloudWatchOutputConfig: Boolean read GetKeepCloudWatchOutputConfig write SetKeepCloudWatchOutputConfig;
    property Comment: string read GetComment write SetComment;
    property DocumentHash: string read GetDocumentHash write SetDocumentHash;
    property DocumentHashType: TDocumentHashType read GetDocumentHashType write SetDocumentHashType;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property NotificationConfig: TNotificationConfig read GetNotificationConfig write SetNotificationConfig;
    property KeepNotificationConfig: Boolean read GetKeepNotificationConfig write SetKeepNotificationConfig;
    property OutputS3BucketName: string read GetOutputS3BucketName write SetOutputS3BucketName;
    property OutputS3KeyPrefix: string read GetOutputS3KeyPrefix write SetOutputS3KeyPrefix;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property ServiceRoleArn: string read GetServiceRoleArn write SetServiceRoleArn;
    property TimeoutSeconds: Integer read GetTimeoutSeconds write SetTimeoutSeconds;
  end;
  
implementation

{ TMaintenanceWindowRunCommandParameters }

constructor TMaintenanceWindowRunCommandParameters.Create;
begin
  inherited;
  FParameters := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
end;

destructor TMaintenanceWindowRunCommandParameters.Destroy;
begin
  Parameters := nil;
  NotificationConfig := nil;
  CloudWatchOutputConfig := nil;
  inherited;
end;

function TMaintenanceWindowRunCommandParameters.Obj: TMaintenanceWindowRunCommandParameters;
begin
  Result := Self;
end;

function TMaintenanceWindowRunCommandParameters.GetCloudWatchOutputConfig: TCloudWatchOutputConfig;
begin
  Result := FCloudWatchOutputConfig;
end;

procedure TMaintenanceWindowRunCommandParameters.SetCloudWatchOutputConfig(const Value: TCloudWatchOutputConfig);
begin
  if FCloudWatchOutputConfig <> Value then
  begin
    if not KeepCloudWatchOutputConfig then
      FCloudWatchOutputConfig.Free;
    FCloudWatchOutputConfig := Value;
  end;
end;

function TMaintenanceWindowRunCommandParameters.GetKeepCloudWatchOutputConfig: Boolean;
begin
  Result := FKeepCloudWatchOutputConfig;
end;

procedure TMaintenanceWindowRunCommandParameters.SetKeepCloudWatchOutputConfig(const Value: Boolean);
begin
  FKeepCloudWatchOutputConfig := Value;
end;

function TMaintenanceWindowRunCommandParameters.IsSetCloudWatchOutputConfig: Boolean;
begin
  Result := FCloudWatchOutputConfig <> nil;
end;

function TMaintenanceWindowRunCommandParameters.GetComment: string;
begin
  Result := FComment.ValueOrDefault;
end;

procedure TMaintenanceWindowRunCommandParameters.SetComment(const Value: string);
begin
  FComment := Value;
end;

function TMaintenanceWindowRunCommandParameters.IsSetComment: Boolean;
begin
  Result := FComment.HasValue;
end;

function TMaintenanceWindowRunCommandParameters.GetDocumentHash: string;
begin
  Result := FDocumentHash.ValueOrDefault;
end;

procedure TMaintenanceWindowRunCommandParameters.SetDocumentHash(const Value: string);
begin
  FDocumentHash := Value;
end;

function TMaintenanceWindowRunCommandParameters.IsSetDocumentHash: Boolean;
begin
  Result := FDocumentHash.HasValue;
end;

function TMaintenanceWindowRunCommandParameters.GetDocumentHashType: TDocumentHashType;
begin
  Result := FDocumentHashType.ValueOrDefault;
end;

procedure TMaintenanceWindowRunCommandParameters.SetDocumentHashType(const Value: TDocumentHashType);
begin
  FDocumentHashType := Value;
end;

function TMaintenanceWindowRunCommandParameters.IsSetDocumentHashType: Boolean;
begin
  Result := FDocumentHashType.HasValue;
end;

function TMaintenanceWindowRunCommandParameters.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TMaintenanceWindowRunCommandParameters.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TMaintenanceWindowRunCommandParameters.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TMaintenanceWindowRunCommandParameters.GetNotificationConfig: TNotificationConfig;
begin
  Result := FNotificationConfig;
end;

procedure TMaintenanceWindowRunCommandParameters.SetNotificationConfig(const Value: TNotificationConfig);
begin
  if FNotificationConfig <> Value then
  begin
    if not KeepNotificationConfig then
      FNotificationConfig.Free;
    FNotificationConfig := Value;
  end;
end;

function TMaintenanceWindowRunCommandParameters.GetKeepNotificationConfig: Boolean;
begin
  Result := FKeepNotificationConfig;
end;

procedure TMaintenanceWindowRunCommandParameters.SetKeepNotificationConfig(const Value: Boolean);
begin
  FKeepNotificationConfig := Value;
end;

function TMaintenanceWindowRunCommandParameters.IsSetNotificationConfig: Boolean;
begin
  Result := FNotificationConfig <> nil;
end;

function TMaintenanceWindowRunCommandParameters.GetOutputS3BucketName: string;
begin
  Result := FOutputS3BucketName.ValueOrDefault;
end;

procedure TMaintenanceWindowRunCommandParameters.SetOutputS3BucketName(const Value: string);
begin
  FOutputS3BucketName := Value;
end;

function TMaintenanceWindowRunCommandParameters.IsSetOutputS3BucketName: Boolean;
begin
  Result := FOutputS3BucketName.HasValue;
end;

function TMaintenanceWindowRunCommandParameters.GetOutputS3KeyPrefix: string;
begin
  Result := FOutputS3KeyPrefix.ValueOrDefault;
end;

procedure TMaintenanceWindowRunCommandParameters.SetOutputS3KeyPrefix(const Value: string);
begin
  FOutputS3KeyPrefix := Value;
end;

function TMaintenanceWindowRunCommandParameters.IsSetOutputS3KeyPrefix: Boolean;
begin
  Result := FOutputS3KeyPrefix.HasValue;
end;

function TMaintenanceWindowRunCommandParameters.GetParameters: TObjectDictionary<string, TList<string>>;
begin
  Result := FParameters;
end;

procedure TMaintenanceWindowRunCommandParameters.SetParameters(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TMaintenanceWindowRunCommandParameters.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TMaintenanceWindowRunCommandParameters.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TMaintenanceWindowRunCommandParameters.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

function TMaintenanceWindowRunCommandParameters.GetServiceRoleArn: string;
begin
  Result := FServiceRoleArn.ValueOrDefault;
end;

procedure TMaintenanceWindowRunCommandParameters.SetServiceRoleArn(const Value: string);
begin
  FServiceRoleArn := Value;
end;

function TMaintenanceWindowRunCommandParameters.IsSetServiceRoleArn: Boolean;
begin
  Result := FServiceRoleArn.HasValue;
end;

function TMaintenanceWindowRunCommandParameters.GetTimeoutSeconds: Integer;
begin
  Result := FTimeoutSeconds.ValueOrDefault;
end;

procedure TMaintenanceWindowRunCommandParameters.SetTimeoutSeconds(const Value: Integer);
begin
  FTimeoutSeconds := Value;
end;

function TMaintenanceWindowRunCommandParameters.IsSetTimeoutSeconds: Boolean;
begin
  Result := FTimeoutSeconds.HasValue;
end;

end.
