unit AWS.SNS.Model.UserErrorException;

interface

uses
  AWS.SNS.Exception;

type
  EUserErrorException = class(EAmazonSimpleNotificationServiceException)
  end;
  
implementation

end.
