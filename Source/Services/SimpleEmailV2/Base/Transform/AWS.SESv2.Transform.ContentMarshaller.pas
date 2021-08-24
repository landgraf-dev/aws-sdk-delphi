unit AWS.SESv2.Transform.ContentMarshaller;

interface

uses
  AWS.SESv2.Model.Content, 
  AWS.Transform.RequestMarshaller;

type
  IContentMarshaller = IRequestMarshaller<TContent, TJsonMarshallerContext>;
  
  TContentMarshaller = class(TInterfacedObject, IRequestMarshaller<TContent, TJsonMarshallerContext>)
  strict private
    class var FInstance: IContentMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TContent; Context: TJsonMarshallerContext);
    class function Instance: IContentMarshaller; static;
  end;
  
implementation

{ TContentMarshaller }

procedure TContentMarshaller.Marshall(ARequestObject: TContent; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetCharset then
  begin
    Context.Writer.WriteName('Charset');
    Context.Writer.WriteString(ARequestObject.Charset);
  end;
  if ARequestObject.IsSetData then
  begin
    Context.Writer.WriteName('Data');
    Context.Writer.WriteString(ARequestObject.Data);
  end;
end;

class constructor TContentMarshaller.Create;
begin
  FInstance := TContentMarshaller.Create;
end;

class function TContentMarshaller.Instance: IContentMarshaller;
begin
  Result := FInstance;
end;

end.
