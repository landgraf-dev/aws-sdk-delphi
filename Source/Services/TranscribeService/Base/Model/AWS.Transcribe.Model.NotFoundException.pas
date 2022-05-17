unit AWS.Transcribe.Model.NotFoundException;

interface

uses
  AWS.Transcribe.Exception;

type
  ENotFoundException = class(EAmazonTranscribeServiceException)
  end;
  
implementation

end.
