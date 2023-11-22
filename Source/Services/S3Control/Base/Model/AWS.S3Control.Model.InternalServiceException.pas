unit AWS.S3Control.Model.InternalServiceException;

interface

uses
  AWS.S3Control.Exception;

type
  EInternalServiceException = class(EAmazonS3ControlException)
  end;
  
implementation

end.
