unit AWS.SSM.Transform.OpsEntityUnmarshaller;

interface

uses
  AWS.SSM.Model.OpsEntity, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.OpsEntityItemUnmarshaller, 
  AWS.SSM.Model.OpsEntityItem;

type
  IOpsEntityUnmarshaller = IUnmarshaller<TOpsEntity, TJsonUnmarshallerContext>;
  
  TOpsEntityUnmarshaller = class(TInterfacedObject, IUnmarshaller<TOpsEntity, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IOpsEntityUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TOpsEntity;
    class function JsonInstance: IOpsEntityUnmarshaller; static;
  end;
  
implementation

{ TOpsEntityUnmarshaller }

function TOpsEntityUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TOpsEntity;
var
  TargetDepth: Integer;
  UnmarshalledObject: TOpsEntity;
begin
  UnmarshalledObject := TOpsEntity.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Data', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectDictionaryUnmarshaller<string, TOpsEntityItem, IJsonStringUnmarshaller, IOpsEntityItemUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TOpsEntityItemUnmarshaller.JsonInstance);
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

class constructor TOpsEntityUnmarshaller.Create;
begin
  FJsonInstance := TOpsEntityUnmarshaller.Create;
end;

class function TOpsEntityUnmarshaller.JsonInstance: IOpsEntityUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
