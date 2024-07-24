unit AWS.SSM.Transform.InventoryItemSchemaUnmarshaller;

interface

uses
  AWS.SSM.Model.InventoryItemSchema, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SSM.Transform.InventoryItemAttributeUnmarshaller, 
  AWS.SSM.Model.InventoryItemAttribute, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInventoryItemSchemaUnmarshaller = IUnmarshaller<TInventoryItemSchema, TJsonUnmarshallerContext>;
  
  TInventoryItemSchemaUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInventoryItemSchema, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInventoryItemSchemaUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInventoryItemSchema;
    class function JsonInstance: IInventoryItemSchemaUnmarshaller; static;
  end;
  
implementation

{ TInventoryItemSchemaUnmarshaller }

function TInventoryItemSchemaUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInventoryItemSchema;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInventoryItemSchema;
begin
  UnmarshalledObject := TInventoryItemSchema.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Attributes', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TInventoryItemAttribute, IInventoryItemAttributeUnmarshaller>.JsonNew(TInventoryItemAttributeUnmarshaller.JsonInstance);
        UnmarshalledObject.Attributes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DisplayName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DisplayName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TypeName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TypeName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Version', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Version := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInventoryItemSchemaUnmarshaller.Create;
begin
  FJsonInstance := TInventoryItemSchemaUnmarshaller.Create;
end;

class function TInventoryItemSchemaUnmarshaller.JsonInstance: IInventoryItemSchemaUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
