unit AWS.Translate.Transform.TerminologyDataMarshaller;

interface

uses
  AWS.Translate.Model.TerminologyData, 
  AWS.Transform.RequestMarshaller, 
  AWS.Internal.StringUtils;

type
  ITerminologyDataMarshaller = IRequestMarshaller<TTerminologyData, TJsonMarshallerContext>;
  
  TTerminologyDataMarshaller = class(TInterfacedObject, IRequestMarshaller<TTerminologyData, TJsonMarshallerContext>)
  strict private
    class var FInstance: ITerminologyDataMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TTerminologyData; Context: TJsonMarshallerContext);
    class function Instance: ITerminologyDataMarshaller; static;
  end;
  
implementation

{ TTerminologyDataMarshaller }

procedure TTerminologyDataMarshaller.Marshall(ARequestObject: TTerminologyData; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetFile then
  begin
    Context.Writer.WriteName('File');
    Context.Writer.WriteString(TStringUtils.FromTBytesStream(ARequestObject.&File));
  end;
  if ARequestObject.IsSetFormat then
  begin
    Context.Writer.WriteName('Format');
    Context.Writer.WriteString(ARequestObject.Format.Value);
  end;
end;

class constructor TTerminologyDataMarshaller.Create;
begin
  FInstance := TTerminologyDataMarshaller.Create;
end;

class function TTerminologyDataMarshaller.Instance: ITerminologyDataMarshaller;
begin
  Result := FInstance;
end;

end.
