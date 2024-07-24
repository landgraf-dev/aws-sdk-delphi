unit AWS.SSM.Transform.InventoryResultItemUnmarshaller;

interface

uses
  AWS.SSM.Model.InventoryResultItem, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  System.Generics.Collections;

type
  IInventoryResultItemUnmarshaller = IUnmarshaller<TInventoryResultItem, TJsonUnmarshallerContext>;
  
  TInventoryResultItemUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInventoryResultItem, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInventoryResultItemUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInventoryResultItem;
    class function JsonInstance: IInventoryResultItemUnmarshaller; static;
  end;
  
implementation

{ TInventoryResultItemUnmarshaller }

function TInventoryResultItemUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInventoryResultItem;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInventoryResultItem;
begin
  UnmarshalledObject := TInventoryResultItem.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CaptureTime', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CaptureTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Content', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TDictionary<string, string>, IUnmarshaller<TDictionary<string, string>, TJsonUnmarshallerContext>>.JsonNew(TJsonDictionaryUnmarshaller<string, string, IJsonStringUnmarshaller, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TStringUnmarshaller.JsonInstance));
        UnmarshalledObject.Content := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ContentHash', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ContentHash := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SchemaVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SchemaVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TypeName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TypeName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInventoryResultItemUnmarshaller.Create;
begin
  FJsonInstance := TInventoryResultItemUnmarshaller.Create;
end;

class function TInventoryResultItemUnmarshaller.JsonInstance: IInventoryResultItemUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
