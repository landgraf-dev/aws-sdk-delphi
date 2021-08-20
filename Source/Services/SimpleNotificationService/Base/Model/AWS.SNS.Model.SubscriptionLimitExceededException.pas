unit AWS.SNS.Model.SubscriptionLimitExceededException;

interface

uses
  AWS.SNS.Exception;

type
  ESubscriptionLimitExceededException = class(EAmazonSimpleNotificationServiceException)
  end;
  
implementation

end.
