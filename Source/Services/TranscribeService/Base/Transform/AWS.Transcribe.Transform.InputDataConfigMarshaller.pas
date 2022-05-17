unit AWS.Transcribe.Transform.InputDataConfigMarshaller;

interface

uses
  AWS.Transcribe.Model.InputDataConfig, 
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
  if ARequestObject.IsSetDataAccessRoleArn then
  begin
    Context.Writer.WriteName('DataAccessRoleArn');
    Context.Writer.WriteString(ARequestObject.DataAccessRoleArn);
  end;
  if ARequestObject.IsSetS3Uri then
  begin
    Context.Writer.WriteName('S3Uri');
    Context.Writer.WriteString(ARequestObject.S3Uri);
  end;
  if ARequestObject.IsSetTuningDataS3Uri then
  begin
    Context.Writer.WriteName('TuningDataS3Uri');
    Context.Writer.WriteString(ARequestObject.TuningDataS3Uri);
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
