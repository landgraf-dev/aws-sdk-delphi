unit AWS.SSM.Model.AutomationExecutionNotFoundException;

interface

uses
  AWS.SSM.Exception;

type
  EAutomationExecutionNotFoundException = class(EAmazonSimpleSystemsManagementException)
  end;
  
implementation

end.
