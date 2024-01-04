unit AWS.S3.Model.NoSuchUploadException;

interface

uses
  AWS.S3.Exception;

type
  ENoSuchUploadException = class(EAmazonS3Exception)
  end;
  
implementation

end.
