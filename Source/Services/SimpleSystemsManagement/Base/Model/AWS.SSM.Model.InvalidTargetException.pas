unit AWS.SSM.Model.InvalidTargetException;

interface

uses
  AWS.SSM.Exception;

type
  EInvalidTargetException = class(EAmazonSimpleSystemsManagementException)
  end;
  
implementation

end.
