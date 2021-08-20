unit AWS.SNS.Model.KMSAccessDeniedException;

interface

uses
  AWS.SNS.Exception;

type
  EKMSAccessDeniedException = class(EAmazonSimpleNotificationServiceException)
  end;
  
implementation

end.
