unit AWS.SSM.Model.InventoryItemSchema;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.InventoryItemAttribute, 
  AWS.Nullable;

type
  TInventoryItemSchema = class;
  
  IInventoryItemSchema = interface
    function GetAttributes: TObjectList<TInventoryItemAttribute>;
    procedure SetAttributes(const Value: TObjectList<TInventoryItemAttribute>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
    function GetVersion: string;
    procedure SetVersion(const Value: string);
    function Obj: TInventoryItemSchema;
    function IsSetAttributes: Boolean;
    function IsSetDisplayName: Boolean;
    function IsSetTypeName: Boolean;
    function IsSetVersion: Boolean;
    property Attributes: TObjectList<TInventoryItemAttribute> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property TypeName: string read GetTypeName write SetTypeName;
    property Version: string read GetVersion write SetVersion;
  end;
  
  TInventoryItemSchema = class
  strict private
    FAttributes: TObjectList<TInventoryItemAttribute>;
    FKeepAttributes: Boolean;
    FDisplayName: Nullable<string>;
    FTypeName: Nullable<string>;
    FVersion: Nullable<string>;
    function GetAttributes: TObjectList<TInventoryItemAttribute>;
    procedure SetAttributes(const Value: TObjectList<TInventoryItemAttribute>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
    function GetVersion: string;
    procedure SetVersion(const Value: string);
  strict protected
    function Obj: TInventoryItemSchema;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    function IsSetDisplayName: Boolean;
    function IsSetTypeName: Boolean;
    function IsSetVersion: Boolean;
    property Attributes: TObjectList<TInventoryItemAttribute> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property TypeName: string read GetTypeName write SetTypeName;
    property Version: string read GetVersion write SetVersion;
  end;
  
implementation

{ TInventoryItemSchema }

constructor TInventoryItemSchema.Create;
begin
  inherited;
  FAttributes := TObjectList<TInventoryItemAttribute>.Create;
end;

destructor TInventoryItemSchema.Destroy;
begin
  Attributes := nil;
  inherited;
end;

function TInventoryItemSchema.Obj: TInventoryItemSchema;
begin
  Result := Self;
end;

function TInventoryItemSchema.GetAttributes: TObjectList<TInventoryItemAttribute>;
begin
  Result := FAttributes;
end;

procedure TInventoryItemSchema.SetAttributes(const Value: TObjectList<TInventoryItemAttribute>);
begin
  if FAttributes <> Value then
  begin
    if not KeepAttributes then
      FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TInventoryItemSchema.GetKeepAttributes: Boolean;
begin
  Result := FKeepAttributes;
end;

procedure TInventoryItemSchema.SetKeepAttributes(const Value: Boolean);
begin
  FKeepAttributes := Value;
end;

function TInventoryItemSchema.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

function TInventoryItemSchema.GetDisplayName: string;
begin
  Result := FDisplayName.ValueOrDefault;
end;

procedure TInventoryItemSchema.SetDisplayName(const Value: string);
begin
  FDisplayName := Value;
end;

function TInventoryItemSchema.IsSetDisplayName: Boolean;
begin
  Result := FDisplayName.HasValue;
end;

function TInventoryItemSchema.GetTypeName: string;
begin
  Result := FTypeName.ValueOrDefault;
end;

procedure TInventoryItemSchema.SetTypeName(const Value: string);
begin
  FTypeName := Value;
end;

function TInventoryItemSchema.IsSetTypeName: Boolean;
begin
  Result := FTypeName.HasValue;
end;

function TInventoryItemSchema.GetVersion: string;
begin
  Result := FVersion.ValueOrDefault;
end;

procedure TInventoryItemSchema.SetVersion(const Value: string);
begin
  FVersion := Value;
end;

function TInventoryItemSchema.IsSetVersion: Boolean;
begin
  Result := FVersion.HasValue;
end;

end.
