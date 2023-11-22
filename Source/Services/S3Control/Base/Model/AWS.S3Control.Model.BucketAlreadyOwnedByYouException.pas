unit AWS.S3Control.Model.BucketAlreadyOwnedByYouException;

interface

uses
  AWS.S3Control.Exception;

type
  EBucketAlreadyOwnedByYouException = class(EAmazonS3ControlException)
  end;
  
implementation

end.
