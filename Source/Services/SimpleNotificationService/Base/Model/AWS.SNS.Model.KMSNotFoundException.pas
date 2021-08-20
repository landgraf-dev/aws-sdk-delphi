unit AWS.SNS.Model.KMSNotFoundException;

interface

uses
  AWS.SNS.Exception;

type
  EKMSNotFoundException = class(EAmazonSimpleNotificationServiceException)
  end;
  
implementation

end.
