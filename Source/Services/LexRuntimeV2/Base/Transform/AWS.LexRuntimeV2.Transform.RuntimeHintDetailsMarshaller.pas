unit AWS.LexRuntimeV2.Transform.RuntimeHintDetailsMarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.RuntimeHintDetails, 
  AWS.Transform.RequestMarshaller, 
  AWS.LexRuntimeV2.Transform.RuntimeHintValueMarshaller;

type
  IRuntimeHintDetailsMarshaller = IRequestMarshaller<TRuntimeHintDetails, TJsonMarshallerContext>;
  
  TRuntimeHintDetailsMarshaller = class(TInterfacedObject, IRequestMarshaller<TRuntimeHintDetails, TJsonMarshallerContext>)
  strict private
    class var FInstance: IRuntimeHintDetailsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TRuntimeHintDetails; Context: TJsonMarshallerContext);
    class function Instance: IRuntimeHintDetailsMarshaller; static;
  end;
  
implementation

{ TRuntimeHintDetailsMarshaller }

procedure TRuntimeHintDetailsMarshaller.Marshall(ARequestObject: TRuntimeHintDetails; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetRuntimeHintValues then
  begin
    Context.Writer.WriteName('runtimeHintValues');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectRuntimeHintValuesListValue in ARequestObject.RuntimeHintValues do
    begin
      Context.Writer.WriteBeginObject;
      TRuntimeHintValueMarshaller.Instance.Marshall(ARequestObjectRuntimeHintValuesListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TRuntimeHintDetailsMarshaller.Create;
begin
  FInstance := TRuntimeHintDetailsMarshaller.Create;
end;

class function TRuntimeHintDetailsMarshaller.Instance: IRuntimeHintDetailsMarshaller;
begin
  Result := FInstance;
end;

end.
