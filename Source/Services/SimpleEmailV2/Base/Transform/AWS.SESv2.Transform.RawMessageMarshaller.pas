unit AWS.SESv2.Transform.RawMessageMarshaller;

interface

uses
  AWS.SESv2.Model.RawMessage, 
  AWS.Transform.RequestMarshaller, 
  AWS.Internal.StringUtils;

type
  IRawMessageMarshaller = IRequestMarshaller<TRawMessage, TJsonMarshallerContext>;
  
  TRawMessageMarshaller = class(TInterfacedObject, IRequestMarshaller<TRawMessage, TJsonMarshallerContext>)
  strict private
    class var FInstance: IRawMessageMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TRawMessage; Context: TJsonMarshallerContext);
    class function Instance: IRawMessageMarshaller; static;
  end;
  
implementation

{ TRawMessageMarshaller }

procedure TRawMessageMarshaller.Marshall(ARequestObject: TRawMessage; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetData then
  begin
    Context.Writer.WriteName('Data');
    Context.Writer.WriteString(TStringUtils.FromTBytesStream(ARequestObject.Data));
  end;
end;

class constructor TRawMessageMarshaller.Create;
begin
  FInstance := TRawMessageMarshaller.Create;
end;

class function TRawMessageMarshaller.Instance: IRawMessageMarshaller;
begin
  Result := FInstance;
end;

end.
