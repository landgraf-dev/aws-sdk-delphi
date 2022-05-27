unit AWS.Textract.Model.ExpenseField;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Textract.Model.ExpenseDetection, 
  AWS.Textract.Model.ExpenseType;

type
  TExpenseField = class;
  
  IExpenseField = interface
    function GetLabelDetection: TExpenseDetection;
    procedure SetLabelDetection(const Value: TExpenseDetection);
    function GetKeepLabelDetection: Boolean;
    procedure SetKeepLabelDetection(const Value: Boolean);
    function GetPageNumber: Integer;
    procedure SetPageNumber(const Value: Integer);
    function GetType: TExpenseType;
    procedure SetType(const Value: TExpenseType);
    function GetKeepType: Boolean;
    procedure SetKeepType(const Value: Boolean);
    function GetValueDetection: TExpenseDetection;
    procedure SetValueDetection(const Value: TExpenseDetection);
    function GetKeepValueDetection: Boolean;
    procedure SetKeepValueDetection(const Value: Boolean);
    function Obj: TExpenseField;
    function IsSetLabelDetection: Boolean;
    function IsSetPageNumber: Boolean;
    function IsSetType: Boolean;
    function IsSetValueDetection: Boolean;
    property LabelDetection: TExpenseDetection read GetLabelDetection write SetLabelDetection;
    property KeepLabelDetection: Boolean read GetKeepLabelDetection write SetKeepLabelDetection;
    property PageNumber: Integer read GetPageNumber write SetPageNumber;
    property &Type: TExpenseType read GetType write SetType;
    property KeepType: Boolean read GetKeepType write SetKeepType;
    property ValueDetection: TExpenseDetection read GetValueDetection write SetValueDetection;
    property KeepValueDetection: Boolean read GetKeepValueDetection write SetKeepValueDetection;
  end;
  
  TExpenseField = class
  strict private
    FLabelDetection: TExpenseDetection;
    FKeepLabelDetection: Boolean;
    FPageNumber: Nullable<Integer>;
    FType: TExpenseType;
    FKeepType: Boolean;
    FValueDetection: TExpenseDetection;
    FKeepValueDetection: Boolean;
    function GetLabelDetection: TExpenseDetection;
    procedure SetLabelDetection(const Value: TExpenseDetection);
    function GetKeepLabelDetection: Boolean;
    procedure SetKeepLabelDetection(const Value: Boolean);
    function GetPageNumber: Integer;
    procedure SetPageNumber(const Value: Integer);
    function GetType: TExpenseType;
    procedure SetType(const Value: TExpenseType);
    function GetKeepType: Boolean;
    procedure SetKeepType(const Value: Boolean);
    function GetValueDetection: TExpenseDetection;
    procedure SetValueDetection(const Value: TExpenseDetection);
    function GetKeepValueDetection: Boolean;
    procedure SetKeepValueDetection(const Value: Boolean);
  strict protected
    function Obj: TExpenseField;
  public
    destructor Destroy; override;
    function IsSetLabelDetection: Boolean;
    function IsSetPageNumber: Boolean;
    function IsSetType: Boolean;
    function IsSetValueDetection: Boolean;
    property LabelDetection: TExpenseDetection read GetLabelDetection write SetLabelDetection;
    property KeepLabelDetection: Boolean read GetKeepLabelDetection write SetKeepLabelDetection;
    property PageNumber: Integer read GetPageNumber write SetPageNumber;
    property &Type: TExpenseType read GetType write SetType;
    property KeepType: Boolean read GetKeepType write SetKeepType;
    property ValueDetection: TExpenseDetection read GetValueDetection write SetValueDetection;
    property KeepValueDetection: Boolean read GetKeepValueDetection write SetKeepValueDetection;
  end;
  
implementation

{ TExpenseField }

destructor TExpenseField.Destroy;
begin
  ValueDetection := nil;
  &Type := nil;
  LabelDetection := nil;
  inherited;
end;

function TExpenseField.Obj: TExpenseField;
begin
  Result := Self;
end;

function TExpenseField.GetLabelDetection: TExpenseDetection;
begin
  Result := FLabelDetection;
end;

procedure TExpenseField.SetLabelDetection(const Value: TExpenseDetection);
begin
  if FLabelDetection <> Value then
  begin
    if not KeepLabelDetection then
      FLabelDetection.Free;
    FLabelDetection := Value;
  end;
end;

function TExpenseField.GetKeepLabelDetection: Boolean;
begin
  Result := FKeepLabelDetection;
end;

procedure TExpenseField.SetKeepLabelDetection(const Value: Boolean);
begin
  FKeepLabelDetection := Value;
end;

function TExpenseField.IsSetLabelDetection: Boolean;
begin
  Result := FLabelDetection <> nil;
end;

function TExpenseField.GetPageNumber: Integer;
begin
  Result := FPageNumber.ValueOrDefault;
end;

procedure TExpenseField.SetPageNumber(const Value: Integer);
begin
  FPageNumber := Value;
end;

function TExpenseField.IsSetPageNumber: Boolean;
begin
  Result := FPageNumber.HasValue;
end;

function TExpenseField.GetType: TExpenseType;
begin
  Result := FType;
end;

procedure TExpenseField.SetType(const Value: TExpenseType);
begin
  if FType <> Value then
  begin
    if not KeepType then
      FType.Free;
    FType := Value;
  end;
end;

function TExpenseField.GetKeepType: Boolean;
begin
  Result := FKeepType;
end;

procedure TExpenseField.SetKeepType(const Value: Boolean);
begin
  FKeepType := Value;
end;

function TExpenseField.IsSetType: Boolean;
begin
  Result := FType <> nil;
end;

function TExpenseField.GetValueDetection: TExpenseDetection;
begin
  Result := FValueDetection;
end;

procedure TExpenseField.SetValueDetection(const Value: TExpenseDetection);
begin
  if FValueDetection <> Value then
  begin
    if not KeepValueDetection then
      FValueDetection.Free;
    FValueDetection := Value;
  end;
end;

function TExpenseField.GetKeepValueDetection: Boolean;
begin
  Result := FKeepValueDetection;
end;

procedure TExpenseField.SetKeepValueDetection(const Value: Boolean);
begin
  FKeepValueDetection := Value;
end;

function TExpenseField.IsSetValueDetection: Boolean;
begin
  Result := FValueDetection <> nil;
end;

end.
