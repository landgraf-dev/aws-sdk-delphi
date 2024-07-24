unit AWS.SSM.Transform.InventoryItemAttributeUnmarshaller;

interface

uses
  AWS.SSM.Model.InventoryItemAttribute, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInventoryItemAttributeUnmarshaller = IUnmarshaller<TInventoryItemAttribute, TJsonUnmarshallerContext>;
  
  TInventoryItemAttributeUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInventoryItemAttribute, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInventoryItemAttributeUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInventoryItemAttribute;
    class function JsonInstance: IInventoryItemAttributeUnmarshaller; static;
  end;
  
implementation

{ TInventoryItemAttributeUnmarshaller }

function TInventoryItemAttributeUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInventoryItemAttribute;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInventoryItemAttribute;
begin
  UnmarshalledObject := TInventoryItemAttribute.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DataType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DataType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInventoryItemAttributeUnmarshaller.Create;
begin
  FJsonInstance := TInventoryItemAttributeUnmarshaller.Create;
end;

class function TInventoryItemAttributeUnmarshaller.JsonInstance: IInventoryItemAttributeUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
