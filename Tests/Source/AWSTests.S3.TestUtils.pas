unit AWSTests.S3.TestUtils;

interface

uses
  System.SysUtils,
  AWS.S3;

type
  TS3TestUtils = class
  public
    class function CreateBucketWithWait(S3Client: IAmazonS3): string; static;
    class procedure DeleteS3BucketWithObjects(S3Client: IAmazonS3; const BucketName: string); static;
  end;

implementation

{ TS3TestUtils }

class function TS3TestUtils.CreateBucketWithWait(S3Client: IAmazonS3): string;
begin
  raise Exception.Create('Implement');
end;

class procedure TS3TestUtils.DeleteS3BucketWithObjects(S3Client: IAmazonS3; const BucketName: string);
begin
  raise Exception.Create('Implement');
end;

end.
