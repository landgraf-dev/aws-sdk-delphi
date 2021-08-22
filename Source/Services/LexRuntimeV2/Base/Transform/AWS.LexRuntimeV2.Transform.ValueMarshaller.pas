unit AWS.LexRuntimeV2.Transform.ValueMarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.Value, 
  AWS.Transform.RequestMarshaller;

type
  IValueMarshaller = IRequestMarshaller<TValue, TJsonMarshallerContext>;
  
  TValueMarshaller = class(TInterfacedObject, IRequestMarshaller<TValue, TJsonMarshallerContext>)
  strict private
    class var FInstance: IValueMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TValue; Context: TJsonMarshallerContext);
    class function Instance: IValueMarshaller; static;
  end;
  
implementation

{ TValueMarshaller }

procedure TValueMarshaller.Marshall(ARequestObject: TValue; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetInterpretedValue then
  begin
    Context.Writer.WriteName('interpretedValue');
    Context.Writer.WriteString(ARequestObject.InterpretedValue);
  end;
  if ARequestObject.IsSetOriginalValue then
  begin
    Context.Writer.WriteName('originalValue');
    Context.Writer.WriteString(ARequestObject.OriginalValue);
  end;
  if ARequestObject.IsSetResolvedValues then
  begin
    Context.Writer.WriteName('resolvedValues');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectResolvedValuesListValue in ARequestObject.ResolvedValues do
      Context.Writer.WriteString(ARequestObjectResolvedValuesListValue);
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TValueMarshaller.Create;
begin
  FInstance := TValueMarshaller.Create;
end;

class function TValueMarshaller.Instance: IValueMarshaller;
begin
  Result := FInstance;
end;

end.
