unit AWS.SESv2.Transform.PinpointDestinationUnmarshaller;

interface

uses
  AWS.SESv2.Model.PinpointDestination, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPinpointDestinationUnmarshaller = IUnmarshaller<TPinpointDestination, TJsonUnmarshallerContext>;
  
  TPinpointDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPinpointDestination, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPinpointDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPinpointDestination;
    class function JsonInstance: IPinpointDestinationUnmarshaller; static;
  end;
  
implementation

{ TPinpointDestinationUnmarshaller }

function TPinpointDestinationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPinpointDestination;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPinpointDestination;
begin
  UnmarshalledObject := TPinpointDestination.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('ApplicationArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ApplicationArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPinpointDestinationUnmarshaller.Create;
begin
  FJsonInstance := TPinpointDestinationUnmarshaller.Create;
end;

class function TPinpointDestinationUnmarshaller.JsonInstance: IPinpointDestinationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
