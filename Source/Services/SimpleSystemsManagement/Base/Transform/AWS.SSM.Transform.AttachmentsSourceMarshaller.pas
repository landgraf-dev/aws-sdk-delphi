unit AWS.SSM.Transform.AttachmentsSourceMarshaller;

interface

uses
  AWS.SSM.Model.AttachmentsSource, 
  AWS.Transform.RequestMarshaller;

type
  IAttachmentsSourceMarshaller = IRequestMarshaller<TAttachmentsSource, TJsonMarshallerContext>;
  
  TAttachmentsSourceMarshaller = class(TInterfacedObject, IRequestMarshaller<TAttachmentsSource, TJsonMarshallerContext>)
  strict private
    class var FInstance: IAttachmentsSourceMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TAttachmentsSource; Context: TJsonMarshallerContext);
    class function Instance: IAttachmentsSourceMarshaller; static;
  end;
  
implementation

{ TAttachmentsSourceMarshaller }

procedure TAttachmentsSourceMarshaller.Marshall(ARequestObject: TAttachmentsSource; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('Key');
    Context.Writer.WriteString(ARequestObject.Key.Value);
  end;
  if ARequestObject.IsSetName then
  begin
    Context.Writer.WriteName('Name');
    Context.Writer.WriteString(ARequestObject.Name);
  end;
  if ARequestObject.IsSetValues then
  begin
    Context.Writer.WriteName('Values');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectValuesListValue in ARequestObject.Values do
      Context.Writer.WriteString(ARequestObjectValuesListValue);
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TAttachmentsSourceMarshaller.Create;
begin
  FInstance := TAttachmentsSourceMarshaller.Create;
end;

class function TAttachmentsSourceMarshaller.Instance: IAttachmentsSourceMarshaller;
begin
  Result := FInstance;
end;

end.
