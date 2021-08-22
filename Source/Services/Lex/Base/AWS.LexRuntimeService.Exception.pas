unit AWS.LexRuntimeService.Exception;

interface

uses
  AWS.Runtime.Exceptions;

type
  EAmazonLexException = class(EAmazonServiceException)
  end;
  
implementation

end.
