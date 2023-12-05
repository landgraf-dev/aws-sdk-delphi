unit AWS.S3.Model.NoSuchBucketException;

interface

uses
  AWS.S3.Exception;

type
  ENoSuchBucketException = class(EAmazonS3Exception)
  end;
  
implementation

end.
