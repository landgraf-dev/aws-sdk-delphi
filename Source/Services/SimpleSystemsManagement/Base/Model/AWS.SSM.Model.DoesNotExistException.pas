unit AWS.SSM.Model.DoesNotExistException;

interface

uses
  AWS.SSM.Exception;

type
  EDoesNotExistException = class(EAmazonSimpleSystemsManagementException)
  end;
  
implementation

end.
