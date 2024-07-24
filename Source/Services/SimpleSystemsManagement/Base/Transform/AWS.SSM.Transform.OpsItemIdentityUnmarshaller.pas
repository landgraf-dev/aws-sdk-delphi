unit AWS.SSM.Transform.OpsItemIdentityUnmarshaller;

interface

uses
  AWS.SSM.Model.OpsItemIdentity, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IOpsItemIdentityUnmarshaller = IUnmarshaller<TOpsItemIdentity, TJsonUnmarshallerContext>;
  
  TOpsItemIdentityUnmarshaller = class(TInterfacedObject, IUnmarshaller<TOpsItemIdentity, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IOpsItemIdentityUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TOpsItemIdentity;
    class function JsonInstance: IOpsItemIdentityUnmarshaller; static;
  end;
  
implementation

{ TOpsItemIdentityUnmarshaller }

function TOpsItemIdentityUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TOpsItemIdentity;
var
  TargetDepth: Integer;
  UnmarshalledObject: TOpsItemIdentity;
begin
  UnmarshalledObject := TOpsItemIdentity.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('Arn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Arn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TOpsItemIdentityUnmarshaller.Create;
begin
  FJsonInstance := TOpsItemIdentityUnmarshaller.Create;
end;

class function TOpsItemIdentityUnmarshaller.JsonInstance: IOpsItemIdentityUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
