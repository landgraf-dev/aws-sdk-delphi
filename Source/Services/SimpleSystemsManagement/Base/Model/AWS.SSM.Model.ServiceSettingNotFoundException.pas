unit AWS.SSM.Model.ServiceSettingNotFoundException;

interface

uses
  AWS.SSM.Exception;

type
  EServiceSettingNotFoundException = class(EAmazonSimpleSystemsManagementException)
  end;
  
implementation

end.
