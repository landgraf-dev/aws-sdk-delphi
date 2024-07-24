unit AWS.SSM.Model.ParameterNotFoundException;

interface

uses
  AWS.SSM.Exception;

type
  EParameterNotFoundException = class(EAmazonSimpleSystemsManagementException)
  end;
  
implementation

end.
