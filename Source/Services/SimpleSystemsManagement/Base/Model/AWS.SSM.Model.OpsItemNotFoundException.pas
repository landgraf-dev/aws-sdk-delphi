unit AWS.SSM.Model.OpsItemNotFoundException;

interface

uses
  AWS.SSM.Exception;

type
  EOpsItemNotFoundException = class(EAmazonSimpleSystemsManagementException)
  end;
  
implementation

end.
