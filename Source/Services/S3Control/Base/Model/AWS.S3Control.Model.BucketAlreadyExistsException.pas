unit AWS.S3Control.Model.BucketAlreadyExistsException;

interface

uses
  AWS.S3Control.Exception;

type
  EBucketAlreadyExistsException = class(EAmazonS3ControlException)
  end;
  
implementation

end.
