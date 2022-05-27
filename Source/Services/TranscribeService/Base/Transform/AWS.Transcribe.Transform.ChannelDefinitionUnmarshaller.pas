unit AWS.Transcribe.Transform.ChannelDefinitionUnmarshaller;

interface

uses
  AWS.Transcribe.Model.ChannelDefinition, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IChannelDefinitionUnmarshaller = IUnmarshaller<TChannelDefinition, TJsonUnmarshallerContext>;
  
  TChannelDefinitionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TChannelDefinition, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IChannelDefinitionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TChannelDefinition;
    class function JsonInstance: IChannelDefinitionUnmarshaller; static;
  end;
  
implementation

{ TChannelDefinitionUnmarshaller }

function TChannelDefinitionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TChannelDefinition;
var
  TargetDepth: Integer;
  UnmarshalledObject: TChannelDefinition;
begin
  UnmarshalledObject := TChannelDefinition.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ChannelId', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.ChannelId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ParticipantRole', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ParticipantRole := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TChannelDefinitionUnmarshaller.Create;
begin
  FJsonInstance := TChannelDefinitionUnmarshaller.Create;
end;

class function TChannelDefinitionUnmarshaller.JsonInstance: IChannelDefinitionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
