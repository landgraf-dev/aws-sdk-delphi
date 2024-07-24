unit AWS.SSM.Model.GetCommandInvocationResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SSM.Model.CloudWatchOutputConfig, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TGetCommandInvocationResponse = class;
  
  IGetCommandInvocationResponse = interface(IAmazonWebServiceResponse)
    function GetCloudWatchOutputConfig: TCloudWatchOutputConfig;
    procedure SetCloudWatchOutputConfig(const Value: TCloudWatchOutputConfig);
    function GetKeepCloudWatchOutputConfig: Boolean;
    procedure SetKeepCloudWatchOutputConfig(const Value: Boolean);
    function GetCommandId: string;
    procedure SetCommandId(const Value: string);
    function GetComment: string;
    procedure SetComment(const Value: string);
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetExecutionElapsedTime: string;
    procedure SetExecutionElapsedTime(const Value: string);
    function GetExecutionEndDateTime: string;
    procedure SetExecutionEndDateTime(const Value: string);
    function GetExecutionStartDateTime: string;
    procedure SetExecutionStartDateTime(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetPluginName: string;
    procedure SetPluginName(const Value: string);
    function GetResponseCode: Integer;
    procedure SetResponseCode(const Value: Integer);
    function GetStandardErrorContent: string;
    procedure SetStandardErrorContent(const Value: string);
    function GetStandardErrorUrl: string;
    procedure SetStandardErrorUrl(const Value: string);
    function GetStandardOutputContent: string;
    procedure SetStandardOutputContent(const Value: string);
    function GetStandardOutputUrl: string;
    procedure SetStandardOutputUrl(const Value: string);
    function GetStatus: TCommandInvocationStatus;
    procedure SetStatus(const Value: TCommandInvocationStatus);
    function GetStatusDetails: string;
    procedure SetStatusDetails(const Value: string);
    function Obj: TGetCommandInvocationResponse;
    function IsSetCloudWatchOutputConfig: Boolean;
    function IsSetCommandId: Boolean;
    function IsSetComment: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetExecutionElapsedTime: Boolean;
    function IsSetExecutionEndDateTime: Boolean;
    function IsSetExecutionStartDateTime: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetPluginName: Boolean;
    function IsSetResponseCode: Boolean;
    function IsSetStandardErrorContent: Boolean;
    function IsSetStandardErrorUrl: Boolean;
    function IsSetStandardOutputContent: Boolean;
    function IsSetStandardOutputUrl: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    property CloudWatchOutputConfig: TCloudWatchOutputConfig read GetCloudWatchOutputConfig write SetCloudWatchOutputConfig;
    property KeepCloudWatchOutputConfig: Boolean read GetKeepCloudWatchOutputConfig write SetKeepCloudWatchOutputConfig;
    property CommandId: string read GetCommandId write SetCommandId;
    property Comment: string read GetComment write SetComment;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property ExecutionElapsedTime: string read GetExecutionElapsedTime write SetExecutionElapsedTime;
    property ExecutionEndDateTime: string read GetExecutionEndDateTime write SetExecutionEndDateTime;
    property ExecutionStartDateTime: string read GetExecutionStartDateTime write SetExecutionStartDateTime;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property PluginName: string read GetPluginName write SetPluginName;
    property ResponseCode: Integer read GetResponseCode write SetResponseCode;
    property StandardErrorContent: string read GetStandardErrorContent write SetStandardErrorContent;
    property StandardErrorUrl: string read GetStandardErrorUrl write SetStandardErrorUrl;
    property StandardOutputContent: string read GetStandardOutputContent write SetStandardOutputContent;
    property StandardOutputUrl: string read GetStandardOutputUrl write SetStandardOutputUrl;
    property Status: TCommandInvocationStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
  end;
  
  TGetCommandInvocationResponse = class(TAmazonWebServiceResponse, IGetCommandInvocationResponse)
  strict private
    FCloudWatchOutputConfig: TCloudWatchOutputConfig;
    FKeepCloudWatchOutputConfig: Boolean;
    FCommandId: Nullable<string>;
    FComment: Nullable<string>;
    FDocumentName: Nullable<string>;
    FDocumentVersion: Nullable<string>;
    FExecutionElapsedTime: Nullable<string>;
    FExecutionEndDateTime: Nullable<string>;
    FExecutionStartDateTime: Nullable<string>;
    FInstanceId: Nullable<string>;
    FPluginName: Nullable<string>;
    FResponseCode: Nullable<Integer>;
    FStandardErrorContent: Nullable<string>;
    FStandardErrorUrl: Nullable<string>;
    FStandardOutputContent: Nullable<string>;
    FStandardOutputUrl: Nullable<string>;
    FStatus: Nullable<TCommandInvocationStatus>;
    FStatusDetails: Nullable<string>;
    function GetCloudWatchOutputConfig: TCloudWatchOutputConfig;
    procedure SetCloudWatchOutputConfig(const Value: TCloudWatchOutputConfig);
    function GetKeepCloudWatchOutputConfig: Boolean;
    procedure SetKeepCloudWatchOutputConfig(const Value: Boolean);
    function GetCommandId: string;
    procedure SetCommandId(const Value: string);
    function GetComment: string;
    procedure SetComment(const Value: string);
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetExecutionElapsedTime: string;
    procedure SetExecutionElapsedTime(const Value: string);
    function GetExecutionEndDateTime: string;
    procedure SetExecutionEndDateTime(const Value: string);
    function GetExecutionStartDateTime: string;
    procedure SetExecutionStartDateTime(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetPluginName: string;
    procedure SetPluginName(const Value: string);
    function GetResponseCode: Integer;
    procedure SetResponseCode(const Value: Integer);
    function GetStandardErrorContent: string;
    procedure SetStandardErrorContent(const Value: string);
    function GetStandardErrorUrl: string;
    procedure SetStandardErrorUrl(const Value: string);
    function GetStandardOutputContent: string;
    procedure SetStandardOutputContent(const Value: string);
    function GetStandardOutputUrl: string;
    procedure SetStandardOutputUrl(const Value: string);
    function GetStatus: TCommandInvocationStatus;
    procedure SetStatus(const Value: TCommandInvocationStatus);
    function GetStatusDetails: string;
    procedure SetStatusDetails(const Value: string);
  strict protected
    function Obj: TGetCommandInvocationResponse;
  public
    destructor Destroy; override;
    function IsSetCloudWatchOutputConfig: Boolean;
    function IsSetCommandId: Boolean;
    function IsSetComment: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetExecutionElapsedTime: Boolean;
    function IsSetExecutionEndDateTime: Boolean;
    function IsSetExecutionStartDateTime: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetPluginName: Boolean;
    function IsSetResponseCode: Boolean;
    function IsSetStandardErrorContent: Boolean;
    function IsSetStandardErrorUrl: Boolean;
    function IsSetStandardOutputContent: Boolean;
    function IsSetStandardOutputUrl: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    property CloudWatchOutputConfig: TCloudWatchOutputConfig read GetCloudWatchOutputConfig write SetCloudWatchOutputConfig;
    property KeepCloudWatchOutputConfig: Boolean read GetKeepCloudWatchOutputConfig write SetKeepCloudWatchOutputConfig;
    property CommandId: string read GetCommandId write SetCommandId;
    property Comment: string read GetComment write SetComment;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property ExecutionElapsedTime: string read GetExecutionElapsedTime write SetExecutionElapsedTime;
    property ExecutionEndDateTime: string read GetExecutionEndDateTime write SetExecutionEndDateTime;
    property ExecutionStartDateTime: string read GetExecutionStartDateTime write SetExecutionStartDateTime;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property PluginName: string read GetPluginName write SetPluginName;
    property ResponseCode: Integer read GetResponseCode write SetResponseCode;
    property StandardErrorContent: string read GetStandardErrorContent write SetStandardErrorContent;
    property StandardErrorUrl: string read GetStandardErrorUrl write SetStandardErrorUrl;
    property StandardOutputContent: string read GetStandardOutputContent write SetStandardOutputContent;
    property StandardOutputUrl: string read GetStandardOutputUrl write SetStandardOutputUrl;
    property Status: TCommandInvocationStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
  end;
  
implementation

{ TGetCommandInvocationResponse }

destructor TGetCommandInvocationResponse.Destroy;
begin
  CloudWatchOutputConfig := nil;
  inherited;
end;

function TGetCommandInvocationResponse.Obj: TGetCommandInvocationResponse;
begin
  Result := Self;
end;

function TGetCommandInvocationResponse.GetCloudWatchOutputConfig: TCloudWatchOutputConfig;
begin
  Result := FCloudWatchOutputConfig;
end;

procedure TGetCommandInvocationResponse.SetCloudWatchOutputConfig(const Value: TCloudWatchOutputConfig);
begin
  if FCloudWatchOutputConfig <> Value then
  begin
    if not KeepCloudWatchOutputConfig then
      FCloudWatchOutputConfig.Free;
    FCloudWatchOutputConfig := Value;
  end;
end;

function TGetCommandInvocationResponse.GetKeepCloudWatchOutputConfig: Boolean;
begin
  Result := FKeepCloudWatchOutputConfig;
end;

procedure TGetCommandInvocationResponse.SetKeepCloudWatchOutputConfig(const Value: Boolean);
begin
  FKeepCloudWatchOutputConfig := Value;
end;

function TGetCommandInvocationResponse.IsSetCloudWatchOutputConfig: Boolean;
begin
  Result := FCloudWatchOutputConfig <> nil;
end;

function TGetCommandInvocationResponse.GetCommandId: string;
begin
  Result := FCommandId.ValueOrDefault;
end;

procedure TGetCommandInvocationResponse.SetCommandId(const Value: string);
begin
  FCommandId := Value;
end;

function TGetCommandInvocationResponse.IsSetCommandId: Boolean;
begin
  Result := FCommandId.HasValue;
end;

function TGetCommandInvocationResponse.GetComment: string;
begin
  Result := FComment.ValueOrDefault;
end;

procedure TGetCommandInvocationResponse.SetComment(const Value: string);
begin
  FComment := Value;
end;

function TGetCommandInvocationResponse.IsSetComment: Boolean;
begin
  Result := FComment.HasValue;
end;

function TGetCommandInvocationResponse.GetDocumentName: string;
begin
  Result := FDocumentName.ValueOrDefault;
end;

procedure TGetCommandInvocationResponse.SetDocumentName(const Value: string);
begin
  FDocumentName := Value;
end;

function TGetCommandInvocationResponse.IsSetDocumentName: Boolean;
begin
  Result := FDocumentName.HasValue;
end;

function TGetCommandInvocationResponse.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TGetCommandInvocationResponse.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TGetCommandInvocationResponse.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TGetCommandInvocationResponse.GetExecutionElapsedTime: string;
begin
  Result := FExecutionElapsedTime.ValueOrDefault;
end;

procedure TGetCommandInvocationResponse.SetExecutionElapsedTime(const Value: string);
begin
  FExecutionElapsedTime := Value;
end;

function TGetCommandInvocationResponse.IsSetExecutionElapsedTime: Boolean;
begin
  Result := FExecutionElapsedTime.HasValue;
end;

function TGetCommandInvocationResponse.GetExecutionEndDateTime: string;
begin
  Result := FExecutionEndDateTime.ValueOrDefault;
end;

procedure TGetCommandInvocationResponse.SetExecutionEndDateTime(const Value: string);
begin
  FExecutionEndDateTime := Value;
end;

function TGetCommandInvocationResponse.IsSetExecutionEndDateTime: Boolean;
begin
  Result := FExecutionEndDateTime.HasValue;
end;

function TGetCommandInvocationResponse.GetExecutionStartDateTime: string;
begin
  Result := FExecutionStartDateTime.ValueOrDefault;
end;

procedure TGetCommandInvocationResponse.SetExecutionStartDateTime(const Value: string);
begin
  FExecutionStartDateTime := Value;
end;

function TGetCommandInvocationResponse.IsSetExecutionStartDateTime: Boolean;
begin
  Result := FExecutionStartDateTime.HasValue;
end;

function TGetCommandInvocationResponse.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TGetCommandInvocationResponse.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TGetCommandInvocationResponse.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TGetCommandInvocationResponse.GetPluginName: string;
begin
  Result := FPluginName.ValueOrDefault;
end;

procedure TGetCommandInvocationResponse.SetPluginName(const Value: string);
begin
  FPluginName := Value;
end;

function TGetCommandInvocationResponse.IsSetPluginName: Boolean;
begin
  Result := FPluginName.HasValue;
end;

function TGetCommandInvocationResponse.GetResponseCode: Integer;
begin
  Result := FResponseCode.ValueOrDefault;
end;

procedure TGetCommandInvocationResponse.SetResponseCode(const Value: Integer);
begin
  FResponseCode := Value;
end;

function TGetCommandInvocationResponse.IsSetResponseCode: Boolean;
begin
  Result := FResponseCode.HasValue;
end;

function TGetCommandInvocationResponse.GetStandardErrorContent: string;
begin
  Result := FStandardErrorContent.ValueOrDefault;
end;

procedure TGetCommandInvocationResponse.SetStandardErrorContent(const Value: string);
begin
  FStandardErrorContent := Value;
end;

function TGetCommandInvocationResponse.IsSetStandardErrorContent: Boolean;
begin
  Result := FStandardErrorContent.HasValue;
end;

function TGetCommandInvocationResponse.GetStandardErrorUrl: string;
begin
  Result := FStandardErrorUrl.ValueOrDefault;
end;

procedure TGetCommandInvocationResponse.SetStandardErrorUrl(const Value: string);
begin
  FStandardErrorUrl := Value;
end;

function TGetCommandInvocationResponse.IsSetStandardErrorUrl: Boolean;
begin
  Result := FStandardErrorUrl.HasValue;
end;

function TGetCommandInvocationResponse.GetStandardOutputContent: string;
begin
  Result := FStandardOutputContent.ValueOrDefault;
end;

procedure TGetCommandInvocationResponse.SetStandardOutputContent(const Value: string);
begin
  FStandardOutputContent := Value;
end;

function TGetCommandInvocationResponse.IsSetStandardOutputContent: Boolean;
begin
  Result := FStandardOutputContent.HasValue;
end;

function TGetCommandInvocationResponse.GetStandardOutputUrl: string;
begin
  Result := FStandardOutputUrl.ValueOrDefault;
end;

procedure TGetCommandInvocationResponse.SetStandardOutputUrl(const Value: string);
begin
  FStandardOutputUrl := Value;
end;

function TGetCommandInvocationResponse.IsSetStandardOutputUrl: Boolean;
begin
  Result := FStandardOutputUrl.HasValue;
end;

function TGetCommandInvocationResponse.GetStatus: TCommandInvocationStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TGetCommandInvocationResponse.SetStatus(const Value: TCommandInvocationStatus);
begin
  FStatus := Value;
end;

function TGetCommandInvocationResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TGetCommandInvocationResponse.GetStatusDetails: string;
begin
  Result := FStatusDetails.ValueOrDefault;
end;

procedure TGetCommandInvocationResponse.SetStatusDetails(const Value: string);
begin
  FStatusDetails := Value;
end;

function TGetCommandInvocationResponse.IsSetStatusDetails: Boolean;
begin
  Result := FStatusDetails.HasValue;
end;

end.
