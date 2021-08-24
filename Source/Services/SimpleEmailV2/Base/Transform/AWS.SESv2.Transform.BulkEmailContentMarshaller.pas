unit AWS.SESv2.Transform.BulkEmailContentMarshaller;

interface

uses
  AWS.SESv2.Model.BulkEmailContent, 
  AWS.Transform.RequestMarshaller, 
  AWS.SESv2.Transform.TemplateMarshaller;

type
  IBulkEmailContentMarshaller = IRequestMarshaller<TBulkEmailContent, TJsonMarshallerContext>;
  
  TBulkEmailContentMarshaller = class(TInterfacedObject, IRequestMarshaller<TBulkEmailContent, TJsonMarshallerContext>)
  strict private
    class var FInstance: IBulkEmailContentMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TBulkEmailContent; Context: TJsonMarshallerContext);
    class function Instance: IBulkEmailContentMarshaller; static;
  end;
  
implementation

{ TBulkEmailContentMarshaller }

procedure TBulkEmailContentMarshaller.Marshall(ARequestObject: TBulkEmailContent; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetTemplate then
  begin
    Context.Writer.WriteName('Template');
    Context.Writer.WriteBeginObject;
    TTemplateMarshaller.Instance.Marshall(ARequestObject.Template, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TBulkEmailContentMarshaller.Create;
begin
  FInstance := TBulkEmailContentMarshaller.Create;
end;

class function TBulkEmailContentMarshaller.Instance: IBulkEmailContentMarshaller;
begin
  Result := FInstance;
end;

end.
