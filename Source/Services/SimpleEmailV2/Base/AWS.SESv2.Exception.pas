unit AWS.SESv2.Exception;

interface

uses
  AWS.Runtime.Exceptions;

type
  EAmazonSimpleEmailServiceV2Exception = class(EAmazonServiceException)
  end;
  
implementation

end.
