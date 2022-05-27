unit AWS.Textract.Transform.QueryMarshaller;

interface

uses
  AWS.Textract.Model.Query, 
  AWS.Transform.RequestMarshaller;

type
  IQueryMarshaller = IRequestMarshaller<TQuery, TJsonMarshallerContext>;
  
  TQueryMarshaller = class(TInterfacedObject, IRequestMarshaller<TQuery, TJsonMarshallerContext>)
  strict private
    class var FInstance: IQueryMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TQuery; Context: TJsonMarshallerContext);
    class function Instance: IQueryMarshaller; static;
  end;
  
implementation

{ TQueryMarshaller }

procedure TQueryMarshaller.Marshall(ARequestObject: TQuery; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetAlias then
  begin
    Context.Writer.WriteName('Alias');
    Context.Writer.WriteString(ARequestObject.Alias);
  end;
  if ARequestObject.IsSetPages then
  begin
    Context.Writer.WriteName('Pages');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectPagesListValue in ARequestObject.Pages do
      Context.Writer.WriteString(ARequestObjectPagesListValue);
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetText then
  begin
    Context.Writer.WriteName('Text');
    Context.Writer.WriteString(ARequestObject.Text);
  end;
end;

class constructor TQueryMarshaller.Create;
begin
  FInstance := TQueryMarshaller.Create;
end;

class function TQueryMarshaller.Instance: IQueryMarshaller;
begin
  Result := FInstance;
end;

end.
