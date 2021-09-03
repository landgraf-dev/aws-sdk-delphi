unit AWS.Rekognition.Model.CreateStreamProcessorRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.StreamProcessorInput, 
  AWS.Rekognition.Model.StreamProcessorOutput, 
  AWS.Rekognition.Model.StreamProcessorSettings;

type
  TCreateStreamProcessorRequest = class;
  
  ICreateStreamProcessorRequest = interface
    function GetInput: TStreamProcessorInput;
    procedure SetInput(const Value: TStreamProcessorInput);
    function GetKeepInput: Boolean;
    procedure SetKeepInput(const Value: Boolean);
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
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TCreateStreamProcessorRequest;
    function IsSetInput: Boolean;
    function IsSetName: Boolean;
    function IsSetOutput: Boolean;
    function IsSetRoleArn: Boolean;
    function IsSetSettings: Boolean;
    function IsSetTags: Boolean;
    property Input: TStreamProcessorInput read GetInput write SetInput;
    property KeepInput: Boolean read GetKeepInput write SetKeepInput;
    property Name: string read GetName write SetName;
    property Output: TStreamProcessorOutput read GetOutput write SetOutput;
    property KeepOutput: Boolean read GetKeepOutput write SetKeepOutput;
    property RoleArn: string read GetRoleArn write SetRoleArn;
    property Settings: TStreamProcessorSettings read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TCreateStreamProcessorRequest = class(TAmazonRekognitionRequest, ICreateStreamProcessorRequest)
  strict private
    FInput: TStreamProcessorInput;
    FKeepInput: Boolean;
    FName: Nullable<string>;
    FOutput: TStreamProcessorOutput;
    FKeepOutput: Boolean;
    FRoleArn: Nullable<string>;
    FSettings: TStreamProcessorSettings;
    FKeepSettings: Boolean;
    FTags: TDictionary<string, string>;
    FKeepTags: Boolean;
    function GetInput: TStreamProcessorInput;
    procedure SetInput(const Value: TStreamProcessorInput);
    function GetKeepInput: Boolean;
    procedure SetKeepInput(const Value: Boolean);
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
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TCreateStreamProcessorRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetInput: Boolean;
    function IsSetName: Boolean;
    function IsSetOutput: Boolean;
    function IsSetRoleArn: Boolean;
    function IsSetSettings: Boolean;
    function IsSetTags: Boolean;
    property Input: TStreamProcessorInput read GetInput write SetInput;
    property KeepInput: Boolean read GetKeepInput write SetKeepInput;
    property Name: string read GetName write SetName;
    property Output: TStreamProcessorOutput read GetOutput write SetOutput;
    property KeepOutput: Boolean read GetKeepOutput write SetKeepOutput;
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
  FTags := TDictionary<string, string>.Create;
end;

destructor TCreateStreamProcessorRequest.Destroy;
begin
  Tags := nil;
  Settings := nil;
  Output := nil;
  Input := nil;
  inherited;
end;

function TCreateStreamProcessorRequest.Obj: TCreateStreamProcessorRequest;
begin
  Result := Self;
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
