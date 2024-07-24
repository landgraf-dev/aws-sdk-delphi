unit AWS.SSM.Model.InstanceInformation;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Model.InstanceAggregatedAssociationOverview, 
  AWS.SSM.Enums;

type
  TInstanceInformation = class;
  
  IInstanceInformation = interface
    function GetActivationId: string;
    procedure SetActivationId(const Value: string);
    function GetAgentVersion: string;
    procedure SetAgentVersion(const Value: string);
    function GetAssociationOverview: TInstanceAggregatedAssociationOverview;
    procedure SetAssociationOverview(const Value: TInstanceAggregatedAssociationOverview);
    function GetKeepAssociationOverview: Boolean;
    procedure SetKeepAssociationOverview(const Value: Boolean);
    function GetAssociationStatus: string;
    procedure SetAssociationStatus(const Value: string);
    function GetComputerName: string;
    procedure SetComputerName(const Value: string);
    function GetIPAddress: string;
    procedure SetIPAddress(const Value: string);
    function GetIamRole: string;
    procedure SetIamRole(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetIsLatestVersion: Boolean;
    procedure SetIsLatestVersion(const Value: Boolean);
    function GetLastAssociationExecutionDate: TDateTime;
    procedure SetLastAssociationExecutionDate(const Value: TDateTime);
    function GetLastPingDateTime: TDateTime;
    procedure SetLastPingDateTime(const Value: TDateTime);
    function GetLastSuccessfulAssociationExecutionDate: TDateTime;
    procedure SetLastSuccessfulAssociationExecutionDate(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPingStatus: TPingStatus;
    procedure SetPingStatus(const Value: TPingStatus);
    function GetPlatformName: string;
    procedure SetPlatformName(const Value: string);
    function GetPlatformType: TPlatformType;
    procedure SetPlatformType(const Value: TPlatformType);
    function GetPlatformVersion: string;
    procedure SetPlatformVersion(const Value: string);
    function GetRegistrationDate: TDateTime;
    procedure SetRegistrationDate(const Value: TDateTime);
    function GetResourceType: TResourceType;
    procedure SetResourceType(const Value: TResourceType);
    function GetSourceId: string;
    procedure SetSourceId(const Value: string);
    function GetSourceType: TSourceType;
    procedure SetSourceType(const Value: TSourceType);
    function Obj: TInstanceInformation;
    function IsSetActivationId: Boolean;
    function IsSetAgentVersion: Boolean;
    function IsSetAssociationOverview: Boolean;
    function IsSetAssociationStatus: Boolean;
    function IsSetComputerName: Boolean;
    function IsSetIPAddress: Boolean;
    function IsSetIamRole: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetIsLatestVersion: Boolean;
    function IsSetLastAssociationExecutionDate: Boolean;
    function IsSetLastPingDateTime: Boolean;
    function IsSetLastSuccessfulAssociationExecutionDate: Boolean;
    function IsSetName: Boolean;
    function IsSetPingStatus: Boolean;
    function IsSetPlatformName: Boolean;
    function IsSetPlatformType: Boolean;
    function IsSetPlatformVersion: Boolean;
    function IsSetRegistrationDate: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetSourceId: Boolean;
    function IsSetSourceType: Boolean;
    property ActivationId: string read GetActivationId write SetActivationId;
    property AgentVersion: string read GetAgentVersion write SetAgentVersion;
    property AssociationOverview: TInstanceAggregatedAssociationOverview read GetAssociationOverview write SetAssociationOverview;
    property KeepAssociationOverview: Boolean read GetKeepAssociationOverview write SetKeepAssociationOverview;
    property AssociationStatus: string read GetAssociationStatus write SetAssociationStatus;
    property ComputerName: string read GetComputerName write SetComputerName;
    property IPAddress: string read GetIPAddress write SetIPAddress;
    property IamRole: string read GetIamRole write SetIamRole;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property IsLatestVersion: Boolean read GetIsLatestVersion write SetIsLatestVersion;
    property LastAssociationExecutionDate: TDateTime read GetLastAssociationExecutionDate write SetLastAssociationExecutionDate;
    property LastPingDateTime: TDateTime read GetLastPingDateTime write SetLastPingDateTime;
    property LastSuccessfulAssociationExecutionDate: TDateTime read GetLastSuccessfulAssociationExecutionDate write SetLastSuccessfulAssociationExecutionDate;
    property Name: string read GetName write SetName;
    property PingStatus: TPingStatus read GetPingStatus write SetPingStatus;
    property PlatformName: string read GetPlatformName write SetPlatformName;
    property PlatformType: TPlatformType read GetPlatformType write SetPlatformType;
    property PlatformVersion: string read GetPlatformVersion write SetPlatformVersion;
    property RegistrationDate: TDateTime read GetRegistrationDate write SetRegistrationDate;
    property ResourceType: TResourceType read GetResourceType write SetResourceType;
    property SourceId: string read GetSourceId write SetSourceId;
    property SourceType: TSourceType read GetSourceType write SetSourceType;
  end;
  
  TInstanceInformation = class
  strict private
    FActivationId: Nullable<string>;
    FAgentVersion: Nullable<string>;
    FAssociationOverview: TInstanceAggregatedAssociationOverview;
    FKeepAssociationOverview: Boolean;
    FAssociationStatus: Nullable<string>;
    FComputerName: Nullable<string>;
    FIPAddress: Nullable<string>;
    FIamRole: Nullable<string>;
    FInstanceId: Nullable<string>;
    FIsLatestVersion: Nullable<Boolean>;
    FLastAssociationExecutionDate: Nullable<TDateTime>;
    FLastPingDateTime: Nullable<TDateTime>;
    FLastSuccessfulAssociationExecutionDate: Nullable<TDateTime>;
    FName: Nullable<string>;
    FPingStatus: Nullable<TPingStatus>;
    FPlatformName: Nullable<string>;
    FPlatformType: Nullable<TPlatformType>;
    FPlatformVersion: Nullable<string>;
    FRegistrationDate: Nullable<TDateTime>;
    FResourceType: Nullable<TResourceType>;
    FSourceId: Nullable<string>;
    FSourceType: Nullable<TSourceType>;
    function GetActivationId: string;
    procedure SetActivationId(const Value: string);
    function GetAgentVersion: string;
    procedure SetAgentVersion(const Value: string);
    function GetAssociationOverview: TInstanceAggregatedAssociationOverview;
    procedure SetAssociationOverview(const Value: TInstanceAggregatedAssociationOverview);
    function GetKeepAssociationOverview: Boolean;
    procedure SetKeepAssociationOverview(const Value: Boolean);
    function GetAssociationStatus: string;
    procedure SetAssociationStatus(const Value: string);
    function GetComputerName: string;
    procedure SetComputerName(const Value: string);
    function GetIPAddress: string;
    procedure SetIPAddress(const Value: string);
    function GetIamRole: string;
    procedure SetIamRole(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetIsLatestVersion: Boolean;
    procedure SetIsLatestVersion(const Value: Boolean);
    function GetLastAssociationExecutionDate: TDateTime;
    procedure SetLastAssociationExecutionDate(const Value: TDateTime);
    function GetLastPingDateTime: TDateTime;
    procedure SetLastPingDateTime(const Value: TDateTime);
    function GetLastSuccessfulAssociationExecutionDate: TDateTime;
    procedure SetLastSuccessfulAssociationExecutionDate(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPingStatus: TPingStatus;
    procedure SetPingStatus(const Value: TPingStatus);
    function GetPlatformName: string;
    procedure SetPlatformName(const Value: string);
    function GetPlatformType: TPlatformType;
    procedure SetPlatformType(const Value: TPlatformType);
    function GetPlatformVersion: string;
    procedure SetPlatformVersion(const Value: string);
    function GetRegistrationDate: TDateTime;
    procedure SetRegistrationDate(const Value: TDateTime);
    function GetResourceType: TResourceType;
    procedure SetResourceType(const Value: TResourceType);
    function GetSourceId: string;
    procedure SetSourceId(const Value: string);
    function GetSourceType: TSourceType;
    procedure SetSourceType(const Value: TSourceType);
  strict protected
    function Obj: TInstanceInformation;
  public
    destructor Destroy; override;
    function IsSetActivationId: Boolean;
    function IsSetAgentVersion: Boolean;
    function IsSetAssociationOverview: Boolean;
    function IsSetAssociationStatus: Boolean;
    function IsSetComputerName: Boolean;
    function IsSetIPAddress: Boolean;
    function IsSetIamRole: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetIsLatestVersion: Boolean;
    function IsSetLastAssociationExecutionDate: Boolean;
    function IsSetLastPingDateTime: Boolean;
    function IsSetLastSuccessfulAssociationExecutionDate: Boolean;
    function IsSetName: Boolean;
    function IsSetPingStatus: Boolean;
    function IsSetPlatformName: Boolean;
    function IsSetPlatformType: Boolean;
    function IsSetPlatformVersion: Boolean;
    function IsSetRegistrationDate: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetSourceId: Boolean;
    function IsSetSourceType: Boolean;
    property ActivationId: string read GetActivationId write SetActivationId;
    property AgentVersion: string read GetAgentVersion write SetAgentVersion;
    property AssociationOverview: TInstanceAggregatedAssociationOverview read GetAssociationOverview write SetAssociationOverview;
    property KeepAssociationOverview: Boolean read GetKeepAssociationOverview write SetKeepAssociationOverview;
    property AssociationStatus: string read GetAssociationStatus write SetAssociationStatus;
    property ComputerName: string read GetComputerName write SetComputerName;
    property IPAddress: string read GetIPAddress write SetIPAddress;
    property IamRole: string read GetIamRole write SetIamRole;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property IsLatestVersion: Boolean read GetIsLatestVersion write SetIsLatestVersion;
    property LastAssociationExecutionDate: TDateTime read GetLastAssociationExecutionDate write SetLastAssociationExecutionDate;
    property LastPingDateTime: TDateTime read GetLastPingDateTime write SetLastPingDateTime;
    property LastSuccessfulAssociationExecutionDate: TDateTime read GetLastSuccessfulAssociationExecutionDate write SetLastSuccessfulAssociationExecutionDate;
    property Name: string read GetName write SetName;
    property PingStatus: TPingStatus read GetPingStatus write SetPingStatus;
    property PlatformName: string read GetPlatformName write SetPlatformName;
    property PlatformType: TPlatformType read GetPlatformType write SetPlatformType;
    property PlatformVersion: string read GetPlatformVersion write SetPlatformVersion;
    property RegistrationDate: TDateTime read GetRegistrationDate write SetRegistrationDate;
    property ResourceType: TResourceType read GetResourceType write SetResourceType;
    property SourceId: string read GetSourceId write SetSourceId;
    property SourceType: TSourceType read GetSourceType write SetSourceType;
  end;
  
implementation

{ TInstanceInformation }

destructor TInstanceInformation.Destroy;
begin
  AssociationOverview := nil;
  inherited;
end;

function TInstanceInformation.Obj: TInstanceInformation;
begin
  Result := Self;
end;

function TInstanceInformation.GetActivationId: string;
begin
  Result := FActivationId.ValueOrDefault;
end;

procedure TInstanceInformation.SetActivationId(const Value: string);
begin
  FActivationId := Value;
end;

function TInstanceInformation.IsSetActivationId: Boolean;
begin
  Result := FActivationId.HasValue;
end;

function TInstanceInformation.GetAgentVersion: string;
begin
  Result := FAgentVersion.ValueOrDefault;
end;

procedure TInstanceInformation.SetAgentVersion(const Value: string);
begin
  FAgentVersion := Value;
end;

function TInstanceInformation.IsSetAgentVersion: Boolean;
begin
  Result := FAgentVersion.HasValue;
end;

function TInstanceInformation.GetAssociationOverview: TInstanceAggregatedAssociationOverview;
begin
  Result := FAssociationOverview;
end;

procedure TInstanceInformation.SetAssociationOverview(const Value: TInstanceAggregatedAssociationOverview);
begin
  if FAssociationOverview <> Value then
  begin
    if not KeepAssociationOverview then
      FAssociationOverview.Free;
    FAssociationOverview := Value;
  end;
end;

function TInstanceInformation.GetKeepAssociationOverview: Boolean;
begin
  Result := FKeepAssociationOverview;
end;

procedure TInstanceInformation.SetKeepAssociationOverview(const Value: Boolean);
begin
  FKeepAssociationOverview := Value;
end;

function TInstanceInformation.IsSetAssociationOverview: Boolean;
begin
  Result := FAssociationOverview <> nil;
end;

function TInstanceInformation.GetAssociationStatus: string;
begin
  Result := FAssociationStatus.ValueOrDefault;
end;

procedure TInstanceInformation.SetAssociationStatus(const Value: string);
begin
  FAssociationStatus := Value;
end;

function TInstanceInformation.IsSetAssociationStatus: Boolean;
begin
  Result := FAssociationStatus.HasValue;
end;

function TInstanceInformation.GetComputerName: string;
begin
  Result := FComputerName.ValueOrDefault;
end;

procedure TInstanceInformation.SetComputerName(const Value: string);
begin
  FComputerName := Value;
end;

function TInstanceInformation.IsSetComputerName: Boolean;
begin
  Result := FComputerName.HasValue;
end;

function TInstanceInformation.GetIPAddress: string;
begin
  Result := FIPAddress.ValueOrDefault;
end;

procedure TInstanceInformation.SetIPAddress(const Value: string);
begin
  FIPAddress := Value;
end;

function TInstanceInformation.IsSetIPAddress: Boolean;
begin
  Result := FIPAddress.HasValue;
end;

function TInstanceInformation.GetIamRole: string;
begin
  Result := FIamRole.ValueOrDefault;
end;

procedure TInstanceInformation.SetIamRole(const Value: string);
begin
  FIamRole := Value;
end;

function TInstanceInformation.IsSetIamRole: Boolean;
begin
  Result := FIamRole.HasValue;
end;

function TInstanceInformation.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TInstanceInformation.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TInstanceInformation.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TInstanceInformation.GetIsLatestVersion: Boolean;
begin
  Result := FIsLatestVersion.ValueOrDefault;
end;

procedure TInstanceInformation.SetIsLatestVersion(const Value: Boolean);
begin
  FIsLatestVersion := Value;
end;

function TInstanceInformation.IsSetIsLatestVersion: Boolean;
begin
  Result := FIsLatestVersion.HasValue;
end;

function TInstanceInformation.GetLastAssociationExecutionDate: TDateTime;
begin
  Result := FLastAssociationExecutionDate.ValueOrDefault;
end;

procedure TInstanceInformation.SetLastAssociationExecutionDate(const Value: TDateTime);
begin
  FLastAssociationExecutionDate := Value;
end;

function TInstanceInformation.IsSetLastAssociationExecutionDate: Boolean;
begin
  Result := FLastAssociationExecutionDate.HasValue;
end;

function TInstanceInformation.GetLastPingDateTime: TDateTime;
begin
  Result := FLastPingDateTime.ValueOrDefault;
end;

procedure TInstanceInformation.SetLastPingDateTime(const Value: TDateTime);
begin
  FLastPingDateTime := Value;
end;

function TInstanceInformation.IsSetLastPingDateTime: Boolean;
begin
  Result := FLastPingDateTime.HasValue;
end;

function TInstanceInformation.GetLastSuccessfulAssociationExecutionDate: TDateTime;
begin
  Result := FLastSuccessfulAssociationExecutionDate.ValueOrDefault;
end;

procedure TInstanceInformation.SetLastSuccessfulAssociationExecutionDate(const Value: TDateTime);
begin
  FLastSuccessfulAssociationExecutionDate := Value;
end;

function TInstanceInformation.IsSetLastSuccessfulAssociationExecutionDate: Boolean;
begin
  Result := FLastSuccessfulAssociationExecutionDate.HasValue;
end;

function TInstanceInformation.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TInstanceInformation.SetName(const Value: string);
begin
  FName := Value;
end;

function TInstanceInformation.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TInstanceInformation.GetPingStatus: TPingStatus;
begin
  Result := FPingStatus.ValueOrDefault;
end;

procedure TInstanceInformation.SetPingStatus(const Value: TPingStatus);
begin
  FPingStatus := Value;
end;

function TInstanceInformation.IsSetPingStatus: Boolean;
begin
  Result := FPingStatus.HasValue;
end;

function TInstanceInformation.GetPlatformName: string;
begin
  Result := FPlatformName.ValueOrDefault;
end;

procedure TInstanceInformation.SetPlatformName(const Value: string);
begin
  FPlatformName := Value;
end;

function TInstanceInformation.IsSetPlatformName: Boolean;
begin
  Result := FPlatformName.HasValue;
end;

function TInstanceInformation.GetPlatformType: TPlatformType;
begin
  Result := FPlatformType.ValueOrDefault;
end;

procedure TInstanceInformation.SetPlatformType(const Value: TPlatformType);
begin
  FPlatformType := Value;
end;

function TInstanceInformation.IsSetPlatformType: Boolean;
begin
  Result := FPlatformType.HasValue;
end;

function TInstanceInformation.GetPlatformVersion: string;
begin
  Result := FPlatformVersion.ValueOrDefault;
end;

procedure TInstanceInformation.SetPlatformVersion(const Value: string);
begin
  FPlatformVersion := Value;
end;

function TInstanceInformation.IsSetPlatformVersion: Boolean;
begin
  Result := FPlatformVersion.HasValue;
end;

function TInstanceInformation.GetRegistrationDate: TDateTime;
begin
  Result := FRegistrationDate.ValueOrDefault;
end;

procedure TInstanceInformation.SetRegistrationDate(const Value: TDateTime);
begin
  FRegistrationDate := Value;
end;

function TInstanceInformation.IsSetRegistrationDate: Boolean;
begin
  Result := FRegistrationDate.HasValue;
end;

function TInstanceInformation.GetResourceType: TResourceType;
begin
  Result := FResourceType.ValueOrDefault;
end;

procedure TInstanceInformation.SetResourceType(const Value: TResourceType);
begin
  FResourceType := Value;
end;

function TInstanceInformation.IsSetResourceType: Boolean;
begin
  Result := FResourceType.HasValue;
end;

function TInstanceInformation.GetSourceId: string;
begin
  Result := FSourceId.ValueOrDefault;
end;

procedure TInstanceInformation.SetSourceId(const Value: string);
begin
  FSourceId := Value;
end;

function TInstanceInformation.IsSetSourceId: Boolean;
begin
  Result := FSourceId.HasValue;
end;

function TInstanceInformation.GetSourceType: TSourceType;
begin
  Result := FSourceType.ValueOrDefault;
end;

procedure TInstanceInformation.SetSourceType(const Value: TSourceType);
begin
  FSourceType := Value;
end;

function TInstanceInformation.IsSetSourceType: Boolean;
begin
  Result := FSourceType.HasValue;
end;

end.
