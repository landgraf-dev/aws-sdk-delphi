unit AWS.SSM.Model.IdempotentParameterMismatchException;

interface

uses
  AWS.SSM.Exception;

type
  EIdempotentParameterMismatchException = class(EAmazonSimpleSystemsManagementException)
  end;
  
implementation

end.
