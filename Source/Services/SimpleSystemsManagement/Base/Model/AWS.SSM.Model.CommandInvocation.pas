unit AWS.SSM.Model.CommandInvocation;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.CloudWatchOutputConfig, 
  AWS.Nullable, 
  AWS.SSM.Model.CommandPlugin, 
  AWS.SSM.Model.NotificationConfig, 
  AWS.SSM.Enums;

type
  TCommandInvocation = class;
  
  ICommandInvocation = interface
    function GetCloudWatchOutputConfig: TCloudWatchOutputConfig;
    procedure SetCloudWatchOutputConfig(const Value: TCloudWatchOutputConfig);
    function GetKeepCloudWatchOutputConfig: Boolean;
    procedure SetKeepCloudWatchOutputConfig(const Value: Boolean);
    function GetCommandId: string;
    procedure SetCommandId(const Value: string);
    function GetCommandPlugins: TObjectList<TCommandPlugin>;
    procedure SetCommandPlugins(const Value: TObjectList<TCommandPlugin>);
    function GetKeepCommandPlugins: Boolean;
    procedure SetKeepCommandPlugins(const Value: Boolean);
    function GetComment: string;
    procedure SetComment(const Value: string);
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetInstanceName: string;
    procedure SetInstanceName(const Value: string);
    function GetNotificationConfig: TNotificationConfig;
    procedure SetNotificationConfig(const Value: TNotificationConfig);
    function GetKeepNotificationConfig: Boolean;
    procedure SetKeepNotificationConfig(const Value: Boolean);
    function GetRequestedDateTime: TDateTime;
    procedure SetRequestedDateTime(const Value: TDateTime);
    function GetServiceRole: string;
    procedure SetServiceRole(const Value: string);
    function GetStandardErrorUrl: string;
    procedure SetStandardErrorUrl(const Value: string);
    function GetStandardOutputUrl: string;
    procedure SetStandardOutputUrl(const Value: string);
    function GetStatus: TCommandInvocationStatus;
    procedure SetStatus(const Value: TCommandInvocationStatus);
    function GetStatusDetails: string;
    procedure SetStatusDetails(const Value: string);
    function GetTraceOutput: string;
    procedure SetTraceOutput(const Value: string);
    function Obj: TCommandInvocation;
    function IsSetCloudWatchOutputConfig: Boolean;
    function IsSetCommandId: Boolean;
    function IsSetCommandPlugins: Boolean;
    function IsSetComment: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetInstanceName: Boolean;
    function IsSetNotificationConfig: Boolean;
    function IsSetRequestedDateTime: Boolean;
    function IsSetServiceRole: Boolean;
    function IsSetStandardErrorUrl: Boolean;
    function IsSetStandardOutputUrl: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    function IsSetTraceOutput: Boolean;
    property CloudWatchOutputConfig: TCloudWatchOutputConfig read GetCloudWatchOutputConfig write SetCloudWatchOutputConfig;
    property KeepCloudWatchOutputConfig: Boolean read GetKeepCloudWatchOutputConfig write SetKeepCloudWatchOutputConfig;
    property CommandId: string read GetCommandId write SetCommandId;
    property CommandPlugins: TObjectList<TCommandPlugin> read GetCommandPlugins write SetCommandPlugins;
    property KeepCommandPlugins: Boolean read GetKeepCommandPlugins write SetKeepCommandPlugins;
    property Comment: string read GetComment write SetComment;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property InstanceName: string read GetInstanceName write SetInstanceName;
    property NotificationConfig: TNotificationConfig read GetNotificationConfig write SetNotificationConfig;
    property KeepNotificationConfig: Boolean read GetKeepNotificationConfig write SetKeepNotificationConfig;
    property RequestedDateTime: TDateTime read GetRequestedDateTime write SetRequestedDateTime;
    property ServiceRole: string read GetServiceRole write SetServiceRole;
    property StandardErrorUrl: string read GetStandardErrorUrl write SetStandardErrorUrl;
    property StandardOutputUrl: string read GetStandardOutputUrl write SetStandardOutputUrl;
    property Status: TCommandInvocationStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
    property TraceOutput: string read GetTraceOutput write SetTraceOutput;
  end;
  
  TCommandInvocation = class
  strict private
    FCloudWatchOutputConfig: TCloudWatchOutputConfig;
    FKeepCloudWatchOutputConfig: Boolean;
    FCommandId: Nullable<string>;
    FCommandPlugins: TObjectList<TCommandPlugin>;
    FKeepCommandPlugins: Boolean;
    FComment: Nullable<string>;
    FDocumentName: Nullable<string>;
    FDocumentVersion: Nullable<string>;
    FInstanceId: Nullable<string>;
    FInstanceName: Nullable<string>;
    FNotificationConfig: TNotificationConfig;
    FKeepNotificationConfig: Boolean;
    FRequestedDateTime: Nullable<TDateTime>;
    FServiceRole: Nullable<string>;
    FStandardErrorUrl: Nullable<string>;
    FStandardOutputUrl: Nullable<string>;
    FStatus: Nullable<TCommandInvocationStatus>;
    FStatusDetails: Nullable<string>;
    FTraceOutput: Nullable<string>;
    function GetCloudWatchOutputConfig: TCloudWatchOutputConfig;
    procedure SetCloudWatchOutputConfig(const Value: TCloudWatchOutputConfig);
    function GetKeepCloudWatchOutputConfig: Boolean;
    procedure SetKeepCloudWatchOutputConfig(const Value: Boolean);
    function GetCommandId: string;
    procedure SetCommandId(const Value: string);
    function GetCommandPlugins: TObjectList<TCommandPlugin>;
    procedure SetCommandPlugins(const Value: TObjectList<TCommandPlugin>);
    function GetKeepCommandPlugins: Boolean;
    procedure SetKeepCommandPlugins(const Value: Boolean);
    function GetComment: string;
    procedure SetComment(const Value: string);
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetInstanceName: string;
    procedure SetInstanceName(const Value: string);
    function GetNotificationConfig: TNotificationConfig;
    procedure SetNotificationConfig(const Value: TNotificationConfig);
    function GetKeepNotificationConfig: Boolean;
    procedure SetKeepNotificationConfig(const Value: Boolean);
    function GetRequestedDateTime: TDateTime;
    procedure SetRequestedDateTime(const Value: TDateTime);
    function GetServiceRole: string;
    procedure SetServiceRole(const Value: string);
    function GetStandardErrorUrl: string;
    procedure SetStandardErrorUrl(const Value: string);
    function GetStandardOutputUrl: string;
    procedure SetStandardOutputUrl(const Value: string);
    function GetStatus: TCommandInvocationStatus;
    procedure SetStatus(const Value: TCommandInvocationStatus);
    function GetStatusDetails: string;
    procedure SetStatusDetails(const Value: string);
    function GetTraceOutput: string;
    procedure SetTraceOutput(const Value: string);
  strict protected
    function Obj: TCommandInvocation;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCloudWatchOutputConfig: Boolean;
    function IsSetCommandId: Boolean;
    function IsSetCommandPlugins: Boolean;
    function IsSetComment: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetInstanceName: Boolean;
    function IsSetNotificationConfig: Boolean;
    function IsSetRequestedDateTime: Boolean;
    function IsSetServiceRole: Boolean;
    function IsSetStandardErrorUrl: Boolean;
    function IsSetStandardOutputUrl: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    function IsSetTraceOutput: Boolean;
    property CloudWatchOutputConfig: TCloudWatchOutputConfig read GetCloudWatchOutputConfig write SetCloudWatchOutputConfig;
    property KeepCloudWatchOutputConfig: Boolean read GetKeepCloudWatchOutputConfig write SetKeepCloudWatchOutputConfig;
    property CommandId: string read GetCommandId write SetCommandId;
    property CommandPlugins: TObjectList<TCommandPlugin> read GetCommandPlugins write SetCommandPlugins;
    property KeepCommandPlugins: Boolean read GetKeepCommandPlugins write SetKeepCommandPlugins;
    property Comment: string read GetComment write SetComment;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property InstanceName: string read GetInstanceName write SetInstanceName;
    property NotificationConfig: TNotificationConfig read GetNotificationConfig write SetNotificationConfig;
    property KeepNotificationConfig: Boolean read GetKeepNotificationConfig write SetKeepNotificationConfig;
    property RequestedDateTime: TDateTime read GetRequestedDateTime write SetRequestedDateTime;
    property ServiceRole: string read GetServiceRole write SetServiceRole;
    property StandardErrorUrl: string read GetStandardErrorUrl write SetStandardErrorUrl;
    property StandardOutputUrl: string read GetStandardOutputUrl write SetStandardOutputUrl;
    property Status: TCommandInvocationStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
    property TraceOutput: string read GetTraceOutput write SetTraceOutput;
  end;
  
implementation

{ TCommandInvocation }

constructor TCommandInvocation.Create;
begin
  inherited;
  FCommandPlugins := TObjectList<TCommandPlugin>.Create;
end;

destructor TCommandInvocation.Destroy;
begin
  NotificationConfig := nil;
  CommandPlugins := nil;
  CloudWatchOutputConfig := nil;
  inherited;
end;

function TCommandInvocation.Obj: TCommandInvocation;
begin
  Result := Self;
end;

function TCommandInvocation.GetCloudWatchOutputConfig: TCloudWatchOutputConfig;
begin
  Result := FCloudWatchOutputConfig;
end;

procedure TCommandInvocation.SetCloudWatchOutputConfig(const Value: TCloudWatchOutputConfig);
begin
  if FCloudWatchOutputConfig <> Value then
  begin
    if not KeepCloudWatchOutputConfig then
      FCloudWatchOutputConfig.Free;
    FCloudWatchOutputConfig := Value;
  end;
end;

function TCommandInvocation.GetKeepCloudWatchOutputConfig: Boolean;
begin
  Result := FKeepCloudWatchOutputConfig;
end;

procedure TCommandInvocation.SetKeepCloudWatchOutputConfig(const Value: Boolean);
begin
  FKeepCloudWatchOutputConfig := Value;
end;

function TCommandInvocation.IsSetCloudWatchOutputConfig: Boolean;
begin
  Result := FCloudWatchOutputConfig <> nil;
end;

function TCommandInvocation.GetCommandId: string;
begin
  Result := FCommandId.ValueOrDefault;
end;

procedure TCommandInvocation.SetCommandId(const Value: string);
begin
  FCommandId := Value;
end;

function TCommandInvocation.IsSetCommandId: Boolean;
begin
  Result := FCommandId.HasValue;
end;

function TCommandInvocation.GetCommandPlugins: TObjectList<TCommandPlugin>;
begin
  Result := FCommandPlugins;
end;

procedure TCommandInvocation.SetCommandPlugins(const Value: TObjectList<TCommandPlugin>);
begin
  if FCommandPlugins <> Value then
  begin
    if not KeepCommandPlugins then
      FCommandPlugins.Free;
    FCommandPlugins := Value;
  end;
end;

function TCommandInvocation.GetKeepCommandPlugins: Boolean;
begin
  Result := FKeepCommandPlugins;
end;

procedure TCommandInvocation.SetKeepCommandPlugins(const Value: Boolean);
begin
  FKeepCommandPlugins := Value;
end;

function TCommandInvocation.IsSetCommandPlugins: Boolean;
begin
  Result := (FCommandPlugins <> nil) and (FCommandPlugins.Count > 0);
end;

function TCommandInvocation.GetComment: string;
begin
  Result := FComment.ValueOrDefault;
end;

procedure TCommandInvocation.SetComment(const Value: string);
begin
  FComment := Value;
end;

function TCommandInvocation.IsSetComment: Boolean;
begin
  Result := FComment.HasValue;
end;

function TCommandInvocation.GetDocumentName: string;
begin
  Result := FDocumentName.ValueOrDefault;
end;

procedure TCommandInvocation.SetDocumentName(const Value: string);
begin
  FDocumentName := Value;
end;

function TCommandInvocation.IsSetDocumentName: Boolean;
begin
  Result := FDocumentName.HasValue;
end;

function TCommandInvocation.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TCommandInvocation.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TCommandInvocation.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TCommandInvocation.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TCommandInvocation.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TCommandInvocation.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TCommandInvocation.GetInstanceName: string;
begin
  Result := FInstanceName.ValueOrDefault;
end;

procedure TCommandInvocation.SetInstanceName(const Value: string);
begin
  FInstanceName := Value;
end;

function TCommandInvocation.IsSetInstanceName: Boolean;
begin
  Result := FInstanceName.HasValue;
end;

function TCommandInvocation.GetNotificationConfig: TNotificationConfig;
begin
  Result := FNotificationConfig;
end;

procedure TCommandInvocation.SetNotificationConfig(const Value: TNotificationConfig);
begin
  if FNotificationConfig <> Value then
  begin
    if not KeepNotificationConfig then
      FNotificationConfig.Free;
    FNotificationConfig := Value;
  end;
end;

function TCommandInvocation.GetKeepNotificationConfig: Boolean;
begin
  Result := FKeepNotificationConfig;
end;

procedure TCommandInvocation.SetKeepNotificationConfig(const Value: Boolean);
begin
  FKeepNotificationConfig := Value;
end;

function TCommandInvocation.IsSetNotificationConfig: Boolean;
begin
  Result := FNotificationConfig <> nil;
end;

function TCommandInvocation.GetRequestedDateTime: TDateTime;
begin
  Result := FRequestedDateTime.ValueOrDefault;
end;

procedure TCommandInvocation.SetRequestedDateTime(const Value: TDateTime);
begin
  FRequestedDateTime := Value;
end;

function TCommandInvocation.IsSetRequestedDateTime: Boolean;
begin
  Result := FRequestedDateTime.HasValue;
end;

function TCommandInvocation.GetServiceRole: string;
begin
  Result := FServiceRole.ValueOrDefault;
end;

procedure TCommandInvocation.SetServiceRole(const Value: string);
begin
  FServiceRole := Value;
end;

function TCommandInvocation.IsSetServiceRole: Boolean;
begin
  Result := FServiceRole.HasValue;
end;

function TCommandInvocation.GetStandardErrorUrl: string;
begin
  Result := FStandardErrorUrl.ValueOrDefault;
end;

procedure TCommandInvocation.SetStandardErrorUrl(const Value: string);
begin
  FStandardErrorUrl := Value;
end;

function TCommandInvocation.IsSetStandardErrorUrl: Boolean;
begin
  Result := FStandardErrorUrl.HasValue;
end;

function TCommandInvocation.GetStandardOutputUrl: string;
begin
  Result := FStandardOutputUrl.ValueOrDefault;
end;

procedure TCommandInvocation.SetStandardOutputUrl(const Value: string);
begin
  FStandardOutputUrl := Value;
end;

function TCommandInvocation.IsSetStandardOutputUrl: Boolean;
begin
  Result := FStandardOutputUrl.HasValue;
end;

function TCommandInvocation.GetStatus: TCommandInvocationStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TCommandInvocation.SetStatus(const Value: TCommandInvocationStatus);
begin
  FStatus := Value;
end;

function TCommandInvocation.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TCommandInvocation.GetStatusDetails: string;
begin
  Result := FStatusDetails.ValueOrDefault;
end;

procedure TCommandInvocation.SetStatusDetails(const Value: string);
begin
  FStatusDetails := Value;
end;

function TCommandInvocation.IsSetStatusDetails: Boolean;
begin
  Result := FStatusDetails.HasValue;
end;

function TCommandInvocation.GetTraceOutput: string;
begin
  Result := FTraceOutput.ValueOrDefault;
end;

procedure TCommandInvocation.SetTraceOutput(const Value: string);
begin
  FTraceOutput := Value;
end;

function TCommandInvocation.IsSetTraceOutput: Boolean;
begin
  Result := FTraceOutput.HasValue;
end;

end.
