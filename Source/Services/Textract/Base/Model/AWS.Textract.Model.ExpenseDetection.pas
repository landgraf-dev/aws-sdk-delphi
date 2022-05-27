unit AWS.Textract.Model.ExpenseDetection;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Textract.Model.Geometry;

type
  TExpenseDetection = class;
  
  IExpenseDetection = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetGeometry: TGeometry;
    procedure SetGeometry(const Value: TGeometry);
    function GetKeepGeometry: Boolean;
    procedure SetKeepGeometry(const Value: Boolean);
    function GetText: string;
    procedure SetText(const Value: string);
    function Obj: TExpenseDetection;
    function IsSetConfidence: Boolean;
    function IsSetGeometry: Boolean;
    function IsSetText: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Geometry: TGeometry read GetGeometry write SetGeometry;
    property KeepGeometry: Boolean read GetKeepGeometry write SetKeepGeometry;
    property Text: string read GetText write SetText;
  end;
  
  TExpenseDetection = class
  strict private
    FConfidence: Nullable<Double>;
    FGeometry: TGeometry;
    FKeepGeometry: Boolean;
    FText: Nullable<string>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetGeometry: TGeometry;
    procedure SetGeometry(const Value: TGeometry);
    function GetKeepGeometry: Boolean;
    procedure SetKeepGeometry(const Value: Boolean);
    function GetText: string;
    procedure SetText(const Value: string);
  strict protected
    function Obj: TExpenseDetection;
  public
    destructor Destroy; override;
    function IsSetConfidence: Boolean;
    function IsSetGeometry: Boolean;
    function IsSetText: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Geometry: TGeometry read GetGeometry write SetGeometry;
    property KeepGeometry: Boolean read GetKeepGeometry write SetKeepGeometry;
    property Text: string read GetText write SetText;
  end;
  
implementation

{ TExpenseDetection }

destructor TExpenseDetection.Destroy;
begin
  Geometry := nil;
  inherited;
end;

function TExpenseDetection.Obj: TExpenseDetection;
begin
  Result := Self;
end;

function TExpenseDetection.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TExpenseDetection.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TExpenseDetection.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TExpenseDetection.GetGeometry: TGeometry;
begin
  Result := FGeometry;
end;

procedure TExpenseDetection.SetGeometry(const Value: TGeometry);
begin
  if FGeometry <> Value then
  begin
    if not KeepGeometry then
      FGeometry.Free;
    FGeometry := Value;
  end;
end;

function TExpenseDetection.GetKeepGeometry: Boolean;
begin
  Result := FKeepGeometry;
end;

procedure TExpenseDetection.SetKeepGeometry(const Value: Boolean);
begin
  FKeepGeometry := Value;
end;

function TExpenseDetection.IsSetGeometry: Boolean;
begin
  Result := FGeometry <> nil;
end;

function TExpenseDetection.GetText: string;
begin
  Result := FText.ValueOrDefault;
end;

procedure TExpenseDetection.SetText(const Value: string);
begin
  FText := Value;
end;

function TExpenseDetection.IsSetText: Boolean;
begin
  Result := FText.HasValue;
end;

end.
