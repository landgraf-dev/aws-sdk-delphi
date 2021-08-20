unit AWS.SNS.Model.AuthorizationErrorException;

interface

uses
  AWS.SNS.Exception;

type
  EAuthorizationErrorException = class(EAmazonSimpleNotificationServiceException)
  end;
  
implementation

end.
