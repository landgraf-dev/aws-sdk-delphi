unit AWS.Transcribe.Transform.ChannelDefinitionMarshaller;

interface

uses
  AWS.Transcribe.Model.ChannelDefinition, 
  AWS.Transform.RequestMarshaller;

type
  IChannelDefinitionMarshaller = IRequestMarshaller<TChannelDefinition, TJsonMarshallerContext>;
  
  TChannelDefinitionMarshaller = class(TInterfacedObject, IRequestMarshaller<TChannelDefinition, TJsonMarshallerContext>)
  strict private
    class var FInstance: IChannelDefinitionMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TChannelDefinition; Context: TJsonMarshallerContext);
    class function Instance: IChannelDefinitionMarshaller; static;
  end;
  
implementation

{ TChannelDefinitionMarshaller }

procedure TChannelDefinitionMarshaller.Marshall(ARequestObject: TChannelDefinition; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetChannelId then
  begin
    Context.Writer.WriteName('ChannelId');
    Context.Writer.WriteInteger(ARequestObject.ChannelId);
  end;
  if ARequestObject.IsSetParticipantRole then
  begin
    Context.Writer.WriteName('ParticipantRole');
    Context.Writer.WriteString(ARequestObject.ParticipantRole.Value);
  end;
end;

class constructor TChannelDefinitionMarshaller.Create;
begin
  FInstance := TChannelDefinitionMarshaller.Create;
end;

class function TChannelDefinitionMarshaller.Instance: IChannelDefinitionMarshaller;
begin
  Result := FInstance;
end;

end.
