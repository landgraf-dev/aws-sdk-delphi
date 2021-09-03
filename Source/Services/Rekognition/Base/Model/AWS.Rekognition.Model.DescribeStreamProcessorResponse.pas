unit AWS.Rekognition.Model.DescribeStreamProcessorResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.StreamProcessorInput, 
  AWS.Rekognition.Model.StreamProcessorOutput, 
  AWS.Rekognition.Model.StreamProcessorSettings, 
  AWS.Rekognition.Enums;

type
  TDescribeStreamProcessorResponse = class;
  
  IDescribeStreamProcessorResponse = interface(IAmazonWebServiceResponse)
    function GetCreationTimestamp: TDateTime;
    procedure SetCreationTimestamp(const Value: TDateTime);
    function GetInput: TStreamProcessorInput;
    procedure SetInput(const Value: TStreamProcessorInput);
    function GetKeepInput: Boolean;
    procedure SetKeepInput(const Value: Boolean);
    function GetLastUpdateTimestamp: TDateTime;
    procedure SetLastUpdateTimestamp(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOutput: TStreamProcessorOutput;
    procedure SetOutput(const Value: TStreamProcessorOutput);
    function GetKeepOutput: Boolean;
    procedure SetKeepOutput(const Value: Boolean);
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
    function IsSetInput: Boolean;
    function IsSetLastUpdateTimestamp: Boolean;
    function IsSetName: Boolean;
    function IsSetOutput: Boolean;
    function IsSetRoleArn: Boolean;
    function IsSetSettings: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetStreamProcessorArn: Boolean;
    property CreationTimestamp: TDateTime read GetCreationTimestamp write SetCreationTimestamp;
    property Input: TStreamProcessorInput read GetInput write SetInput;
    property KeepInput: Boolean read GetKeepInput write SetKeepInput;
    property LastUpdateTimestamp: TDateTime read GetLastUpdateTimestamp write SetLastUpdateTimestamp;
    property Name: string read GetName write SetName;
    property Output: TStreamProcessorOutput read GetOutput write SetOutput;
    property KeepOutput: Boolean read GetKeepOutput write SetKeepOutput;
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
    FInput: TStreamProcessorInput;
    FKeepInput: Boolean;
    FLastUpdateTimestamp: Nullable<TDateTime>;
    FName: Nullable<string>;
    FOutput: TStreamProcessorOutput;
    FKeepOutput: Boolean;
    FRoleArn: Nullable<string>;
    FSettings: TStreamProcessorSettings;
    FKeepSettings: Boolean;
    FStatus: Nullable<TStreamProcessorStatus>;
    FStatusMessage: Nullable<string>;
    FStreamProcessorArn: Nullable<string>;
    function GetCreationTimestamp: TDateTime;
    procedure SetCreationTimestamp(const Value: TDateTime);
    function GetInput: TStreamProcessorInput;
    procedure SetInput(const Value: TStreamProcessorInput);
    function GetKeepInput: Boolean;
    procedure SetKeepInput(const Value: Boolean);
    function GetLastUpdateTimestamp: TDateTime;
    procedure SetLastUpdateTimestamp(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOutput: TStreamProcessorOutput;
    procedure SetOutput(const Value: TStreamProcessorOutput);
    function GetKeepOutput: Boolean;
    procedure SetKeepOutput(const Value: Boolean);
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
    destructor Destroy; override;
    function IsSetCreationTimestamp: Boolean;
    function IsSetInput: Boolean;
    function IsSetLastUpdateTimestamp: Boolean;
    function IsSetName: Boolean;
    function IsSetOutput: Boolean;
    function IsSetRoleArn: Boolean;
    function IsSetSettings: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetStreamProcessorArn: Boolean;
    property CreationTimestamp: TDateTime read GetCreationTimestamp write SetCreationTimestamp;
    property Input: TStreamProcessorInput read GetInput write SetInput;
    property KeepInput: Boolean read GetKeepInput write SetKeepInput;
    property LastUpdateTimestamp: TDateTime read GetLastUpdateTimestamp write SetLastUpdateTimestamp;
    property Name: string read GetName write SetName;
    property Output: TStreamProcessorOutput read GetOutput write SetOutput;
    property KeepOutput: Boolean read GetKeepOutput write SetKeepOutput;
    property RoleArn: string read GetRoleArn write SetRoleArn;
    property Settings: TStreamProcessorSettings read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
    property Status: TStreamProcessorStatus read GetStatus write SetStatus;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property StreamProcessorArn: string read GetStreamProcessorArn write SetStreamProcessorArn;
  end;
  
implementation

{ TDescribeStreamProcessorResponse }

destructor TDescribeStreamProcessorResponse.Destroy;
begin
  Settings := nil;
  Output := nil;
  Input := nil;
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
