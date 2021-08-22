unit AWS.LexRuntimeV2.Transform.ImageResponseCardMarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.ImageResponseCard, 
  AWS.Transform.RequestMarshaller, 
  AWS.LexRuntimeV2.Transform.ButtonMarshaller;

type
  IImageResponseCardMarshaller = IRequestMarshaller<TImageResponseCard, TJsonMarshallerContext>;
  
  TImageResponseCardMarshaller = class(TInterfacedObject, IRequestMarshaller<TImageResponseCard, TJsonMarshallerContext>)
  strict private
    class var FInstance: IImageResponseCardMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TImageResponseCard; Context: TJsonMarshallerContext);
    class function Instance: IImageResponseCardMarshaller; static;
  end;
  
implementation

{ TImageResponseCardMarshaller }

procedure TImageResponseCardMarshaller.Marshall(ARequestObject: TImageResponseCard; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetButtons then
  begin
    Context.Writer.WriteName('buttons');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectButtonsListValue in ARequestObject.Buttons do
    begin
      Context.Writer.WriteBeginObject;
      TButtonMarshaller.Instance.Marshall(ARequestObjectButtonsListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetImageUrl then
  begin
    Context.Writer.WriteName('imageUrl');
    Context.Writer.WriteString(ARequestObject.ImageUrl);
  end;
  if ARequestObject.IsSetSubtitle then
  begin
    Context.Writer.WriteName('subtitle');
    Context.Writer.WriteString(ARequestObject.Subtitle);
  end;
  if ARequestObject.IsSetTitle then
  begin
    Context.Writer.WriteName('title');
    Context.Writer.WriteString(ARequestObject.Title);
  end;
end;

class constructor TImageResponseCardMarshaller.Create;
begin
  FInstance := TImageResponseCardMarshaller.Create;
end;

class function TImageResponseCardMarshaller.Instance: IImageResponseCardMarshaller;
begin
  Result := FInstance;
end;

end.
