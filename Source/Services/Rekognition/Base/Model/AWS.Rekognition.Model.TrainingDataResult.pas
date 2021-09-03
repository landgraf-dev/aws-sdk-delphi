unit AWS.Rekognition.Model.TrainingDataResult;

interface

uses
  AWS.Rekognition.Model.TrainingData, 
  AWS.Rekognition.Model.ValidationData;

type
  TTrainingDataResult = class;
  
  ITrainingDataResult = interface
    function GetInput: TTrainingData;
    procedure SetInput(const Value: TTrainingData);
    function GetKeepInput: Boolean;
    procedure SetKeepInput(const Value: Boolean);
    function GetOutput: TTrainingData;
    procedure SetOutput(const Value: TTrainingData);
    function GetKeepOutput: Boolean;
    procedure SetKeepOutput(const Value: Boolean);
    function GetValidation: TValidationData;
    procedure SetValidation(const Value: TValidationData);
    function GetKeepValidation: Boolean;
    procedure SetKeepValidation(const Value: Boolean);
    function Obj: TTrainingDataResult;
    function IsSetInput: Boolean;
    function IsSetOutput: Boolean;
    function IsSetValidation: Boolean;
    property Input: TTrainingData read GetInput write SetInput;
    property KeepInput: Boolean read GetKeepInput write SetKeepInput;
    property Output: TTrainingData read GetOutput write SetOutput;
    property KeepOutput: Boolean read GetKeepOutput write SetKeepOutput;
    property Validation: TValidationData read GetValidation write SetValidation;
    property KeepValidation: Boolean read GetKeepValidation write SetKeepValidation;
  end;
  
  TTrainingDataResult = class
  strict private
    FInput: TTrainingData;
    FKeepInput: Boolean;
    FOutput: TTrainingData;
    FKeepOutput: Boolean;
    FValidation: TValidationData;
    FKeepValidation: Boolean;
    function GetInput: TTrainingData;
    procedure SetInput(const Value: TTrainingData);
    function GetKeepInput: Boolean;
    procedure SetKeepInput(const Value: Boolean);
    function GetOutput: TTrainingData;
    procedure SetOutput(const Value: TTrainingData);
    function GetKeepOutput: Boolean;
    procedure SetKeepOutput(const Value: Boolean);
    function GetValidation: TValidationData;
    procedure SetValidation(const Value: TValidationData);
    function GetKeepValidation: Boolean;
    procedure SetKeepValidation(const Value: Boolean);
  strict protected
    function Obj: TTrainingDataResult;
  public
    destructor Destroy; override;
    function IsSetInput: Boolean;
    function IsSetOutput: Boolean;
    function IsSetValidation: Boolean;
    property Input: TTrainingData read GetInput write SetInput;
    property KeepInput: Boolean read GetKeepInput write SetKeepInput;
    property Output: TTrainingData read GetOutput write SetOutput;
    property KeepOutput: Boolean read GetKeepOutput write SetKeepOutput;
    property Validation: TValidationData read GetValidation write SetValidation;
    property KeepValidation: Boolean read GetKeepValidation write SetKeepValidation;
  end;
  
implementation

{ TTrainingDataResult }

destructor TTrainingDataResult.Destroy;
begin
  Validation := nil;
  Output := nil;
  Input := nil;
  inherited;
end;

function TTrainingDataResult.Obj: TTrainingDataResult;
begin
  Result := Self;
end;

function TTrainingDataResult.GetInput: TTrainingData;
begin
  Result := FInput;
end;

procedure TTrainingDataResult.SetInput(const Value: TTrainingData);
begin
  if FInput <> Value then
  begin
    if not KeepInput then
      FInput.Free;
    FInput := Value;
  end;
end;

function TTrainingDataResult.GetKeepInput: Boolean;
begin
  Result := FKeepInput;
end;

procedure TTrainingDataResult.SetKeepInput(const Value: Boolean);
begin
  FKeepInput := Value;
end;

function TTrainingDataResult.IsSetInput: Boolean;
begin
  Result := FInput <> nil;
end;

function TTrainingDataResult.GetOutput: TTrainingData;
begin
  Result := FOutput;
end;

procedure TTrainingDataResult.SetOutput(const Value: TTrainingData);
begin
  if FOutput <> Value then
  begin
    if not KeepOutput then
      FOutput.Free;
    FOutput := Value;
  end;
end;

function TTrainingDataResult.GetKeepOutput: Boolean;
begin
  Result := FKeepOutput;
end;

procedure TTrainingDataResult.SetKeepOutput(const Value: Boolean);
begin
  FKeepOutput := Value;
end;

function TTrainingDataResult.IsSetOutput: Boolean;
begin
  Result := FOutput <> nil;
end;

function TTrainingDataResult.GetValidation: TValidationData;
begin
  Result := FValidation;
end;

procedure TTrainingDataResult.SetValidation(const Value: TValidationData);
begin
  if FValidation <> Value then
  begin
    if not KeepValidation then
      FValidation.Free;
    FValidation := Value;
  end;
end;

function TTrainingDataResult.GetKeepValidation: Boolean;
begin
  Result := FKeepValidation;
end;

procedure TTrainingDataResult.SetKeepValidation(const Value: Boolean);
begin
  FKeepValidation := Value;
end;

function TTrainingDataResult.IsSetValidation: Boolean;
begin
  Result := FValidation <> nil;
end;

end.
