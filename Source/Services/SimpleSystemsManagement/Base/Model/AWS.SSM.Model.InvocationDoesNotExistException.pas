unit AWS.SSM.Model.InvocationDoesNotExistException;

interface

uses
  AWS.SSM.Exception;

type
  EInvocationDoesNotExistException = class(EAmazonSimpleSystemsManagementException)
  end;
  
implementation

end.
