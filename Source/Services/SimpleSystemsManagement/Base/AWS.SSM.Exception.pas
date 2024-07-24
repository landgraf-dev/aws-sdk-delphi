unit AWS.SSM.Exception;

interface

uses
  AWS.Runtime.Exceptions;

type
  EAmazonSimpleSystemsManagementException = class(EAmazonServiceException)
  end;
  
implementation

end.
