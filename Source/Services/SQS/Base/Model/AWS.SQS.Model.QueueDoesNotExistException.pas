unit AWS.SQS.Model.QueueDoesNotExistException;

interface

uses
  AWS.SQS.Exception;

type
  EQueueDoesNotExistException = class(EAmazonSQSException)
  end;
  
implementation

end.
