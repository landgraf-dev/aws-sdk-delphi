unit AWS.SSM.Model.InvalidCommandIdException;

interface

uses
  AWS.SSM.Exception;

type
  EInvalidCommandIdException = class(EAmazonSimpleSystemsManagementException)
  end;
  
implementation

end.
