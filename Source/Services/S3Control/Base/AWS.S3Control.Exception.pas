unit AWS.S3Control.Exception;

interface

uses
  AWS.Runtime.Exceptions;

type
  EAmazonS3ControlException = class(EAmazonServiceException)
  end;
  
implementation

end.
