unit AWS.SSM.Model.ParameterAlreadyExistsException;

interface

uses
  AWS.SSM.Exception;

type
  EParameterAlreadyExistsException = class(EAmazonSimpleSystemsManagementException)
  end;
  
implementation

end.
