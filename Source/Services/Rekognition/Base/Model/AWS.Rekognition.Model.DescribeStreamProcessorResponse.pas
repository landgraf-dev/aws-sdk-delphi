unit AWS.Rekognition.Model.DescribeStreamProcessorResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.StreamProcessorDataSharingPreference, 
  AWS.Rekognition.Model.StreamProcessorInput, 
  AWS.Rekognition.Model.StreamProcessorNotificationChannel, 
  AWS.Rekognition.Model.StreamProcessorOutput, 
  AWS.Rekognition.Model.RegionOfInterest, 
  AWS.Rekognition.Model.StreamProcessorSettings, 
  AWS.Rekognition.Enums;

type
  TDescribeStreamProcessorResponse = class;
  
  IDescribeStreamProcessorResponse = interface(IAmazonWebServiceResponse)
    function GetCreationTimestamp: TDateTime;
    procedure SetCreationTimestamp(const Value: TDateTime);
    function GetDataSharingPreference: TStreamProcessorDataSharingPreference;
    procedure SetDataSharingPreference(const Value: TStreamProcessorDataSharingPreference);
    function GetKeepDataSharingPreference: Boolean;
    procedure SetKeepDataSharingPreference(const Value: Boolean);
    function GetInput: TStreamProcessorInput;
    procedure SetInput(const Value: TStreamProcessorInput);
    function GetKeepInput: Boolean;
    procedure SetKeepInput(const Value: Boolean);
    function GetKmsKeyId: string;
    procedure SetKmsKeyId(const Value: string);
    function GetLastUpdateTimestamp: TDateTime;
    procedure SetLastUpdateTimestamp(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNotificationChannel: TStreamProcessorNotificationChannel;
    procedure SetNotificationChannel(const Value: TStreamProcessorNotificationChannel);
    function GetKeepNotificationChannel: Boolean;
    procedure SetKeepNotificationChannel(const Value: Boolean);
    function GetOutput: TStreamProcessorOutput;
    procedure SetOutput(const Value: TStreamProcessorOutput);
    function GetKeepOutput: Boolean;
    procedure SetKeepOutput(const Value: Boolean);
    function GetRegionsOfInterest: TObjectList<TRegionOfInterest>;
    procedure SetRegionsOfInterest(const Value: TObjectList<TRegionOfInterest>);
    function GetKeepRegionsOfInterest: Boolean;
    procedure SetKeepRegionsOfInterest(const Value: Boolean);
    function GetRoleArn: string;
    procedure SetRoleArn(const Value: string);
    function GetSettings: TStreamProcessorSettings;
    procedure SetSettings(const Value: TStreamProcessorSettings);
    function GetKeepSettings: Boolean;
    procedure SetKeepSettings(const Value: Boolean);
    function GetStatus: TStreamProcessorStatus;
    procedure SetStatus(const Value: TStreamProcessorStatus);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetStreamProcessorArn: string;
    procedure SetStreamProcessorArn(const Value: string);
    function Obj: TDescribeStreamProcessorResponse;
    function IsSetCreationTimestamp: Boolean;
    function IsSetDataSharingPreference: Boolean;
    function IsSetInput: Boolean;
    function IsSetKmsKeyId: Boolean;
    function IsSetLastUpdateTimestamp: Boolean;
    function IsSetName: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetOutput: Boolean;
    function IsSetRegionsOfInterest: Boolean;
    function IsSetRoleArn: Boolean;
    function IsSetSettings: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetStreamProcessorArn: Boolean;
    property CreationTimestamp: TDateTime read GetCreationTimestamp write SetCreationTimestamp;
    property DataSharingPreference: TStreamProcessorDataSharingPreference read GetDataSharingPreference write SetDataSharingPreference;
    property KeepDataSharingPreference: Boolean read GetKeepDataSharingPreference write SetKeepDataSharingPreference;
    property Input: TStreamProcessorInput read GetInput write SetInput;
    property KeepInput: Boolean read GetKeepInput write SetKeepInput;
    property KmsKeyId: string read GetKmsKeyId write SetKmsKeyId;
    property LastUpdateTimestamp: TDateTime read GetLastUpdateTimestamp write SetLastUpdateTimestamp;
    property Name: string read GetName write SetName;
    property NotificationChannel: TStreamProcessorNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property Output: TStreamProcessorOutput read GetOutput write SetOutput;
    property KeepOutput: Boolean read GetKeepOutput write SetKeepOutput;
    property RegionsOfInterest: TObjectList<TRegionOfInterest> read GetRegionsOfInterest write SetRegionsOfInterest;
    property KeepRegionsOfInterest: Boolean read GetKeepRegionsOfInterest write SetKeepRegionsOfInterest;
    property RoleArn: string read GetRoleArn write SetRoleArn;
    property Settings: TStreamProcessorSettings read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
    property Status: TStreamProcessorStatus read GetStatus write SetStatus;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property StreamProcessorArn: string read GetStreamProcessorArn write SetStreamProcessorArn;
  end;
  
  TDescribeStreamProcessorResponse = class(TAmazonWebServiceResponse, IDescribeStreamProcessorResponse)
  strict private
    FCreationTimestamp: Nullable<TDateTime>;
    FDataSharingPreference: TStreamProcessorDataSharingPreference;
    FKeepDataSharingPreference: Boolean;
    FInput: TStreamProcessorInput;
    FKeepInput: Boolean;
    FKmsKeyId: Nullable<string>;
    FLastUpdateTimestamp: Nullable<TDateTime>;
    FName: Nullable<string>;
    FNotificationChannel: TStreamProcessorNotificationChannel;
    FKeepNotificationChannel: Boolean;
    FOutput: TStreamProcessorOutput;
    FKeepOutput: Boolean;
    FRegionsOfInterest: TObjectList<TRegionOfInterest>;
    FKeepRegionsOfInterest: Boolean;
    FRoleArn: Nullable<string>;
    FSettings: TStreamProcessorSettings;
    FKeepSettings: Boolean;
    FStatus: Nullable<TStreamProcessorStatus>;
    FStatusMessage: Nullable<string>;
    FStreamProcessorArn: Nullable<string>;
    function GetCreationTimestamp: TDateTime;
    procedure SetCreationTimestamp(const Value: TDateTime);
    function GetDataSharingPreference: TStreamProcessorDataSharingPreference;
    procedure SetDataSharingPreference(const Value: TStreamProcessorDataSharingPreference);
    function GetKeepDataSharingPreference: Boolean;
    procedure SetKeepDataSharingPreference(const Value: Boolean);
    function GetInput: TStreamProcessorInput;
    procedure SetInput(const Value: TStreamProcessorInput);
    function GetKeepInput: Boolean;
    procedure SetKeepInput(const Value: Boolean);
    function GetKmsKeyId: string;
    procedure SetKmsKeyId(const Value: string);
    function GetLastUpdateTimestamp: TDateTime;
    procedure SetLastUpdateTimestamp(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNotificationChannel: TStreamProcessorNotificationChannel;
    procedure SetNotificationChannel(const Value: TStreamProcessorNotificationChannel);
    function GetKeepNotificationChannel: Boolean;
    procedure SetKeepNotificationChannel(const Value: Boolean);
    function GetOutput: TStreamProcessorOutput;
    procedure SetOutput(const Value: TStreamProcessorOutput);
    function GetKeepOutput: Boolean;
    procedure SetKeepOutput(const Value: Boolean);
    function GetRegionsOfInterest: TObjectList<TRegionOfInterest>;
    procedure SetRegionsOfInterest(const Value: TObjectList<TRegionOfInterest>);
    function GetKeepRegionsOfInterest: Boolean;
    procedure SetKeepRegionsOfInterest(const Value: Boolean);
    function GetRoleArn: string;
    procedure SetRoleArn(const Value: string);
    function GetSettings: TStreamProcessorSettings;
    procedure SetSettings(const Value: TStreamProcessorSettings);
    function GetKeepSettings: Boolean;
    procedure SetKeepSettings(const Value: Boolean);
    function GetStatus: TStreamProcessorStatus;
    procedure SetStatus(const Value: TStreamProcessorStatus);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetStreamProcessorArn: string;
    procedure SetStreamProcessorArn(const Value: string);
  strict protected
    function Obj: TDescribeStreamProcessorResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCreationTimestamp: Boolean;
    function IsSetDataSharingPreference: Boolean;
    function IsSetInput: Boolean;
    function IsSetKmsKeyId: Boolean;
    function IsSetLastUpdateTimestamp: Boolean;
    function IsSetName: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetOutput: Boolean;
    function IsSetRegionsOfInterest: Boolean;
    function IsSetRoleArn: Boolean;
    function IsSetSettings: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetStreamProcessorArn: Boolean;
    property CreationTimestamp: TDateTime read GetCreationTimestamp write SetCreationTimestamp;
    property DataSharingPreference: TStreamProcessorDataSharingPreference read GetDataSharingPreference write SetDataSharingPreference;
    property KeepDataSharingPreference: Boolean read GetKeepDataSharingPreference write SetKeepDataSharingPreference;
    property Input: TStreamProcessorInput read GetInput write SetInput;
    property KeepInput: Boolean read GetKeepInput write SetKeepInput;
    property KmsKeyId: string read GetKmsKeyId write SetKmsKeyId;
    property LastUpdateTimestamp: TDateTime read GetLastUpdateTimestamp write SetLastUpdateTimestamp;
    property Name: string read GetName write SetName;
    property NotificationChannel: TStreamProcessorNotificationChannel read GetNotificationChannel write SetNotificationChannel;
    property KeepNotificationChannel: Boolean read GetKeepNotificationChannel write SetKeepNotificationChannel;
    property Output: TStreamProcessorOutput read GetOutput write SetOutput;
    property KeepOutput: Boolean read GetKeepOutput write SetKeepOutput;
    property RegionsOfInterest: TObjectList<TRegionOfInterest> read GetRegionsOfInterest write SetRegionsOfInterest;
    property KeepRegionsOfInterest: Boolean read GetKeepRegionsOfInterest write SetKeepRegionsOfInterest;
    property RoleArn: string read GetRoleArn write SetRoleArn;
    property Settings: TStreamProcessorSettings read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
    property Status: TStreamProcessorStatus read GetStatus write SetStatus;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property StreamProcessorArn: string read GetStreamProcessorArn write SetStreamProcessorArn;
  end;
  
implementation

{ TDescribeStreamProcessorResponse }

constructor TDescribeStreamProcessorResponse.Create;
begin
  inherited;
  FRegionsOfInterest := TObjectList<TRegionOfInterest>.Create;
end;

destructor TDescribeStreamProcessorResponse.Destroy;
begin
  Settings := nil;
  RegionsOfInterest := nil;
  Output := nil;
  NotificationChannel := nil;
  Input := nil;
  DataSharingPreference := nil;
  inherited;
end;

function TDescribeStreamProcessorResponse.Obj: TDescribeStreamProcessorResponse;
begin
  Result := Self;
end;

function TDescribeStreamProcessorResponse.GetCreationTimestamp: TDateTime;
begin
  Result := FCreationTimestamp.ValueOrDefault;
end;

procedure TDescribeStreamProcessorResponse.SetCreationTimestamp(const Value: TDateTime);
begin
  FCreationTimestamp := Value;
end;

function TDescribeStreamProcessorResponse.IsSetCreationTimestamp: Boolean;
begin
  Result := FCreationTimestamp.HasValue;
end;

function TDescribeStreamProcessorResponse.GetDataSharingPreference: TStreamProcessorDataSharingPreference;
begin
  Result := FDataSharingPreference;
end;

procedure TDescribeStreamProcessorResponse.SetDataSharingPreference(const Value: TStreamProcessorDataSharingPreference);
begin
  if FDataSharingPreference <> Value then
  begin
    if not KeepDataSharingPreference then
      FDataSharingPreference.Free;
    FDataSharingPreference := Value;
  end;
end;

function TDescribeStreamProcessorResponse.GetKeepDataSharingPreference: Boolean;
begin
  Result := FKeepDataSharingPreference;
end;

procedure TDescribeStreamProcessorResponse.SetKeepDataSharingPreference(const Value: Boolean);
begin
  FKeepDataSharingPreference := Value;
end;

function TDescribeStreamProcessorResponse.IsSetDataSharingPreference: Boolean;
begin
  Result := FDataSharingPreference <> nil;
end;

function TDescribeStreamProcessorResponse.GetInput: TStreamProcessorInput;
begin
  Result := FInput;
end;

procedure TDescribeStreamProcessorResponse.SetInput(const Value: TStreamProcessorInput);
begin
  if FInput <> Value then
  begin
    if not KeepInput then
      FInput.Free;
    FInput := Value;
  end;
end;

function TDescribeStreamProcessorResponse.GetKeepInput: Boolean;
begin
  Result := FKeepInput;
end;

procedure TDescribeStreamProcessorResponse.SetKeepInput(const Value: Boolean);
begin
  FKeepInput := Value;
end;

function TDescribeStreamProcessorResponse.IsSetInput: Boolean;
begin
  Result := FInput <> nil;
end;

function TDescribeStreamProcessorResponse.GetKmsKeyId: string;
begin
  Result := FKmsKeyId.ValueOrDefault;
end;

procedure TDescribeStreamProcessorResponse.SetKmsKeyId(const Value: string);
begin
  FKmsKeyId := Value;
end;

function TDescribeStreamProcessorResponse.IsSetKmsKeyId: Boolean;
begin
  Result := FKmsKeyId.HasValue;
end;

function TDescribeStreamProcessorResponse.GetLastUpdateTimestamp: TDateTime;
begin
  Result := FLastUpdateTimestamp.ValueOrDefault;
end;

procedure TDescribeStreamProcessorResponse.SetLastUpdateTimestamp(const Value: TDateTime);
begin
  FLastUpdateTimestamp := Value;
end;

function TDescribeStreamProcessorResponse.IsSetLastUpdateTimestamp: Boolean;
begin
  Result := FLastUpdateTimestamp.HasValue;
end;

function TDescribeStreamProcessorResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDescribeStreamProcessorResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TDescribeStreamProcessorResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TDescribeStreamProcessorResponse.GetNotificationChannel: TStreamProcessorNotificationChannel;
begin
  Result := FNotificationChannel;
end;

procedure TDescribeStreamProcessorResponse.SetNotificationChannel(const Value: TStreamProcessorNotificationChannel);
begin
  if FNotificationChannel <> Value then
  begin
    if not KeepNotificationChannel then
      FNotificationChannel.Free;
    FNotificationChannel := Value;
  end;
end;

function TDescribeStreamProcessorResponse.GetKeepNotificationChannel: Boolean;
begin
  Result := FKeepNotificationChannel;
end;

procedure TDescribeStreamProcessorResponse.SetKeepNotificationChannel(const Value: Boolean);
begin
  FKeepNotificationChannel := Value;
end;

function TDescribeStreamProcessorResponse.IsSetNotificationChannel: Boolean;
begin
  Result := FNotificationChannel <> nil;
end;

function TDescribeStreamProcessorResponse.GetOutput: TStreamProcessorOutput;
begin
  Result := FOutput;
end;

procedure TDescribeStreamProcessorResponse.SetOutput(const Value: TStreamProcessorOutput);
begin
  if FOutput <> Value then
  begin
    if not KeepOutput then
      FOutput.Free;
    FOutput := Value;
  end;
end;

function TDescribeStreamProcessorResponse.GetKeepOutput: Boolean;
begin
  Result := FKeepOutput;
end;

procedure TDescribeStreamProcessorResponse.SetKeepOutput(const Value: Boolean);
begin
  FKeepOutput := Value;
end;

function TDescribeStreamProcessorResponse.IsSetOutput: Boolean;
begin
  Result := FOutput <> nil;
end;

function TDescribeStreamProcessorResponse.GetRegionsOfInterest: TObjectList<TRegionOfInterest>;
begin
  Result := FRegionsOfInterest;
end;

procedure TDescribeStreamProcessorResponse.SetRegionsOfInterest(const Value: TObjectList<TRegionOfInterest>);
begin
  if FRegionsOfInterest <> Value then
  begin
    if not KeepRegionsOfInterest then
      FRegionsOfInterest.Free;
    FRegionsOfInterest := Value;
  end;
end;

function TDescribeStreamProcessorResponse.GetKeepRegionsOfInterest: Boolean;
begin
  Result := FKeepRegionsOfInterest;
end;

procedure TDescribeStreamProcessorResponse.SetKeepRegionsOfInterest(const Value: Boolean);
begin
  FKeepRegionsOfInterest := Value;
end;

function TDescribeStreamProcessorResponse.IsSetRegionsOfInterest: Boolean;
begin
  Result := (FRegionsOfInterest <> nil) and (FRegionsOfInterest.Count > 0);
end;

function TDescribeStreamProcessorResponse.GetRoleArn: string;
begin
  Result := FRoleArn.ValueOrDefault;
end;

procedure TDescribeStreamProcessorResponse.SetRoleArn(const Value: string);
begin
  FRoleArn := Value;
end;

function TDescribeStreamProcessorResponse.IsSetRoleArn: Boolean;
begin
  Result := FRoleArn.HasValue;
end;

function TDescribeStreamProcessorResponse.GetSettings: TStreamProcessorSettings;
begin
  Result := FSettings;
end;

procedure TDescribeStreamProcessorResponse.SetSettings(const Value: TStreamProcessorSettings);
begin
  if FSettings <> Value then
  begin
    if not KeepSettings then
      FSettings.Free;
    FSettings := Value;
  end;
end;

function TDescribeStreamProcessorResponse.GetKeepSettings: Boolean;
begin
  Result := FKeepSettings;
end;

procedure TDescribeStreamProcessorResponse.SetKeepSettings(const Value: Boolean);
begin
  FKeepSettings := Value;
end;

function TDescribeStreamProcessorResponse.IsSetSettings: Boolean;
begin
  Result := FSettings <> nil;
end;

function TDescribeStreamProcessorResponse.GetStatus: TStreamProcessorStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TDescribeStreamProcessorResponse.SetStatus(const Value: TStreamProcessorStatus);
begin
  FStatus := Value;
end;

function TDescribeStreamProcessorResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TDescribeStreamProcessorResponse.GetStatusMessage: string;
begin
  Result := FStatusMessage.ValueOrDefault;
end;

procedure TDescribeStreamProcessorResponse.SetStatusMessage(const Value: string);
begin
  FStatusMessage := Value;
end;

function TDescribeStreamProcessorResponse.IsSetStatusMessage: Boolean;
begin
  Result := FStatusMessage.HasValue;
end;

function TDescribeStreamProcessorResponse.GetStreamProcessorArn: string;
begin
  Result := FStreamProcessorArn.ValueOrDefault;
end;

procedure TDescribeStreamProcessorResponse.SetStreamProcessorArn(const Value: string);
begin
  FStreamProcessorArn := Value;
end;

function TDescribeStreamProcessorResponse.IsSetStreamProcessorArn: Boolean;
begin
  Result := FStreamProcessorArn.HasValue;
end;

end.
