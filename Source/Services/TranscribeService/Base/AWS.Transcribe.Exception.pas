unit AWS.Transcribe.Exception;

interface

uses
  AWS.Runtime.Exceptions;

type
  EAmazonTranscribeServiceException = class(EAmazonServiceException)
  end;
  
implementation

end.
