unit AWS.SESv2.Transform.EventDestinationDefinitionMarshaller;

interface

uses
  AWS.SESv2.Model.EventDestinationDefinition, 
  AWS.Transform.RequestMarshaller, 
  AWS.SESv2.Transform.CloudWatchDestinationMarshaller, 
  AWS.SESv2.Transform.KinesisFirehoseDestinationMarshaller, 
  AWS.SESv2.Transform.PinpointDestinationMarshaller, 
  AWS.SESv2.Transform.SnsDestinationMarshaller;

type
  IEventDestinationDefinitionMarshaller = IRequestMarshaller<TEventDestinationDefinition, TJsonMarshallerContext>;
  
  TEventDestinationDefinitionMarshaller = class(TInterfacedObject, IRequestMarshaller<TEventDestinationDefinition, TJsonMarshallerContext>)
  strict private
    class var FInstance: IEventDestinationDefinitionMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TEventDestinationDefinition; Context: TJsonMarshallerContext);
    class function Instance: IEventDestinationDefinitionMarshaller; static;
  end;
  
implementation

{ TEventDestinationDefinitionMarshaller }

procedure TEventDestinationDefinitionMarshaller.Marshall(ARequestObject: TEventDestinationDefinition; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetCloudWatchDestination then
  begin
    Context.Writer.WriteName('CloudWatchDestination');
    Context.Writer.WriteBeginObject;
    TCloudWatchDestinationMarshaller.Instance.Marshall(ARequestObject.CloudWatchDestination, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetEnabled then
  begin
    Context.Writer.WriteName('Enabled');
    Context.Writer.WriteBoolean(ARequestObject.Enabled);
  end;
  if ARequestObject.IsSetKinesisFirehoseDestination then
  begin
    Context.Writer.WriteName('KinesisFirehoseDestination');
    Context.Writer.WriteBeginObject;
    TKinesisFirehoseDestinationMarshaller.Instance.Marshall(ARequestObject.KinesisFirehoseDestination, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetMatchingEventTypes then
  begin
    Context.Writer.WriteName('MatchingEventTypes');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectMatchingEventTypesListValue in ARequestObject.MatchingEventTypes do
      Context.Writer.WriteString(ARequestObjectMatchingEventTypesListValue);
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetPinpointDestination then
  begin
    Context.Writer.WriteName('PinpointDestination');
    Context.Writer.WriteBeginObject;
    TPinpointDestinationMarshaller.Instance.Marshall(ARequestObject.PinpointDestination, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetSnsDestination then
  begin
    Context.Writer.WriteName('SnsDestination');
    Context.Writer.WriteBeginObject;
    TSnsDestinationMarshaller.Instance.Marshall(ARequestObject.SnsDestination, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TEventDestinationDefinitionMarshaller.Create;
begin
  FInstance := TEventDestinationDefinitionMarshaller.Create;
end;

class function TEventDestinationDefinitionMarshaller.Instance: IEventDestinationDefinitionMarshaller;
begin
  Result := FInstance;
end;

end.
