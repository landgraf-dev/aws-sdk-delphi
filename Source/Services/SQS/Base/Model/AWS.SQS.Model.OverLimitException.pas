unit AWS.SQS.Model.OverLimitException;

interface

uses
  AWS.SQS.Exception;

type
  EOverLimitException = class(EAmazonSQSException)
  end;
  
implementation

end.
