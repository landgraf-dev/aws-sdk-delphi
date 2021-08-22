unit AWS.LexRuntimeV2.Transform.MessageUnmarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.Message, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.LexRuntimeV2.Transform.ImageResponseCardUnmarshaller;

type
  IMessageUnmarshaller = IUnmarshaller<TMessage, TJsonUnmarshallerContext>;
  
  TMessageUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMessage, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMessageUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMessage;
    class function JsonInstance: IMessageUnmarshaller; static;
  end;
  
implementation

{ TMessageUnmarshaller }

function TMessageUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMessage;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMessage;
begin
  UnmarshalledObject := TMessage.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('content', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Content := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('contentType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ContentType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('imageResponseCard', TargetDepth) then
      begin
        var Unmarshaller := TImageResponseCardUnmarshaller.JsonInstance;
        UnmarshalledObject.ImageResponseCard := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMessageUnmarshaller.Create;
begin
  FJsonInstance := TMessageUnmarshaller.Create;
end;

class function TMessageUnmarshaller.JsonInstance: IMessageUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
