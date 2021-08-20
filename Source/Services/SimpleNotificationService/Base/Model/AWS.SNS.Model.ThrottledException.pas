unit AWS.SNS.Model.ThrottledException;

interface

uses
  AWS.SNS.Exception;

type
  EThrottledException = class(EAmazonSimpleNotificationServiceException)
  end;
  
implementation

end.
