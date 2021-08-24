unit AWS.SESv2.Transform.BulkEmailEntryMarshaller;

interface

uses
  AWS.SESv2.Model.BulkEmailEntry, 
  AWS.Transform.RequestMarshaller, 
  AWS.SESv2.Transform.DestinationMarshaller, 
  AWS.SESv2.Transform.ReplacementEmailContentMarshaller, 
  AWS.SESv2.Transform.MessageTagMarshaller;

type
  IBulkEmailEntryMarshaller = IRequestMarshaller<TBulkEmailEntry, TJsonMarshallerContext>;
  
  TBulkEmailEntryMarshaller = class(TInterfacedObject, IRequestMarshaller<TBulkEmailEntry, TJsonMarshallerContext>)
  strict private
    class var FInstance: IBulkEmailEntryMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TBulkEmailEntry; Context: TJsonMarshallerContext);
    class function Instance: IBulkEmailEntryMarshaller; static;
  end;
  
implementation

{ TBulkEmailEntryMarshaller }

procedure TBulkEmailEntryMarshaller.Marshall(ARequestObject: TBulkEmailEntry; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetDestination then
  begin
    Context.Writer.WriteName('Destination');
    Context.Writer.WriteBeginObject;
    TDestinationMarshaller.Instance.Marshall(ARequestObject.Destination, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetReplacementEmailContent then
  begin
    Context.Writer.WriteName('ReplacementEmailContent');
    Context.Writer.WriteBeginObject;
    TReplacementEmailContentMarshaller.Instance.Marshall(ARequestObject.ReplacementEmailContent, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetReplacementTags then
  begin
    Context.Writer.WriteName('ReplacementTags');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectReplacementTagsListValue in ARequestObject.ReplacementTags do
    begin
      Context.Writer.WriteBeginObject;
      TMessageTagMarshaller.Instance.Marshall(ARequestObjectReplacementTagsListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TBulkEmailEntryMarshaller.Create;
begin
  FInstance := TBulkEmailEntryMarshaller.Create;
end;

class function TBulkEmailEntryMarshaller.Instance: IBulkEmailEntryMarshaller;
begin
  Result := FInstance;
end;

end.
