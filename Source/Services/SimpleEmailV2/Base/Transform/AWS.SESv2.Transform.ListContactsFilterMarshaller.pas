unit AWS.SESv2.Transform.ListContactsFilterMarshaller;

interface

uses
  AWS.SESv2.Model.ListContactsFilter, 
  AWS.Transform.RequestMarshaller, 
  AWS.SESv2.Transform.TopicFilterMarshaller;

type
  IListContactsFilterMarshaller = IRequestMarshaller<TListContactsFilter, TJsonMarshallerContext>;
  
  TListContactsFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TListContactsFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IListContactsFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TListContactsFilter; Context: TJsonMarshallerContext);
    class function Instance: IListContactsFilterMarshaller; static;
  end;
  
implementation

{ TListContactsFilterMarshaller }

procedure TListContactsFilterMarshaller.Marshall(ARequestObject: TListContactsFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetFilteredStatus then
  begin
    Context.Writer.WriteName('FilteredStatus');
    Context.Writer.WriteString(ARequestObject.FilteredStatus.Value);
  end;
  if ARequestObject.IsSetTopicFilter then
  begin
    Context.Writer.WriteName('TopicFilter');
    Context.Writer.WriteBeginObject;
    TTopicFilterMarshaller.Instance.Marshall(ARequestObject.TopicFilter, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TListContactsFilterMarshaller.Create;
begin
  FInstance := TListContactsFilterMarshaller.Create;
end;

class function TListContactsFilterMarshaller.Instance: IListContactsFilterMarshaller;
begin
  Result := FInstance;
end;

end.
