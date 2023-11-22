unit AWS.S3Control.Model.NotFoundException;

interface

uses
  AWS.S3Control.Exception;

type
  ENotFoundException = class(EAmazonS3ControlException)
  end;
  
implementation

end.
