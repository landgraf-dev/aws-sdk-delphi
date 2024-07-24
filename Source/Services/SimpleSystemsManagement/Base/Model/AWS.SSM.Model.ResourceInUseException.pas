unit AWS.SSM.Model.ResourceInUseException;

interface

uses
  AWS.SSM.Exception;

type
  EResourceInUseException = class(EAmazonSimpleSystemsManagementException)
  end;
  
implementation

end.
