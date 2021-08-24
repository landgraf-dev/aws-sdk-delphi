unit AWS.SESv2.Transform.SuppressedDestinationAttributesUnmarshaller;

interface

uses
  AWS.SESv2.Model.SuppressedDestinationAttributes, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISuppressedDestinationAttributesUnmarshaller = IUnmarshaller<TSuppressedDestinationAttributes, TJsonUnmarshallerContext>;
  
  TSuppressedDestinationAttributesUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSuppressedDestinationAttributes, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISuppressedDestinationAttributesUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSuppressedDestinationAttributes;
    class function JsonInstance: ISuppressedDestinationAttributesUnmarshaller; static;
  end;
  
implementation

{ TSuppressedDestinationAttributesUnmarshaller }

function TSuppressedDestinationAttributesUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSuppressedDestinationAttributes;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSuppressedDestinationAttributes;
begin
  UnmarshalledObject := TSuppressedDestinationAttributes.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('FeedbackId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.FeedbackId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MessageId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.MessageId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSuppressedDestinationAttributesUnmarshaller.Create;
begin
  FJsonInstance := TSuppressedDestinationAttributesUnmarshaller.Create;
end;

class function TSuppressedDestinationAttributesUnmarshaller.JsonInstance: ISuppressedDestinationAttributesUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
