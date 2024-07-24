unit AWS.SSM.Transform.OpsItemDataValueUnmarshaller;

interface

uses
  AWS.SSM.Model.OpsItemDataValue, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IOpsItemDataValueUnmarshaller = IUnmarshaller<TOpsItemDataValue, TJsonUnmarshallerContext>;
  
  TOpsItemDataValueUnmarshaller = class(TInterfacedObject, IUnmarshaller<TOpsItemDataValue, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IOpsItemDataValueUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TOpsItemDataValue;
    class function JsonInstance: IOpsItemDataValueUnmarshaller; static;
  end;
  
implementation

{ TOpsItemDataValueUnmarshaller }

function TOpsItemDataValueUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TOpsItemDataValue;
var
  TargetDepth: Integer;
  UnmarshalledObject: TOpsItemDataValue;
begin
  UnmarshalledObject := TOpsItemDataValue.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Type', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.&Type := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Value', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Value := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TOpsItemDataValueUnmarshaller.Create;
begin
  FJsonInstance := TOpsItemDataValueUnmarshaller.Create;
end;

class function TOpsItemDataValueUnmarshaller.JsonInstance: IOpsItemDataValueUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
