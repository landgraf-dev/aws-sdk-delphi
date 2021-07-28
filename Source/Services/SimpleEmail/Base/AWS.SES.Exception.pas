unit AWS.SES.Exception;

interface

uses
  AWS.Runtime.Exceptions;

type
  EAmazonSimpleEmailServiceException = class(EAmazonServiceException)
  end;
  
implementation

end.
