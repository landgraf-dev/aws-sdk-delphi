unit AWS.SES.Model.UpdateConfigurationSetTrackingOptionsResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateConfigurationSetTrackingOptionsResponse = class;
  
  IUpdateConfigurationSetTrackingOptionsResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUpdateConfigurationSetTrackingOptionsResponse;
  end;
  
  TUpdateConfigurationSetTrackingOptionsResponse = class(TAmazonWebServiceResponse, IUpdateConfigurationSetTrackingOptionsResponse)
  strict protected
    function Obj: TUpdateConfigurationSetTrackingOptionsResponse;
  end;
  
implementation

{ TUpdateConfigurationSetTrackingOptionsResponse }

function TUpdateConfigurationSetTrackingOptionsResponse.Obj: TUpdateConfigurationSetTrackingOptionsResponse;
begin
  Result := Self;
end;

end.
