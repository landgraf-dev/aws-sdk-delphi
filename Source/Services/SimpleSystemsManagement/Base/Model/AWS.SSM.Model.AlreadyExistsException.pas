unit AWS.SSM.Model.AlreadyExistsException;

interface

uses
  AWS.SSM.Exception;

type
  EAlreadyExistsException = class(EAmazonSimpleSystemsManagementException)
  end;
  
implementation

end.
