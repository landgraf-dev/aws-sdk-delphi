unit AWS.Textract.Model.LineItemGroup;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.Textract.Model.LineItemFields;

type
  TLineItemGroup = class;
  
  ILineItemGroup = interface
    function GetLineItemGroupIndex: Integer;
    procedure SetLineItemGroupIndex(const Value: Integer);
    function GetLineItems: TObjectList<TLineItemFields>;
    procedure SetLineItems(const Value: TObjectList<TLineItemFields>);
    function GetKeepLineItems: Boolean;
    procedure SetKeepLineItems(const Value: Boolean);
    function Obj: TLineItemGroup;
    function IsSetLineItemGroupIndex: Boolean;
    function IsSetLineItems: Boolean;
    property LineItemGroupIndex: Integer read GetLineItemGroupIndex write SetLineItemGroupIndex;
    property LineItems: TObjectList<TLineItemFields> read GetLineItems write SetLineItems;
    property KeepLineItems: Boolean read GetKeepLineItems write SetKeepLineItems;
  end;
  
  TLineItemGroup = class
  strict private
    FLineItemGroupIndex: Nullable<Integer>;
    FLineItems: TObjectList<TLineItemFields>;
    FKeepLineItems: Boolean;
    function GetLineItemGroupIndex: Integer;
    procedure SetLineItemGroupIndex(const Value: Integer);
    function GetLineItems: TObjectList<TLineItemFields>;
    procedure SetLineItems(const Value: TObjectList<TLineItemFields>);
    function GetKeepLineItems: Boolean;
    procedure SetKeepLineItems(const Value: Boolean);
  strict protected
    function Obj: TLineItemGroup;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetLineItemGroupIndex: Boolean;
    function IsSetLineItems: Boolean;
    property LineItemGroupIndex: Integer read GetLineItemGroupIndex write SetLineItemGroupIndex;
    property LineItems: TObjectList<TLineItemFields> read GetLineItems write SetLineItems;
    property KeepLineItems: Boolean read GetKeepLineItems write SetKeepLineItems;
  end;
  
implementation

{ TLineItemGroup }

constructor TLineItemGroup.Create;
begin
  inherited;
  FLineItems := TObjectList<TLineItemFields>.Create;
end;

destructor TLineItemGroup.Destroy;
begin
  LineItems := nil;
  inherited;
end;

function TLineItemGroup.Obj: TLineItemGroup;
begin
  Result := Self;
end;

function TLineItemGroup.GetLineItemGroupIndex: Integer;
begin
  Result := FLineItemGroupIndex.ValueOrDefault;
end;

procedure TLineItemGroup.SetLineItemGroupIndex(const Value: Integer);
begin
  FLineItemGroupIndex := Value;
end;

function TLineItemGroup.IsSetLineItemGroupIndex: Boolean;
begin
  Result := FLineItemGroupIndex.HasValue;
end;

function TLineItemGroup.GetLineItems: TObjectList<TLineItemFields>;
begin
  Result := FLineItems;
end;

procedure TLineItemGroup.SetLineItems(const Value: TObjectList<TLineItemFields>);
begin
  if FLineItems <> Value then
  begin
    if not KeepLineItems then
      FLineItems.Free;
    FLineItems := Value;
  end;
end;

function TLineItemGroup.GetKeepLineItems: Boolean;
begin
  Result := FKeepLineItems;
end;

procedure TLineItemGroup.SetKeepLineItems(const Value: Boolean);
begin
  FKeepLineItems := Value;
end;

function TLineItemGroup.IsSetLineItems: Boolean;
begin
  Result := (FLineItems <> nil) and (FLineItems.Count > 0);
end;

end.
