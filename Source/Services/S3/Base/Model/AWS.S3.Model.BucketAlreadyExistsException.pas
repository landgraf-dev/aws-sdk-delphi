unit AWS.S3.Model.BucketAlreadyExistsException;

interface

uses
  AWS.S3.Exception;

type
  EBucketAlreadyExistsException = class(EAmazonS3Exception)
  end;
  
implementation

end.
