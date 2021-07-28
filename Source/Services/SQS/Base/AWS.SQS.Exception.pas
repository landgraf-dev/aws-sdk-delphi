unit AWS.SQS.Exception;

interface

uses
  AWS.Runtime.Exceptions;

type
  EAmazonSQSException = class(EAmazonServiceException)
  end;
  
implementation

end.
