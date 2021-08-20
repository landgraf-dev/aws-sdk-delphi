unit AWS.SNS.Model.ConcurrentAccessException;

interface

uses
  AWS.SNS.Exception;

type
  EConcurrentAccessException = class(EAmazonSimpleNotificationServiceException)
  end;
  
implementation

end.
