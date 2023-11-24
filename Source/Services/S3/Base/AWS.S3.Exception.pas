unit AWS.S3.Exception;

interface

uses
  AWS.Runtime.Exceptions;

type
  EAmazonS3Exception = class(EAmazonServiceException)
  end;
  
implementation

end.
