unit AWS.SNS.Model.InternalErrorException;

interface

uses
  AWS.SNS.Exception;

type
  EInternalErrorException = class(EAmazonSimpleNotificationServiceException)
  end;
  
implementation

end.
