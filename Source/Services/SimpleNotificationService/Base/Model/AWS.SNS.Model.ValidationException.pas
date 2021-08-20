unit AWS.SNS.Model.ValidationException;

interface

uses
  AWS.SNS.Exception;

type
  EValidationException = class(EAmazonSimpleNotificationServiceException)
  end;
  
implementation

end.
