unit AWS.S3Control.Model.BadRequestException;

interface

uses
  AWS.S3Control.Exception;

type
  EBadRequestException = class(EAmazonS3ControlException)
  end;
  
implementation

end.
