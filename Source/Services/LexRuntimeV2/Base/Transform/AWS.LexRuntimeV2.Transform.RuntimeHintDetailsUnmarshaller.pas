unit AWS.LexRuntimeV2.Transform.RuntimeHintDetailsUnmarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.RuntimeHintDetails, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.LexRuntimeV2.Transform.RuntimeHintValueUnmarshaller, 
  AWS.LexRuntimeV2.Model.RuntimeHintValue, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IRuntimeHintDetailsUnmarshaller = IUnmarshaller<TRuntimeHintDetails, TJsonUnmarshallerContext>;
  
  TRuntimeHintDetailsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TRuntimeHintDetails, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IRuntimeHintDetailsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TRuntimeHintDetails;
    class function JsonInstance: IRuntimeHintDetailsUnmarshaller; static;
  end;
  
implementation

{ TRuntimeHintDetailsUnmarshaller }

function TRuntimeHintDetailsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TRuntimeHintDetails;
var
  TargetDepth: Integer;
  UnmarshalledObject: TRuntimeHintDetails;
begin
  UnmarshalledObject := TRuntimeHintDetails.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('runtimeHintValues', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TRuntimeHintValue, IRuntimeHintValueUnmarshaller>.JsonNew(TRuntimeHintValueUnmarshaller.JsonInstance);
        UnmarshalledObject.RuntimeHintValues := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TRuntimeHintDetailsUnmarshaller.Create;
begin
  FJsonInstance := TRuntimeHintDetailsUnmarshaller.Create;
end;

class function TRuntimeHintDetailsUnmarshaller.JsonInstance: IRuntimeHintDetailsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
