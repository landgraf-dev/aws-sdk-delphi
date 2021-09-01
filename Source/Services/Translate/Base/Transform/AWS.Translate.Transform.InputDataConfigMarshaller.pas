unit AWS.Translate.Transform.InputDataConfigMarshaller;

interface

uses
  AWS.Translate.Model.InputDataConfig, 
  AWS.Transform.RequestMarshaller;

type
  IInputDataConfigMarshaller = IRequestMarshaller<TInputDataConfig, TJsonMarshallerContext>;
  
  TInputDataConfigMarshaller = class(TInterfacedObject, IRequestMarshaller<TInputDataConfig, TJsonMarshallerContext>)
  strict private
    class var FInstance: IInputDataConfigMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TInputDataConfig; Context: TJsonMarshallerContext);
    class function Instance: IInputDataConfigMarshaller; static;
  end;
  
implementation

{ TInputDataConfigMarshaller }

procedure TInputDataConfigMarshaller.Marshall(ARequestObject: TInputDataConfig; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetContentType then
  begin
    Context.Writer.WriteName('ContentType');
    Context.Writer.WriteString(ARequestObject.ContentType);
  end;
  if ARequestObject.IsSetS3Uri then
  begin
    Context.Writer.WriteName('S3Uri');
    Context.Writer.WriteString(ARequestObject.S3Uri);
  end;
end;

class constructor TInputDataConfigMarshaller.Create;
begin
  FInstance := TInputDataConfigMarshaller.Create;
end;

class function TInputDataConfigMarshaller.Instance: IInputDataConfigMarshaller;
begin
  Result := FInstance;
end;

end.
