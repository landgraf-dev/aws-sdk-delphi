unit AWS.SSM.Model.AutomationStepNotFoundException;

interface

uses
  AWS.SSM.Exception;

type
  EAutomationStepNotFoundException = class(EAmazonSimpleSystemsManagementException)
  end;
  
implementation

end.
