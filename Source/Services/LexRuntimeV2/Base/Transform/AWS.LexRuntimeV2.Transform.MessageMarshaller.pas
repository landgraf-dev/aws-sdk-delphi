unit AWS.LexRuntimeV2.Transform.MessageMarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.Message, 
  AWS.Transform.RequestMarshaller, 
  AWS.LexRuntimeV2.Transform.ImageResponseCardMarshaller;

type
  IMessageMarshaller = IRequestMarshaller<TMessage, TJsonMarshallerContext>;
  
  TMessageMarshaller = class(TInterfacedObject, IRequestMarshaller<TMessage, TJsonMarshallerContext>)
  strict private
    class var FInstance: IMessageMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TMessage; Context: TJsonMarshallerContext);
    class function Instance: IMessageMarshaller; static;
  end;
  
implementation

{ TMessageMarshaller }

procedure TMessageMarshaller.Marshall(ARequestObject: TMessage; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetContent then
  begin
    Context.Writer.WriteName('content');
    Context.Writer.WriteString(ARequestObject.Content);
  end;
  if ARequestObject.IsSetContentType then
  begin
    Context.Writer.WriteName('contentType');
    Context.Writer.WriteString(ARequestObject.ContentType.Value);
  end;
  if ARequestObject.IsSetImageResponseCard then
  begin
    Context.Writer.WriteName('imageResponseCard');
    Context.Writer.WriteBeginObject;
    TImageResponseCardMarshaller.Instance.Marshall(ARequestObject.ImageResponseCard, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TMessageMarshaller.Create;
begin
  FInstance := TMessageMarshaller.Create;
end;

class function TMessageMarshaller.Instance: IMessageMarshaller;
begin
  Result := FInstance;
end;

end.
