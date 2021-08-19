unit AWS.Polly.Exception;

interface

uses
  AWS.Runtime.Exceptions;

type
  EAmazonPollyException = class(EAmazonServiceException)
  end;
  
implementation

end.
