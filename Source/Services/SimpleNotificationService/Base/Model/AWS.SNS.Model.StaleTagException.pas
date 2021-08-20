unit AWS.SNS.Model.StaleTagException;

interface

uses
  AWS.SNS.Exception;

type
  EStaleTagException = class(EAmazonSimpleNotificationServiceException)
  end;
  
implementation

end.
