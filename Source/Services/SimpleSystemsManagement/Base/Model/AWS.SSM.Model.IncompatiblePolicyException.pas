unit AWS.SSM.Model.IncompatiblePolicyException;

interface

uses
  AWS.SSM.Exception;

type
  EIncompatiblePolicyException = class(EAmazonSimpleSystemsManagementException)
  end;
  
implementation

end.
