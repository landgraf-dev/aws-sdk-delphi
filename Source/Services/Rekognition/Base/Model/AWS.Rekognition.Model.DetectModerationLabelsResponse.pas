unit AWS.Rekognition.Model.DetectModerationLabelsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.HumanLoopActivationOutput, 
  AWS.Rekognition.Model.ModerationLabel, 
  AWS.Nullable;

type
  TDetectModerationLabelsResponse = class;
  
  IDetectModerationLabelsResponse = interface(IAmazonWebServiceResponse)
    function GetHumanLoopActivationOutput: THumanLoopActivationOutput;
    procedure SetHumanLoopActivationOutput(const Value: THumanLoopActivationOutput);
    function GetKeepHumanLoopActivationOutput: Boolean;
    procedure SetKeepHumanLoopActivationOutput(const Value: Boolean);
    function GetModerationLabels: TObjectList<TModerationLabel>;
    procedure SetModerationLabels(const Value: TObjectList<TModerationLabel>);
    function GetKeepModerationLabels: Boolean;
    procedure SetKeepModerationLabels(const Value: Boolean);
    function GetModerationModelVersion: string;
    procedure SetModerationModelVersion(const Value: string);
    function Obj: TDetectModerationLabelsResponse;
    function IsSetHumanLoopActivationOutput: Boolean;
    function IsSetModerationLabels: Boolean;
    function IsSetModerationModelVersion: Boolean;
    property HumanLoopActivationOutput: THumanLoopActivationOutput read GetHumanLoopActivationOutput write SetHumanLoopActivationOutput;
    property KeepHumanLoopActivationOutput: Boolean read GetKeepHumanLoopActivationOutput write SetKeepHumanLoopActivationOutput;
    property ModerationLabels: TObjectList<TModerationLabel> read GetModerationLabels write SetModerationLabels;
    property KeepModerationLabels: Boolean read GetKeepModerationLabels write SetKeepModerationLabels;
    property ModerationModelVersion: string read GetModerationModelVersion write SetModerationModelVersion;
  end;
  
  TDetectModerationLabelsResponse = class(TAmazonWebServiceResponse, IDetectModerationLabelsResponse)
  strict private
    FHumanLoopActivationOutput: THumanLoopActivationOutput;
    FKeepHumanLoopActivationOutput: Boolean;
    FModerationLabels: TObjectList<TModerationLabel>;
    FKeepModerationLabels: Boolean;
    FModerationModelVersion: Nullable<string>;
    function GetHumanLoopActivationOutput: THumanLoopActivationOutput;
    procedure SetHumanLoopActivationOutput(const Value: THumanLoopActivationOutput);
    function GetKeepHumanLoopActivationOutput: Boolean;
    procedure SetKeepHumanLoopActivationOutput(const Value: Boolean);
    function GetModerationLabels: TObjectList<TModerationLabel>;
    procedure SetModerationLabels(const Value: TObjectList<TModerationLabel>);
    function GetKeepModerationLabels: Boolean;
    procedure SetKeepModerationLabels(const Value: Boolean);
    function GetModerationModelVersion: string;
    procedure SetModerationModelVersion(const Value: string);
  strict protected
    function Obj: TDetectModerationLabelsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetHumanLoopActivationOutput: Boolean;
    function IsSetModerationLabels: Boolean;
    function IsSetModerationModelVersion: Boolean;
    property HumanLoopActivationOutput: THumanLoopActivationOutput read GetHumanLoopActivationOutput write SetHumanLoopActivationOutput;
    property KeepHumanLoopActivationOutput: Boolean read GetKeepHumanLoopActivationOutput write SetKeepHumanLoopActivationOutput;
    property ModerationLabels: TObjectList<TModerationLabel> read GetModerationLabels write SetModerationLabels;
    property KeepModerationLabels: Boolean read GetKeepModerationLabels write SetKeepModerationLabels;
    property ModerationModelVersion: string read GetModerationModelVersion write SetModerationModelVersion;
  end;
  
implementation

{ TDetectModerationLabelsResponse }

constructor TDetectModerationLabelsResponse.Create;
begin
  inherited;
  FModerationLabels := TObjectList<TModerationLabel>.Create;
end;

destructor TDetectModerationLabelsResponse.Destroy;
begin
  ModerationLabels := nil;
  HumanLoopActivationOutput := nil;
  inherited;
end;

function TDetectModerationLabelsResponse.Obj: TDetectModerationLabelsResponse;
begin
  Result := Self;
end;

function TDetectModerationLabelsResponse.GetHumanLoopActivationOutput: THumanLoopActivationOutput;
begin
  Result := FHumanLoopActivationOutput;
end;

procedure TDetectModerationLabelsResponse.SetHumanLoopActivationOutput(const Value: THumanLoopActivationOutput);
begin
  if FHumanLoopActivationOutput <> Value then
  begin
    if not KeepHumanLoopActivationOutput then
      FHumanLoopActivationOutput.Free;
    FHumanLoopActivationOutput := Value;
  end;
end;

function TDetectModerationLabelsResponse.GetKeepHumanLoopActivationOutput: Boolean;
begin
  Result := FKeepHumanLoopActivationOutput;
end;

procedure TDetectModerationLabelsResponse.SetKeepHumanLoopActivationOutput(const Value: Boolean);
begin
  FKeepHumanLoopActivationOutput := Value;
end;

function TDetectModerationLabelsResponse.IsSetHumanLoopActivationOutput: Boolean;
begin
  Result := FHumanLoopActivationOutput <> nil;
end;

function TDetectModerationLabelsResponse.GetModerationLabels: TObjectList<TModerationLabel>;
begin
  Result := FModerationLabels;
end;

procedure TDetectModerationLabelsResponse.SetModerationLabels(const Value: TObjectList<TModerationLabel>);
begin
  if FModerationLabels <> Value then
  begin
    if not KeepModerationLabels then
      FModerationLabels.Free;
    FModerationLabels := Value;
  end;
end;

function TDetectModerationLabelsResponse.GetKeepModerationLabels: Boolean;
begin
  Result := FKeepModerationLabels;
end;

procedure TDetectModerationLabelsResponse.SetKeepModerationLabels(const Value: Boolean);
begin
  FKeepModerationLabels := Value;
end;

function TDetectModerationLabelsResponse.IsSetModerationLabels: Boolean;
begin
  Result := (FModerationLabels <> nil) and (FModerationLabels.Count > 0);
end;

function TDetectModerationLabelsResponse.GetModerationModelVersion: string;
begin
  Result := FModerationModelVersion.ValueOrDefault;
end;

procedure TDetectModerationLabelsResponse.SetModerationModelVersion(const Value: string);
begin
  FModerationModelVersion := Value;
end;

function TDetectModerationLabelsResponse.IsSetModerationModelVersion: Boolean;
begin
  Result := FModerationModelVersion.HasValue;
end;

end.
