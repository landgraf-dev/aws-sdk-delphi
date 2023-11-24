unit AWS.S3.Model.DeleteCORSConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteCORSConfigurationResponse = class;
  
  IDeleteCORSConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteCORSConfigurationResponse;
  end;
  
  TDeleteCORSConfigurationResponse = class(TAmazonWebServiceResponse, IDeleteCORSConfigurationResponse)
  strict protected
    function Obj: TDeleteCORSConfigurationResponse;
  end;
  
implementation

{ TDeleteCORSConfigurationResponse }

function TDeleteCORSConfigurationResponse.Obj: TDeleteCORSConfigurationResponse;
begin
  Result := Self;
end;

end.
