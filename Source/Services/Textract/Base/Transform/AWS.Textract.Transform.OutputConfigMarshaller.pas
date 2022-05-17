unit AWS.Textract.Transform.OutputConfigMarshaller;

interface

uses
  AWS.Textract.Model.OutputConfig, 
  AWS.Transform.RequestMarshaller;

type
  IOutputConfigMarshaller = IRequestMarshaller<TOutputConfig, TJsonMarshallerContext>;
  
  TOutputConfigMarshaller = class(TInterfacedObject, IRequestMarshaller<TOutputConfig, TJsonMarshallerContext>)
  strict private
    class var FInstance: IOutputConfigMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TOutputConfig; Context: TJsonMarshallerContext);
    class function Instance: IOutputConfigMarshaller; static;
  end;
  
implementation

{ TOutputConfigMarshaller }

procedure TOutputConfigMarshaller.Marshall(ARequestObject: TOutputConfig; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetS3Bucket then
  begin
    Context.Writer.WriteName('S3Bucket');
    Context.Writer.WriteString(ARequestObject.S3Bucket);
  end;
  if ARequestObject.IsSetS3Prefix then
  begin
    Context.Writer.WriteName('S3Prefix');
    Context.Writer.WriteString(ARequestObject.S3Prefix);
  end;
end;

class constructor TOutputConfigMarshaller.Create;
begin
  FInstance := TOutputConfigMarshaller.Create;
end;

class function TOutputConfigMarshaller.Instance: IOutputConfigMarshaller;
begin
  Result := FInstance;
end;

end.
