unit AWS.S3.Metadata;

interface

uses
  System.Generics.Collections, 
  AWS.Internal.ServiceMetadata;

type
  TAmazonS3Metadata = class(TServiceMetadata)
  strict protected
    function GetServiceId: string; override;
    procedure FillOperationNameMapping(Mapping: TDictionary<string, string>); override;
  end;
  
implementation

{ TAmazonS3Metadata }

function TAmazonS3Metadata.GetServiceId: string;
begin
  Result := 'S3';
end;

procedure TAmazonS3Metadata.FillOperationNameMapping(Mapping: TDictionary<string, string>);
begin
  Mapping.Add('PutCORSConfiguration', 'PutBucketCors');
  Mapping.Add('PutBucket', 'CreateBucket');
  Mapping.Add('DeleteLifecycleConfiguration', 'DeleteBucketLifecycle');
  Mapping.Add('ListVersions', 'ListObjectVersions');
  Mapping.Add('PutBucketNotification', 'PutBucketNotificationConfiguration');
  Mapping.Add('PutACL', 'PutBucketAcl');
  Mapping.Add('GetACL', 'GetBucketAcl');
  Mapping.Add('CopyPart', 'UploadPartCopy');
  Mapping.Add('GetObjectMetadata', 'HeadObject');
  Mapping.Add('GetLifecycleConfiguration', 'GetBucketLifecycleConfiguration');
  Mapping.Add('GetCORSConfiguration', 'GetBucketCors');
  Mapping.Add('GetBucketNotification', 'GetBucketNotificationConfiguration');
  Mapping.Add('DeleteCORSConfiguration', 'DeleteBucketCors');
  Mapping.Add('PutLifecycleConfiguration', 'PutBucketLifecycleConfiguration');
  Mapping.Add('InitiateMultipartUpload', 'CreateMultipartUpload');
end;

end.
