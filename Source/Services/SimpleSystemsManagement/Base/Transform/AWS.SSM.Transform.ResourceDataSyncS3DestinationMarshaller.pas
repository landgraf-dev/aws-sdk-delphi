unit AWS.SSM.Transform.ResourceDataSyncS3DestinationMarshaller;

interface

uses
  AWS.SSM.Model.ResourceDataSyncS3Destination, 
  AWS.Transform.RequestMarshaller, 
  AWS.SSM.Transform.ResourceDataSyncDestinationDataSharingMarshaller;

type
  IResourceDataSyncS3DestinationMarshaller = IRequestMarshaller<TResourceDataSyncS3Destination, TJsonMarshallerContext>;
  
  TResourceDataSyncS3DestinationMarshaller = class(TInterfacedObject, IRequestMarshaller<TResourceDataSyncS3Destination, TJsonMarshallerContext>)
  strict private
    class var FInstance: IResourceDataSyncS3DestinationMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TResourceDataSyncS3Destination; Context: TJsonMarshallerContext);
    class function Instance: IResourceDataSyncS3DestinationMarshaller; static;
  end;
  
implementation

{ TResourceDataSyncS3DestinationMarshaller }

procedure TResourceDataSyncS3DestinationMarshaller.Marshall(ARequestObject: TResourceDataSyncS3Destination; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetAWSKMSKeyARN then
  begin
    Context.Writer.WriteName('AWSKMSKeyARN');
    Context.Writer.WriteString(ARequestObject.AWSKMSKeyARN);
  end;
  if ARequestObject.IsSetBucketName then
  begin
    Context.Writer.WriteName('BucketName');
    Context.Writer.WriteString(ARequestObject.BucketName);
  end;
  if ARequestObject.IsSetDestinationDataSharing then
  begin
    Context.Writer.WriteName('DestinationDataSharing');
    Context.Writer.WriteBeginObject;
    TResourceDataSyncDestinationDataSharingMarshaller.Instance.Marshall(ARequestObject.DestinationDataSharing, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetPrefix then
  begin
    Context.Writer.WriteName('Prefix');
    Context.Writer.WriteString(ARequestObject.Prefix);
  end;
  if ARequestObject.IsSetRegion then
  begin
    Context.Writer.WriteName('Region');
    Context.Writer.WriteString(ARequestObject.Region);
  end;
  if ARequestObject.IsSetSyncFormat then
  begin
    Context.Writer.WriteName('SyncFormat');
    Context.Writer.WriteString(ARequestObject.SyncFormat.Value);
  end;
end;

class constructor TResourceDataSyncS3DestinationMarshaller.Create;
begin
  FInstance := TResourceDataSyncS3DestinationMarshaller.Create;
end;

class function TResourceDataSyncS3DestinationMarshaller.Instance: IResourceDataSyncS3DestinationMarshaller;
begin
  Result := FInstance;
end;

end.
