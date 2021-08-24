unit AWS.SESv2.Transform.SuppressionOptionsMarshaller;

interface

uses
  AWS.SESv2.Model.SuppressionOptions, 
  AWS.Transform.RequestMarshaller;

type
  ISuppressionOptionsMarshaller = IRequestMarshaller<TSuppressionOptions, TJsonMarshallerContext>;
  
  TSuppressionOptionsMarshaller = class(TInterfacedObject, IRequestMarshaller<TSuppressionOptions, TJsonMarshallerContext>)
  strict private
    class var FInstance: ISuppressionOptionsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TSuppressionOptions; Context: TJsonMarshallerContext);
    class function Instance: ISuppressionOptionsMarshaller; static;
  end;
  
implementation

{ TSuppressionOptionsMarshaller }

procedure TSuppressionOptionsMarshaller.Marshall(ARequestObject: TSuppressionOptions; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetSuppressedReasons then
  begin
    Context.Writer.WriteName('SuppressedReasons');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectSuppressedReasonsListValue in ARequestObject.SuppressedReasons do
      Context.Writer.WriteString(ARequestObjectSuppressedReasonsListValue);
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TSuppressionOptionsMarshaller.Create;
begin
  FInstance := TSuppressionOptionsMarshaller.Create;
end;

class function TSuppressionOptionsMarshaller.Instance: ISuppressionOptionsMarshaller;
begin
  Result := FInstance;
end;

end.
