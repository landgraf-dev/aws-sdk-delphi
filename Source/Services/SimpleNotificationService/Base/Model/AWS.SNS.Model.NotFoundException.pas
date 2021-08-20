unit AWS.SNS.Model.NotFoundException;

interface

uses
  AWS.SNS.Exception;

type
  ENotFoundException = class(EAmazonSimpleNotificationServiceException)
  end;
  
implementation

end.
