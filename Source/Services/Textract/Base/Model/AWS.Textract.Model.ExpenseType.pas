unit AWS.Textract.Model.ExpenseType;

interface

uses
  Bcl.Types.Nullable;

type
  TExpenseType = class;
  
  IExpenseType = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetText: string;
    procedure SetText(const Value: string);
    function Obj: TExpenseType;
    function IsSetConfidence: Boolean;
    function IsSetText: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Text: string read GetText write SetText;
  end;
  
  TExpenseType = class
  strict private
    FConfidence: Nullable<Double>;
    FText: Nullable<string>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetText: string;
    procedure SetText(const Value: string);
  strict protected
    function Obj: TExpenseType;
  public
    function IsSetConfidence: Boolean;
    function IsSetText: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Text: string read GetText write SetText;
  end;
  
implementation

{ TExpenseType }

function TExpenseType.Obj: TExpenseType;
begin
  Result := Self;
end;

function TExpenseType.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TExpenseType.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TExpenseType.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TExpenseType.GetText: string;
begin
  Result := FText.ValueOrDefault;
end;

procedure TExpenseType.SetText(const Value: string);
begin
  FText := Value;
end;

function TExpenseType.IsSetText: Boolean;
begin
  Result := FText.HasValue;
end;

end.
