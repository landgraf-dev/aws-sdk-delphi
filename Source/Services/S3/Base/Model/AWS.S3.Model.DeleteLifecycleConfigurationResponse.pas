unit AWS.S3.Model.DeleteLifecycleConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteLifecycleConfigurationResponse = class;
  
  IDeleteLifecycleConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteLifecycleConfigurationResponse;
  end;
  
  TDeleteLifecycleConfigurationResponse = class(TAmazonWebServiceResponse, IDeleteLifecycleConfigurationResponse)
  strict protected
    function Obj: TDeleteLifecycleConfigurationResponse;
  end;
  
implementation

{ TDeleteLifecycleConfigurationResponse }

function TDeleteLifecycleConfigurationResponse.Obj: TDeleteLifecycleConfigurationResponse;
begin
  Result := Self;
end;

end.
