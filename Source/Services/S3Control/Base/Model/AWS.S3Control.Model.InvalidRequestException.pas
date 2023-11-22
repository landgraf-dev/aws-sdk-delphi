unit AWS.S3Control.Model.InvalidRequestException;

interface

uses
  AWS.S3Control.Exception;

type
  EInvalidRequestException = class(EAmazonS3ControlException)
  end;
  
implementation

end.
