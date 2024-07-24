unit AWS.SSM.Model.InventoryItemAttribute;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TInventoryItemAttribute = class;
  
  IInventoryItemAttribute = interface
    function GetDataType: TInventoryAttributeDataType;
    procedure SetDataType(const Value: TInventoryAttributeDataType);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TInventoryItemAttribute;
    function IsSetDataType: Boolean;
    function IsSetName: Boolean;
    property DataType: TInventoryAttributeDataType read GetDataType write SetDataType;
    property Name: string read GetName write SetName;
  end;
  
  TInventoryItemAttribute = class
  strict private
    FDataType: Nullable<TInventoryAttributeDataType>;
    FName: Nullable<string>;
    function GetDataType: TInventoryAttributeDataType;
    procedure SetDataType(const Value: TInventoryAttributeDataType);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TInventoryItemAttribute;
  public
    function IsSetDataType: Boolean;
    function IsSetName: Boolean;
    property DataType: TInventoryAttributeDataType read GetDataType write SetDataType;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TInventoryItemAttribute }

function TInventoryItemAttribute.Obj: TInventoryItemAttribute;
begin
  Result := Self;
end;

function TInventoryItemAttribute.GetDataType: TInventoryAttributeDataType;
begin
  Result := FDataType.ValueOrDefault;
end;

procedure TInventoryItemAttribute.SetDataType(const Value: TInventoryAttributeDataType);
begin
  FDataType := Value;
end;

function TInventoryItemAttribute.IsSetDataType: Boolean;
begin
  Result := FDataType.HasValue;
end;

function TInventoryItemAttribute.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TInventoryItemAttribute.SetName(const Value: string);
begin
  FName := Value;
end;

function TInventoryItemAttribute.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
