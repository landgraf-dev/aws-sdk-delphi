unit AWS.SNS.Exception;

interface

uses
  AWS.Runtime.Exceptions;

type
  EAmazonSimpleNotificationServiceException = class(EAmazonServiceException)
  end;
  
implementation

end.
