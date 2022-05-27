unit AWS.LexRuntimeV2.Transform.SessionStateMarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.SessionState, 
  AWS.Transform.RequestMarshaller, 
  AWS.LexRuntimeV2.Transform.ActiveContextMarshaller, 
  AWS.LexRuntimeV2.Transform.DialogActionMarshaller, 
  AWS.LexRuntimeV2.Transform.IntentMarshaller, 
  AWS.LexRuntimeV2.Transform.RuntimeHintsMarshaller;

type
  ISessionStateMarshaller = IRequestMarshaller<TSessionState, TJsonMarshallerContext>;
  
  TSessionStateMarshaller = class(TInterfacedObject, IRequestMarshaller<TSessionState, TJsonMarshallerContext>)
  strict private
    class var FInstance: ISessionStateMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TSessionState; Context: TJsonMarshallerContext);
    class function Instance: ISessionStateMarshaller; static;
  end;
  
implementation

{ TSessionStateMarshaller }

procedure TSessionStateMarshaller.Marshall(ARequestObject: TSessionState; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetActiveContexts then
  begin
    Context.Writer.WriteName('activeContexts');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectActiveContextsListValue in ARequestObject.ActiveContexts do
    begin
      Context.Writer.WriteBeginObject;
      TActiveContextMarshaller.Instance.Marshall(ARequestObjectActiveContextsListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetDialogAction then
  begin
    Context.Writer.WriteName('dialogAction');
    Context.Writer.WriteBeginObject;
    TDialogActionMarshaller.Instance.Marshall(ARequestObject.DialogAction, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetIntent then
  begin
    Context.Writer.WriteName('intent');
    Context.Writer.WriteBeginObject;
    TIntentMarshaller.Instance.Marshall(ARequestObject.Intent, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetOriginatingRequestId then
  begin
    Context.Writer.WriteName('originatingRequestId');
    Context.Writer.WriteString(ARequestObject.OriginatingRequestId);
  end;
  if ARequestObject.IsSetRuntimeHints then
  begin
    Context.Writer.WriteName('runtimeHints');
    Context.Writer.WriteBeginObject;
    TRuntimeHintsMarshaller.Instance.Marshall(ARequestObject.RuntimeHints, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetSessionAttributes then
  begin
    Context.Writer.WriteName('sessionAttributes');
    Context.Writer.WriteBeginObject;
    for var ARequestObjectSessionAttributesKvp in ARequestObject.SessionAttributes do
    begin
      Context.Writer.WriteName(ARequestObjectSessionAttributesKvp.Key);
      var ARequestObjectSessionAttributesValue := ARequestObjectSessionAttributesKvp.Value;
      Context.Writer.WriteString(ARequestObjectSessionAttributesValue);
    end;
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TSessionStateMarshaller.Create;
begin
  FInstance := TSessionStateMarshaller.Create;
end;

class function TSessionStateMarshaller.Instance: ISessionStateMarshaller;
begin
  Result := FInstance;
end;

end.
