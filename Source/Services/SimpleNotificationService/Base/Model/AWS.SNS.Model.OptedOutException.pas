unit AWS.SNS.Model.OptedOutException;

interface

uses
  AWS.SNS.Exception;

type
  EOptedOutException = class(EAmazonSimpleNotificationServiceException)
  end;
  
implementation

end.
