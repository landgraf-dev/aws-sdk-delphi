unit AWS.S3Control.Model.IdempotencyException;

interface

uses
  AWS.S3Control.Exception;

type
  EIdempotencyException = class(EAmazonS3ControlException)
  end;
  
implementation

end.
