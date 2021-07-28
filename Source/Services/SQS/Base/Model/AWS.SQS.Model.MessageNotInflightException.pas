unit AWS.SQS.Model.MessageNotInflightException;

interface

uses
  AWS.SQS.Exception;

type
  EMessageNotInflightException = class(EAmazonSQSException)
  end;
  
implementation

end.
