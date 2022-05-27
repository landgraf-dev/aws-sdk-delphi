unit AWS.Textract.Model.ExpenseDocument;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Textract.Model.LineItemGroup, 
  AWS.Textract.Model.ExpenseField;

type
  TExpenseDocument = class;
  
  IExpenseDocument = interface
    function GetExpenseIndex: Integer;
    procedure SetExpenseIndex(const Value: Integer);
    function GetLineItemGroups: TObjectList<TLineItemGroup>;
    procedure SetLineItemGroups(const Value: TObjectList<TLineItemGroup>);
    function GetKeepLineItemGroups: Boolean;
    procedure SetKeepLineItemGroups(const Value: Boolean);
    function GetSummaryFields: TObjectList<TExpenseField>;
    procedure SetSummaryFields(const Value: TObjectList<TExpenseField>);
    function GetKeepSummaryFields: Boolean;
    procedure SetKeepSummaryFields(const Value: Boolean);
    function Obj: TExpenseDocument;
    function IsSetExpenseIndex: Boolean;
    function IsSetLineItemGroups: Boolean;
    function IsSetSummaryFields: Boolean;
    property ExpenseIndex: Integer read GetExpenseIndex write SetExpenseIndex;
    property LineItemGroups: TObjectList<TLineItemGroup> read GetLineItemGroups write SetLineItemGroups;
    property KeepLineItemGroups: Boolean read GetKeepLineItemGroups write SetKeepLineItemGroups;
    property SummaryFields: TObjectList<TExpenseField> read GetSummaryFields write SetSummaryFields;
    property KeepSummaryFields: Boolean read GetKeepSummaryFields write SetKeepSummaryFields;
  end;
  
  TExpenseDocument = class
  strict private
    FExpenseIndex: Nullable<Integer>;
    FLineItemGroups: TObjectList<TLineItemGroup>;
    FKeepLineItemGroups: Boolean;
    FSummaryFields: TObjectList<TExpenseField>;
    FKeepSummaryFields: Boolean;
    function GetExpenseIndex: Integer;
    procedure SetExpenseIndex(const Value: Integer);
    function GetLineItemGroups: TObjectList<TLineItemGroup>;
    procedure SetLineItemGroups(const Value: TObjectList<TLineItemGroup>);
    function GetKeepLineItemGroups: Boolean;
    procedure SetKeepLineItemGroups(const Value: Boolean);
    function GetSummaryFields: TObjectList<TExpenseField>;
    procedure SetSummaryFields(const Value: TObjectList<TExpenseField>);
    function GetKeepSummaryFields: Boolean;
    procedure SetKeepSummaryFields(const Value: Boolean);
  strict protected
    function Obj: TExpenseDocument;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetExpenseIndex: Boolean;
    function IsSetLineItemGroups: Boolean;
    function IsSetSummaryFields: Boolean;
    property ExpenseIndex: Integer read GetExpenseIndex write SetExpenseIndex;
    property LineItemGroups: TObjectList<TLineItemGroup> read GetLineItemGroups write SetLineItemGroups;
    property KeepLineItemGroups: Boolean read GetKeepLineItemGroups write SetKeepLineItemGroups;
    property SummaryFields: TObjectList<TExpenseField> read GetSummaryFields write SetSummaryFields;
    property KeepSummaryFields: Boolean read GetKeepSummaryFields write SetKeepSummaryFields;
  end;
  
implementation

{ TExpenseDocument }

constructor TExpenseDocument.Create;
begin
  inherited;
  FLineItemGroups := TObjectList<TLineItemGroup>.Create;
  FSummaryFields := TObjectList<TExpenseField>.Create;
end;

destructor TExpenseDocument.Destroy;
begin
  SummaryFields := nil;
  LineItemGroups := nil;
  inherited;
end;

function TExpenseDocument.Obj: TExpenseDocument;
begin
  Result := Self;
end;

function TExpenseDocument.GetExpenseIndex: Integer;
begin
  Result := FExpenseIndex.ValueOrDefault;
end;

procedure TExpenseDocument.SetExpenseIndex(const Value: Integer);
begin
  FExpenseIndex := Value;
end;

function TExpenseDocument.IsSetExpenseIndex: Boolean;
begin
  Result := FExpenseIndex.HasValue;
end;

function TExpenseDocument.GetLineItemGroups: TObjectList<TLineItemGroup>;
begin
  Result := FLineItemGroups;
end;

procedure TExpenseDocument.SetLineItemGroups(const Value: TObjectList<TLineItemGroup>);
begin
  if FLineItemGroups <> Value then
  begin
    if not KeepLineItemGroups then
      FLineItemGroups.Free;
    FLineItemGroups := Value;
  end;
end;

function TExpenseDocument.GetKeepLineItemGroups: Boolean;
begin
  Result := FKeepLineItemGroups;
end;

procedure TExpenseDocument.SetKeepLineItemGroups(const Value: Boolean);
begin
  FKeepLineItemGroups := Value;
end;

function TExpenseDocument.IsSetLineItemGroups: Boolean;
begin
  Result := (FLineItemGroups <> nil) and (FLineItemGroups.Count > 0);
end;

function TExpenseDocument.GetSummaryFields: TObjectList<TExpenseField>;
begin
  Result := FSummaryFields;
end;

procedure TExpenseDocument.SetSummaryFields(const Value: TObjectList<TExpenseField>);
begin
  if FSummaryFields <> Value then
  begin
    if not KeepSummaryFields then
      FSummaryFields.Free;
    FSummaryFields := Value;
  end;
end;

function TExpenseDocument.GetKeepSummaryFields: Boolean;
begin
  Result := FKeepSummaryFields;
end;

procedure TExpenseDocument.SetKeepSummaryFields(const Value: Boolean);
begin
  FKeepSummaryFields := Value;
end;

function TExpenseDocument.IsSetSummaryFields: Boolean;
begin
  Result := (FSummaryFields <> nil) and (FSummaryFields.Count > 0);
end;

end.
