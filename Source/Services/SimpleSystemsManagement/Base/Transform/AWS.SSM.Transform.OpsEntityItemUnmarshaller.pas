unit AWS.SSM.Transform.OpsEntityItemUnmarshaller;

interface

uses
  AWS.SSM.Model.OpsEntityItem, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  System.Generics.Collections;

type
  IOpsEntityItemUnmarshaller = IUnmarshaller<TOpsEntityItem, TJsonUnmarshallerContext>;
  
  TOpsEntityItemUnmarshaller = class(TInterfacedObject, IUnmarshaller<TOpsEntityItem, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IOpsEntityItemUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TOpsEntityItem;
    class function JsonInstance: IOpsEntityItemUnmarshaller; static;
  end;
  
implementation

{ TOpsEntityItemUnmarshaller }

function TOpsEntityItemUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TOpsEntityItem;
var
  TargetDepth: Integer;
  UnmarshalledObject: TOpsEntityItem;
begin
  UnmarshalledObject := TOpsEntityItem.Create;
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
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TOpsEntityItemUnmarshaller.Create;
begin
  FJsonInstance := TOpsEntityItemUnmarshaller.Create;
end;

class function TOpsEntityItemUnmarshaller.JsonInstance: IOpsEntityItemUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
