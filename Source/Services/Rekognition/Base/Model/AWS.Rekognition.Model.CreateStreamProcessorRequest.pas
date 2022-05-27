unit AWS.Rekognition.Model.CreateStreamProcessorRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.StreamProcessorDataSharingPreference, 
  AWS.Rekognition.Model.StreamProcessorInput, 
  AWS.Rekognition.Model.StreamProcessorNotificationChannel, 
  AWS.Rekognition.Model.StreamProcessorOutput, 
  AWS.Rekognition.Model.RegionOfInterest, 
  AWS.Rekognition.Model.StreamProcessorSettings;

type
  TCreateStreamProcessorRequest = class;
  
  ICreateStreamProcessorRequest = interface
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
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TCreateStreamProcessorRequest;
    function IsSetDataSharingPreference: Boolean;
    function IsSetInput: Boolean;
    function IsSetKmsKeyId: Boolean;
    function IsSetName: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetOutput: Boolean;
    function IsSetRegionsOfInterest: Boolean;
    function IsSetRoleArn: Boolean;
    function IsSetSettings: Boolean;
    function IsSetTags: Boolean;
    property DataSharingPreference: TStreamProcessorDataSharingPreference read GetDataSharingPreference write SetDataSharingPreference;
    property KeepDataSharingPreference: Boolean read GetKeepDataSharingPreference write SetKeepDataSharingPreference;
    property Input: TStreamProcessorInput read GetInput write SetInput;
    property KeepInput: Boolean read GetKeepInput write SetKeepInput;
    property KmsKeyId: string read GetKmsKeyId write SetKmsKeyId;
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
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TCreateStreamProcessorRequest = class(TAmazonRekognitionRequest, ICreateStreamProcessorRequest)
  strict private
    FDataSharingPreference: TStreamProcessorDataSharingPreference;
    FKeepDataSharingPreference: Boolean;
    FInput: TStreamProcessorInput;
    FKeepInput: Boolean;
    FKmsKeyId: Nullable<string>;
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
    FTags: TDictionary<string, string>;
    FKeepTags: Boolean;
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
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TCreateStreamProcessorRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDataSharingPreference: Boolean;
    function IsSetInput: Boolean;
    function IsSetKmsKeyId: Boolean;
    function IsSetName: Boolean;
    function IsSetNotificationChannel: Boolean;
    function IsSetOutput: Boolean;
    function IsSetRegionsOfInterest: Boolean;
    function IsSetRoleArn: Boolean;
    function IsSetSettings: Boolean;
    function IsSetTags: Boolean;
    property DataSharingPreference: TStreamProcessorDataSharingPreference read GetDataSharingPreference write SetDataSharingPreference;
    property KeepDataSharingPreference: Boolean read GetKeepDataSharingPreference write SetKeepDataSharingPreference;
    property Input: TStreamProcessorInput read GetInput write SetInput;
    property KeepInput: Boolean read GetKeepInput write SetKeepInput;
    property KmsKeyId: string read GetKmsKeyId write SetKmsKeyId;
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
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TCreateStreamProcessorRequest }

constructor TCreateStreamProcessorRequest.Create;
begin
  inherited;
  FRegionsOfInterest := TObjectList<TRegionOfInterest>.Create;
  FTags := TDictionary<string, string>.Create;
end;

destructor TCreateStreamProcessorRequest.Destroy;
begin
  Tags := nil;
  Settings := nil;
  RegionsOfInterest := nil;
  Output := nil;
  NotificationChannel := nil;
  Input := nil;
  DataSharingPreference := nil;
  inherited;
end;

function TCreateStreamProcessorRequest.Obj: TCreateStreamProcessorRequest;
begin
  Result := Self;
end;

function TCreateStreamProcessorRequest.GetDataSharingPreference: TStreamProcessorDataSharingPreference;
begin
  Result := FDataSharingPreference;
end;

procedure TCreateStreamProcessorRequest.SetDataSharingPreference(const Value: TStreamProcessorDataSharingPreference);
begin
  if FDataSharingPreference <> Value then
  begin
    if not KeepDataSharingPreference then
      FDataSharingPreference.Free;
    FDataSharingPreference := Value;
  end;
end;

function TCreateStreamProcessorRequest.GetKeepDataSharingPreference: Boolean;
begin
  Result := FKeepDataSharingPreference;
end;

procedure TCreateStreamProcessorRequest.SetKeepDataSharingPreference(const Value: Boolean);
begin
  FKeepDataSharingPreference := Value;
end;

function TCreateStreamProcessorRequest.IsSetDataSharingPreference: Boolean;
begin
  Result := FDataSharingPreference <> nil;
end;

function TCreateStreamProcessorRequest.GetInput: TStreamProcessorInput;
begin
  Result := FInput;
end;

procedure TCreateStreamProcessorRequest.SetInput(const Value: TStreamProcessorInput);
begin
  if FInput <> Value then
  begin
    if not KeepInput then
      FInput.Free;
    FInput := Value;
  end;
end;

function TCreateStreamProcessorRequest.GetKeepInput: Boolean;
begin
  Result := FKeepInput;
end;

procedure TCreateStreamProcessorRequest.SetKeepInput(const Value: Boolean);
begin
  FKeepInput := Value;
end;

function TCreateStreamProcessorRequest.IsSetInput: Boolean;
begin
  Result := FInput <> nil;
end;

function TCreateStreamProcessorRequest.GetKmsKeyId: string;
begin
  Result := FKmsKeyId.ValueOrDefault;
end;

procedure TCreateStreamProcessorRequest.SetKmsKeyId(const Value: string);
begin
  FKmsKeyId := Value;
end;

function TCreateStreamProcessorRequest.IsSetKmsKeyId: Boolean;
begin
  Result := FKmsKeyId.HasValue;
end;

function TCreateStreamProcessorRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TCreateStreamProcessorRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TCreateStreamProcessorRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TCreateStreamProcessorRequest.GetNotificationChannel: TStreamProcessorNotificationChannel;
begin
  Result := FNotificationChannel;
end;

procedure TCreateStreamProcessorRequest.SetNotificationChannel(const Value: TStreamProcessorNotificationChannel);
begin
  if FNotificationChannel <> Value then
  begin
    if not KeepNotificationChannel then
      FNotificationChannel.Free;
    FNotificationChannel := Value;
  end;
end;

function TCreateStreamProcessorRequest.GetKeepNotificationChannel: Boolean;
begin
  Result := FKeepNotificationChannel;
end;

procedure TCreateStreamProcessorRequest.SetKeepNotificationChannel(const Value: Boolean);
begin
  FKeepNotificationChannel := Value;
end;

function TCreateStreamProcessorRequest.IsSetNotificationChannel: Boolean;
begin
  Result := FNotificationChannel <> nil;
end;

function TCreateStreamProcessorRequest.GetOutput: TStreamProcessorOutput;
begin
  Result := FOutput;
end;

procedure TCreateStreamProcessorRequest.SetOutput(const Value: TStreamProcessorOutput);
begin
  if FOutput <> Value then
  begin
    if not KeepOutput then
      FOutput.Free;
    FOutput := Value;
  end;
end;

function TCreateStreamProcessorRequest.GetKeepOutput: Boolean;
begin
  Result := FKeepOutput;
end;

procedure TCreateStreamProcessorRequest.SetKeepOutput(const Value: Boolean);
begin
  FKeepOutput := Value;
end;

function TCreateStreamProcessorRequest.IsSetOutput: Boolean;
begin
  Result := FOutput <> nil;
end;

function TCreateStreamProcessorRequest.GetRegionsOfInterest: TObjectList<TRegionOfInterest>;
begin
  Result := FRegionsOfInterest;
end;

procedure TCreateStreamProcessorRequest.SetRegionsOfInterest(const Value: TObjectList<TRegionOfInterest>);
begin
  if FRegionsOfInterest <> Value then
  begin
    if not KeepRegionsOfInterest then
      FRegionsOfInterest.Free;
    FRegionsOfInterest := Value;
  end;
end;

function TCreateStreamProcessorRequest.GetKeepRegionsOfInterest: Boolean;
begin
  Result := FKeepRegionsOfInterest;
end;

procedure TCreateStreamProcessorRequest.SetKeepRegionsOfInterest(const Value: Boolean);
begin
  FKeepRegionsOfInterest := Value;
end;

function TCreateStreamProcessorRequest.IsSetRegionsOfInterest: Boolean;
begin
  Result := (FRegionsOfInterest <> nil) and (FRegionsOfInterest.Count > 0);
end;

function TCreateStreamProcessorRequest.GetRoleArn: string;
begin
  Result := FRoleArn.ValueOrDefault;
end;

procedure TCreateStreamProcessorRequest.SetRoleArn(const Value: string);
begin
  FRoleArn := Value;
end;

function TCreateStreamProcessorRequest.IsSetRoleArn: Boolean;
begin
  Result := FRoleArn.HasValue;
end;

function TCreateStreamProcessorRequest.GetSettings: TStreamProcessorSettings;
begin
  Result := FSettings;
end;

procedure TCreateStreamProcessorRequest.SetSettings(const Value: TStreamProcessorSettings);
begin
  if FSettings <> Value then
  begin
    if not KeepSettings then
      FSettings.Free;
    FSettings := Value;
  end;
end;

function TCreateStreamProcessorRequest.GetKeepSettings: Boolean;
begin
  Result := FKeepSettings;
end;

procedure TCreateStreamProcessorRequest.SetKeepSettings(const Value: Boolean);
begin
  FKeepSettings := Value;
end;

function TCreateStreamProcessorRequest.IsSetSettings: Boolean;
begin
  Result := FSettings <> nil;
end;

function TCreateStreamProcessorRequest.GetTags: TDictionary<string, string>;
begin
  Result := FTags;
end;

procedure TCreateStreamProcessorRequest.SetTags(const Value: TDictionary<string, string>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateStreamProcessorRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateStreamProcessorRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateStreamProcessorRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
