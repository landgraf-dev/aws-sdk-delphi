unit AWS.SNS.Model.TopicLimitExceededException;

interface

uses
  AWS.SNS.Exception;

type
  ETopicLimitExceededException = class(EAmazonSimpleNotificationServiceException)
  end;
  
implementation

end.
