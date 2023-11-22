unit AWS.S3Control.Model.DeleteStorageLensConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteStorageLensConfigurationResponse = class;
  
  IDeleteStorageLensConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteStorageLensConfigurationResponse;
  end;
  
  TDeleteStorageLensConfigurationResponse = class(TAmazonWebServiceResponse, IDeleteStorageLensConfigurationResponse)
  strict protected
    function Obj: TDeleteStorageLensConfigurationResponse;
  end;
  
implementation

{ TDeleteStorageLensConfigurationResponse }

function TDeleteStorageLensConfigurationResponse.Obj: TDeleteStorageLensConfigurationResponse;
begin
  Result := Self;
end;

end.
