unit AWS.Transcribe.Model.ConflictException;

interface

uses
  AWS.Transcribe.Exception;

type
  EConflictException = class(EAmazonTranscribeServiceException)
  end;
  
implementation

end.
