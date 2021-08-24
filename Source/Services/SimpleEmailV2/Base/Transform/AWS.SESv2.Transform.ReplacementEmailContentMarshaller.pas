unit AWS.SESv2.Transform.ReplacementEmailContentMarshaller;

interface

uses
  AWS.SESv2.Model.ReplacementEmailContent, 
  AWS.Transform.RequestMarshaller, 
  AWS.SESv2.Transform.ReplacementTemplateMarshaller;

type
  IReplacementEmailContentMarshaller = IRequestMarshaller<TReplacementEmailContent, TJsonMarshallerContext>;
  
  TReplacementEmailContentMarshaller = class(TInterfacedObject, IRequestMarshaller<TReplacementEmailContent, TJsonMarshallerContext>)
  strict private
    class var FInstance: IReplacementEmailContentMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TReplacementEmailContent; Context: TJsonMarshallerContext);
    class function Instance: IReplacementEmailContentMarshaller; static;
  end;
  
implementation

{ TReplacementEmailContentMarshaller }

procedure TReplacementEmailContentMarshaller.Marshall(ARequestObject: TReplacementEmailContent; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetReplacementTemplate then
  begin
    Context.Writer.WriteName('ReplacementTemplate');
    Context.Writer.WriteBeginObject;
    TReplacementTemplateMarshaller.Instance.Marshall(ARequestObject.ReplacementTemplate, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TReplacementEmailContentMarshaller.Create;
begin
  FInstance := TReplacementEmailContentMarshaller.Create;
end;

class function TReplacementEmailContentMarshaller.Instance: IReplacementEmailContentMarshaller;
begin
  Result := FInstance;
end;

end.
