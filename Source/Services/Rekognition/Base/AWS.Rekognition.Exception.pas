unit AWS.Rekognition.Exception;

interface

uses
  AWS.Runtime.Exceptions;

type
  EAmazonRekognitionException = class(EAmazonServiceException)
  end;
  
implementation

end.
