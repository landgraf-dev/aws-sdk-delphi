unit AWS.Textract.Model.LineItemFields;

interface

uses
  System.Generics.Collections, 
  AWS.Textract.Model.ExpenseField;

type
  TLineItemFields = class;
  
  ILineItemFields = interface
    function GetLineItemExpenseFields: TObjectList<TExpenseField>;
    procedure SetLineItemExpenseFields(const Value: TObjectList<TExpenseField>);
    function GetKeepLineItemExpenseFields: Boolean;
    procedure SetKeepLineItemExpenseFields(const Value: Boolean);
    function Obj: TLineItemFields;
    function IsSetLineItemExpenseFields: Boolean;
    property LineItemExpenseFields: TObjectList<TExpenseField> read GetLineItemExpenseFields write SetLineItemExpenseFields;
    property KeepLineItemExpenseFields: Boolean read GetKeepLineItemExpenseFields write SetKeepLineItemExpenseFields;
  end;
  
  TLineItemFields = class
  strict private
    FLineItemExpenseFields: TObjectList<TExpenseField>;
    FKeepLineItemExpenseFields: Boolean;
    function GetLineItemExpenseFields: TObjectList<TExpenseField>;
    procedure SetLineItemExpenseFields(const Value: TObjectList<TExpenseField>);
    function GetKeepLineItemExpenseFields: Boolean;
    procedure SetKeepLineItemExpenseFields(const Value: Boolean);
  strict protected
    function Obj: TLineItemFields;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetLineItemExpenseFields: Boolean;
    property LineItemExpenseFields: TObjectList<TExpenseField> read GetLineItemExpenseFields write SetLineItemExpenseFields;
    property KeepLineItemExpenseFields: Boolean read GetKeepLineItemExpenseFields write SetKeepLineItemExpenseFields;
  end;
  
implementation

{ TLineItemFields }

constructor TLineItemFields.Create;
begin
  inherited;
  FLineItemExpenseFields := TObjectList<TExpenseField>.Create;
end;

destructor TLineItemFields.Destroy;
begin
  LineItemExpenseFields := nil;
  inherited;
end;

function TLineItemFields.Obj: TLineItemFields;
begin
  Result := Self;
end;

function TLineItemFields.GetLineItemExpenseFields: TObjectList<TExpenseField>;
begin
  Result := FLineItemExpenseFields;
end;

procedure TLineItemFields.SetLineItemExpenseFields(const Value: TObjectList<TExpenseField>);
begin
  if FLineItemExpenseFields <> Value then
  begin
    if not KeepLineItemExpenseFields then
      FLineItemExpenseFields.Free;
    FLineItemExpenseFields := Value;
  end;
end;

function TLineItemFields.GetKeepLineItemExpenseFields: Boolean;
begin
  Result := FKeepLineItemExpenseFields;
end;

procedure TLineItemFields.SetKeepLineItemExpenseFields(const Value: Boolean);
begin
  FKeepLineItemExpenseFields := Value;
end;

function TLineItemFields.IsSetLineItemExpenseFields: Boolean;
begin
  Result := (FLineItemExpenseFields <> nil) and (FLineItemExpenseFields.Count > 0);
end;

end.
