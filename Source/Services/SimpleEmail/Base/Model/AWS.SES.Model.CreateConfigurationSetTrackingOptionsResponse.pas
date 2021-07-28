unit AWS.SES.Model.CreateConfigurationSetTrackingOptionsResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCreateConfigurationSetTrackingOptionsResponse = class;
  
  ICreateConfigurationSetTrackingOptionsResponse = interface
    function Obj: TCreateConfigurationSetTrackingOptionsResponse;
  end;
  
  TCreateConfigurationSetTrackingOptionsResponse = class(TAmazonWebServiceResponse, ICreateConfigurationSetTrackingOptionsResponse)
  strict protected
    function Obj: TCreateConfigurationSetTrackingOptionsResponse;
  end;
  
implementation

{ TCreateConfigurationSetTrackingOptionsResponse }

function TCreateConfigurationSetTrackingOptionsResponse.Obj: TCreateConfigurationSetTrackingOptionsResponse;
begin
  Result := Self;
end;

end.
