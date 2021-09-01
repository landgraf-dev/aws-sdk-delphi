unit AWS.Translate.Exception;

interface

uses
  AWS.Runtime.Exceptions;

type
  EAmazonTranslateException = class(EAmazonServiceException)
  end;
  
implementation

end.
