unit AWS.SSM.Model.ParameterVersionNotFoundException;

interface

uses
  AWS.SSM.Exception;

type
  EParameterVersionNotFoundException = class(EAmazonSimpleSystemsManagementException)
  end;
  
implementation

end.
