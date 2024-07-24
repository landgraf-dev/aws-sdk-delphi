unit AWS.SSM.Transform.InventoryResultEntityUnmarshaller;

interface

uses
  AWS.SSM.Model.InventoryResultEntity, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.InventoryResultItemUnmarshaller, 
  AWS.SSM.Model.InventoryResultItem;

type
  IInventoryResultEntityUnmarshaller = IUnmarshaller<TInventoryResultEntity, TJsonUnmarshallerContext>;
  
  TInventoryResultEntityUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInventoryResultEntity, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInventoryResultEntityUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInventoryResultEntity;
    class function JsonInstance: IInventoryResultEntityUnmarshaller; static;
  end;
  
implementation

{ TInventoryResultEntityUnmarshaller }

function TInventoryResultEntityUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInventoryResultEntity;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInventoryResultEntity;
begin
  UnmarshalledObject := TInventoryResultEntity.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Data', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectDictionaryUnmarshaller<string, TInventoryResultItem, IJsonStringUnmarshaller, IInventoryResultItemUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TInventoryResultItemUnmarshaller.JsonInstance);
        UnmarshalledObject.Data := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Id', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInventoryResultEntityUnmarshaller.Create;
begin
  FJsonInstance := TInventoryResultEntityUnmarshaller.Create;
end;

class function TInventoryResultEntityUnmarshaller.JsonInstance: IInventoryResultEntityUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
