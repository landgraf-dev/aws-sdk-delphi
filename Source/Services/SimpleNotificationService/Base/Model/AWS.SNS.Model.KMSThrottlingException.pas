unit AWS.SNS.Model.KMSThrottlingException;

interface

uses
  AWS.SNS.Exception;

type
  EKMSThrottlingException = class(EAmazonSimpleNotificationServiceException)
  end;
  
implementation

end.
