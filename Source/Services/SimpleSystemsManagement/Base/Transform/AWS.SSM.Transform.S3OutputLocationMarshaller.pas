unit AWS.SSM.Transform.S3OutputLocationMarshaller;

interface

uses
  AWS.SSM.Model.S3OutputLocation, 
  AWS.Transform.RequestMarshaller;

type
  IS3OutputLocationMarshaller = IRequestMarshaller<TS3OutputLocation, TJsonMarshallerContext>;
  
  TS3OutputLocationMarshaller = class(TInterfacedObject, IRequestMarshaller<TS3OutputLocation, TJsonMarshallerContext>)
  strict private
    class var FInstance: IS3OutputLocationMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TS3OutputLocation; Context: TJsonMarshallerContext);
    class function Instance: IS3OutputLocationMarshaller; static;
  end;
  
implementation

{ TS3OutputLocationMarshaller }

procedure TS3OutputLocationMarshaller.Marshall(ARequestObject: TS3OutputLocation; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetOutputS3BucketName then
  begin
    Context.Writer.WriteName('OutputS3BucketName');
    Context.Writer.WriteString(ARequestObject.OutputS3BucketName);
  end;
  if ARequestObject.IsSetOutputS3KeyPrefix then
  begin
    Context.Writer.WriteName('OutputS3KeyPrefix');
    Context.Writer.WriteString(ARequestObject.OutputS3KeyPrefix);
  end;
  if ARequestObject.IsSetOutputS3Region then
  begin
    Context.Writer.WriteName('OutputS3Region');
    Context.Writer.WriteString(ARequestObject.OutputS3Region);
  end;
end;

class constructor TS3OutputLocationMarshaller.Create;
begin
  FInstance := TS3OutputLocationMarshaller.Create;
end;

class function TS3OutputLocationMarshaller.Instance: IS3OutputLocationMarshaller;
begin
  Result := FInstance;
end;

end.
