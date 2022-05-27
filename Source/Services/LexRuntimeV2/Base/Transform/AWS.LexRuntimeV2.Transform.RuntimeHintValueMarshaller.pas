unit AWS.LexRuntimeV2.Transform.RuntimeHintValueMarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.RuntimeHintValue, 
  AWS.Transform.RequestMarshaller;

type
  IRuntimeHintValueMarshaller = IRequestMarshaller<TRuntimeHintValue, TJsonMarshallerContext>;
  
  TRuntimeHintValueMarshaller = class(TInterfacedObject, IRequestMarshaller<TRuntimeHintValue, TJsonMarshallerContext>)
  strict private
    class var FInstance: IRuntimeHintValueMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TRuntimeHintValue; Context: TJsonMarshallerContext);
    class function Instance: IRuntimeHintValueMarshaller; static;
  end;
  
implementation

{ TRuntimeHintValueMarshaller }

procedure TRuntimeHintValueMarshaller.Marshall(ARequestObject: TRuntimeHintValue; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetPhrase then
  begin
    Context.Writer.WriteName('phrase');
    Context.Writer.WriteString(ARequestObject.Phrase);
  end;
end;

class constructor TRuntimeHintValueMarshaller.Create;
begin
  FInstance := TRuntimeHintValueMarshaller.Create;
end;

class function TRuntimeHintValueMarshaller.Instance: IRuntimeHintValueMarshaller;
begin
  Result := FInstance;
end;

end.
