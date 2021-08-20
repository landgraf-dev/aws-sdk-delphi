unit AWS.SNS.Model.ResourceNotFoundException;

interface

uses
  AWS.SNS.Exception;

type
  EResourceNotFoundException = class(EAmazonSimpleNotificationServiceException)
  end;
  
implementation

end.
