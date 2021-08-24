unit AWS.SESv2.Transform.BodyMarshaller;

interface

uses
  AWS.SESv2.Model.Body, 
  AWS.Transform.RequestMarshaller, 
  AWS.SESv2.Transform.ContentMarshaller;

type
  IBodyMarshaller = IRequestMarshaller<TBody, TJsonMarshallerContext>;
  
  TBodyMarshaller = class(TInterfacedObject, IRequestMarshaller<TBody, TJsonMarshallerContext>)
  strict private
    class var FInstance: IBodyMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TBody; Context: TJsonMarshallerContext);
    class function Instance: IBodyMarshaller; static;
  end;
  
implementation

{ TBodyMarshaller }

procedure TBodyMarshaller.Marshall(ARequestObject: TBody; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetHtml then
  begin
    Context.Writer.WriteName('Html');
    Context.Writer.WriteBeginObject;
    TContentMarshaller.Instance.Marshall(ARequestObject.Html, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetText then
  begin
    Context.Writer.WriteName('Text');
    Context.Writer.WriteBeginObject;
    TContentMarshaller.Instance.Marshall(ARequestObject.Text, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TBodyMarshaller.Create;
begin
  FInstance := TBodyMarshaller.Create;
end;

class function TBodyMarshaller.Instance: IBodyMarshaller;
begin
  Result := FInstance;
end;

end.
