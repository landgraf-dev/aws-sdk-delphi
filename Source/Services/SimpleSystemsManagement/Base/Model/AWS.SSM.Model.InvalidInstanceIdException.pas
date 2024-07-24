unit AWS.SSM.Model.InvalidInstanceIdException;

interface

uses
  AWS.SSM.Exception;

type
  EInvalidInstanceIdException = class(EAmazonSimpleSystemsManagementException)
  end;
  
implementation

end.
