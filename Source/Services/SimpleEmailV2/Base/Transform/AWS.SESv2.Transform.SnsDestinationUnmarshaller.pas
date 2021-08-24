unit AWS.SESv2.Transform.SnsDestinationUnmarshaller;

interface

uses
  AWS.SESv2.Model.SnsDestination, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISnsDestinationUnmarshaller = IUnmarshaller<TSnsDestination, TJsonUnmarshallerContext>;
  
  TSnsDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSnsDestination, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISnsDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSnsDestination;
    class function JsonInstance: ISnsDestinationUnmarshaller; static;
  end;
  
implementation

{ TSnsDestinationUnmarshaller }

function TSnsDestinationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSnsDestination;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSnsDestination;
begin
  UnmarshalledObject := TSnsDestination.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('TopicArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TopicArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSnsDestinationUnmarshaller.Create;
begin
  FJsonInstance := TSnsDestinationUnmarshaller.Create;
end;

class function TSnsDestinationUnmarshaller.JsonInstance: ISnsDestinationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
