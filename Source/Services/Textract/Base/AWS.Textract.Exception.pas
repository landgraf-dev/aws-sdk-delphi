unit AWS.Textract.Exception;

interface

uses
  AWS.Runtime.Exceptions;

type
  EAmazonTextractException = class(EAmazonServiceException)
  end;
  
implementation

end.
