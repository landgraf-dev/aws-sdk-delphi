unit AWS.Rekognition.Model.HumanLoopActivationOutput;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections;

type
  THumanLoopActivationOutput = class;
  
  IHumanLoopActivationOutput = interface
    function GetHumanLoopActivationConditionsEvaluationResults: string;
    procedure SetHumanLoopActivationConditionsEvaluationResults(const Value: string);
    function GetHumanLoopActivationReasons: TList<string>;
    procedure SetHumanLoopActivationReasons(const Value: TList<string>);
    function GetKeepHumanLoopActivationReasons: Boolean;
    procedure SetKeepHumanLoopActivationReasons(const Value: Boolean);
    function GetHumanLoopArn: string;
    procedure SetHumanLoopArn(const Value: string);
    function Obj: THumanLoopActivationOutput;
    function IsSetHumanLoopActivationConditionsEvaluationResults: Boolean;
    function IsSetHumanLoopActivationReasons: Boolean;
    function IsSetHumanLoopArn: Boolean;
    property HumanLoopActivationConditionsEvaluationResults: string read GetHumanLoopActivationConditionsEvaluationResults write SetHumanLoopActivationConditionsEvaluationResults;
    property HumanLoopActivationReasons: TList<string> read GetHumanLoopActivationReasons write SetHumanLoopActivationReasons;
    property KeepHumanLoopActivationReasons: Boolean read GetKeepHumanLoopActivationReasons write SetKeepHumanLoopActivationReasons;
    property HumanLoopArn: string read GetHumanLoopArn write SetHumanLoopArn;
  end;
  
  THumanLoopActivationOutput = class
  strict private
    FHumanLoopActivationConditionsEvaluationResults: Nullable<string>;
    FHumanLoopActivationReasons: TList<string>;
    FKeepHumanLoopActivationReasons: Boolean;
    FHumanLoopArn: Nullable<string>;
    function GetHumanLoopActivationConditionsEvaluationResults: string;
    procedure SetHumanLoopActivationConditionsEvaluationResults(const Value: string);
    function GetHumanLoopActivationReasons: TList<string>;
    procedure SetHumanLoopActivationReasons(const Value: TList<string>);
    function GetKeepHumanLoopActivationReasons: Boolean;
    procedure SetKeepHumanLoopActivationReasons(const Value: Boolean);
    function GetHumanLoopArn: string;
    procedure SetHumanLoopArn(const Value: string);
  strict protected
    function Obj: THumanLoopActivationOutput;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetHumanLoopActivationConditionsEvaluationResults: Boolean;
    function IsSetHumanLoopActivationReasons: Boolean;
    function IsSetHumanLoopArn: Boolean;
    property HumanLoopActivationConditionsEvaluationResults: string read GetHumanLoopActivationConditionsEvaluationResults write SetHumanLoopActivationConditionsEvaluationResults;
    property HumanLoopActivationReasons: TList<string> read GetHumanLoopActivationReasons write SetHumanLoopActivationReasons;
    property KeepHumanLoopActivationReasons: Boolean read GetKeepHumanLoopActivationReasons write SetKeepHumanLoopActivationReasons;
    property HumanLoopArn: string read GetHumanLoopArn write SetHumanLoopArn;
  end;
  
implementation

{ THumanLoopActivationOutput }

constructor THumanLoopActivationOutput.Create;
begin
  inherited;
  FHumanLoopActivationReasons := TList<string>.Create;
end;

destructor THumanLoopActivationOutput.Destroy;
begin
  HumanLoopActivationReasons := nil;
  inherited;
end;

function THumanLoopActivationOutput.Obj: THumanLoopActivationOutput;
begin
  Result := Self;
end;

function THumanLoopActivationOutput.GetHumanLoopActivationConditionsEvaluationResults: string;
begin
  Result := FHumanLoopActivationConditionsEvaluationResults.ValueOrDefault;
end;

procedure THumanLoopActivationOutput.SetHumanLoopActivationConditionsEvaluationResults(const Value: string);
begin
  FHumanLoopActivationConditionsEvaluationResults := Value;
end;

function THumanLoopActivationOutput.IsSetHumanLoopActivationConditionsEvaluationResults: Boolean;
begin
  Result := FHumanLoopActivationConditionsEvaluationResults.HasValue;
end;

function THumanLoopActivationOutput.GetHumanLoopActivationReasons: TList<string>;
begin
  Result := FHumanLoopActivationReasons;
end;

procedure THumanLoopActivationOutput.SetHumanLoopActivationReasons(const Value: TList<string>);
begin
  if FHumanLoopActivationReasons <> Value then
  begin
    if not KeepHumanLoopActivationReasons then
      FHumanLoopActivationReasons.Free;
    FHumanLoopActivationReasons := Value;
  end;
end;

function THumanLoopActivationOutput.GetKeepHumanLoopActivationReasons: Boolean;
begin
  Result := FKeepHumanLoopActivationReasons;
end;

procedure THumanLoopActivationOutput.SetKeepHumanLoopActivationReasons(const Value: Boolean);
begin
  FKeepHumanLoopActivationReasons := Value;
end;

function THumanLoopActivationOutput.IsSetHumanLoopActivationReasons: Boolean;
begin
  Result := (FHumanLoopActivationReasons <> nil) and (FHumanLoopActivationReasons.Count > 0);
end;

function THumanLoopActivationOutput.GetHumanLoopArn: string;
begin
  Result := FHumanLoopArn.ValueOrDefault;
end;

procedure THumanLoopActivationOutput.SetHumanLoopArn(const Value: string);
begin
  FHumanLoopArn := Value;
end;

function THumanLoopActivationOutput.IsSetHumanLoopArn: Boolean;
begin
  Result := FHumanLoopArn.HasValue;
end;

end.
