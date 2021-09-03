unit AWS.Rekognition.Model.TestingDataResult;

interface

uses
  AWS.Rekognition.Model.TestingData, 
  AWS.Rekognition.Model.ValidationData;

type
  TTestingDataResult = class;
  
  ITestingDataResult = interface
    function GetInput: TTestingData;
    procedure SetInput(const Value: TTestingData);
    function GetKeepInput: Boolean;
    procedure SetKeepInput(const Value: Boolean);
    function GetOutput: TTestingData;
    procedure SetOutput(const Value: TTestingData);
    function GetKeepOutput: Boolean;
    procedure SetKeepOutput(const Value: Boolean);
    function GetValidation: TValidationData;
    procedure SetValidation(const Value: TValidationData);
    function GetKeepValidation: Boolean;
    procedure SetKeepValidation(const Value: Boolean);
    function Obj: TTestingDataResult;
    function IsSetInput: Boolean;
    function IsSetOutput: Boolean;
    function IsSetValidation: Boolean;
    property Input: TTestingData read GetInput write SetInput;
    property KeepInput: Boolean read GetKeepInput write SetKeepInput;
    property Output: TTestingData read GetOutput write SetOutput;
    property KeepOutput: Boolean read GetKeepOutput write SetKeepOutput;
    property Validation: TValidationData read GetValidation write SetValidation;
    property KeepValidation: Boolean read GetKeepValidation write SetKeepValidation;
  end;
  
  TTestingDataResult = class
  strict private
    FInput: TTestingData;
    FKeepInput: Boolean;
    FOutput: TTestingData;
    FKeepOutput: Boolean;
    FValidation: TValidationData;
    FKeepValidation: Boolean;
    function GetInput: TTestingData;
    procedure SetInput(const Value: TTestingData);
    function GetKeepInput: Boolean;
    procedure SetKeepInput(const Value: Boolean);
    function GetOutput: TTestingData;
    procedure SetOutput(const Value: TTestingData);
    function GetKeepOutput: Boolean;
    procedure SetKeepOutput(const Value: Boolean);
    function GetValidation: TValidationData;
    procedure SetValidation(const Value: TValidationData);
    function GetKeepValidation: Boolean;
    procedure SetKeepValidation(const Value: Boolean);
  strict protected
    function Obj: TTestingDataResult;
  public
    destructor Destroy; override;
    function IsSetInput: Boolean;
    function IsSetOutput: Boolean;
    function IsSetValidation: Boolean;
    property Input: TTestingData read GetInput write SetInput;
    property KeepInput: Boolean read GetKeepInput write SetKeepInput;
    property Output: TTestingData read GetOutput write SetOutput;
    property KeepOutput: Boolean read GetKeepOutput write SetKeepOutput;
    property Validation: TValidationData read GetValidation write SetValidation;
    property KeepValidation: Boolean read GetKeepValidation write SetKeepValidation;
  end;
  
implementation

{ TTestingDataResult }

destructor TTestingDataResult.Destroy;
begin
  Validation := nil;
  Output := nil;
  Input := nil;
  inherited;
end;

function TTestingDataResult.Obj: TTestingDataResult;
begin
  Result := Self;
end;

function TTestingDataResult.GetInput: TTestingData;
begin
  Result := FInput;
end;

procedure TTestingDataResult.SetInput(const Value: TTestingData);
begin
  if FInput <> Value then
  begin
    if not KeepInput then
      FInput.Free;
    FInput := Value;
  end;
end;

function TTestingDataResult.GetKeepInput: Boolean;
begin
  Result := FKeepInput;
end;

procedure TTestingDataResult.SetKeepInput(const Value: Boolean);
begin
  FKeepInput := Value;
end;

function TTestingDataResult.IsSetInput: Boolean;
begin
  Result := FInput <> nil;
end;

function TTestingDataResult.GetOutput: TTestingData;
begin
  Result := FOutput;
end;

procedure TTestingDataResult.SetOutput(const Value: TTestingData);
begin
  if FOutput <> Value then
  begin
    if not KeepOutput then
      FOutput.Free;
    FOutput := Value;
  end;
end;

function TTestingDataResult.GetKeepOutput: Boolean;
begin
  Result := FKeepOutput;
end;

procedure TTestingDataResult.SetKeepOutput(const Value: Boolean);
begin
  FKeepOutput := Value;
end;

function TTestingDataResult.IsSetOutput: Boolean;
begin
  Result := FOutput <> nil;
end;

function TTestingDataResult.GetValidation: TValidationData;
begin
  Result := FValidation;
end;

procedure TTestingDataResult.SetValidation(const Value: TValidationData);
begin
  if FValidation <> Value then
  begin
    if not KeepValidation then
      FValidation.Free;
    FValidation := Value;
  end;
end;

function TTestingDataResult.GetKeepValidation: Boolean;
begin
  Result := FKeepValidation;
end;

procedure TTestingDataResult.SetKeepValidation(const Value: Boolean);
begin
  FKeepValidation := Value;
end;

function TTestingDataResult.IsSetValidation: Boolean;
begin
  Result := FValidation <> nil;
end;

end.
