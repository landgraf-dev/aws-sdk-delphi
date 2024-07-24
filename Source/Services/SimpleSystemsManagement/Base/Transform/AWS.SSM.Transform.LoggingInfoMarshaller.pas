unit AWS.SSM.Transform.LoggingInfoMarshaller;

interface

uses
  AWS.SSM.Model.LoggingInfo, 
  AWS.Transform.RequestMarshaller;

type
  ILoggingInfoMarshaller = IRequestMarshaller<TLoggingInfo, TJsonMarshallerContext>;
  
  TLoggingInfoMarshaller = class(TInterfacedObject, IRequestMarshaller<TLoggingInfo, TJsonMarshallerContext>)
  strict private
    class var FInstance: ILoggingInfoMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TLoggingInfo; Context: TJsonMarshallerContext);
    class function Instance: ILoggingInfoMarshaller; static;
  end;
  
implementation

{ TLoggingInfoMarshaller }

procedure TLoggingInfoMarshaller.Marshall(ARequestObject: TLoggingInfo; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetS3BucketName then
  begin
    Context.Writer.WriteName('S3BucketName');
    Context.Writer.WriteString(ARequestObject.S3BucketName);
  end;
  if ARequestObject.IsSetS3KeyPrefix then
  begin
    Context.Writer.WriteName('S3KeyPrefix');
    Context.Writer.WriteString(ARequestObject.S3KeyPrefix);
  end;
  if ARequestObject.IsSetS3Region then
  begin
    Context.Writer.WriteName('S3Region');
    Context.Writer.WriteString(ARequestObject.S3Region);
  end;
end;

class constructor TLoggingInfoMarshaller.Create;
begin
  FInstance := TLoggingInfoMarshaller.Create;
end;

class function TLoggingInfoMarshaller.Instance: ILoggingInfoMarshaller;
begin
  Result := FInstance;
end;

end.
