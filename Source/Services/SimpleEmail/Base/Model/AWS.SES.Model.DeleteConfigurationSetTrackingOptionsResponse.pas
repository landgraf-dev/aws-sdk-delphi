unit AWS.SES.Model.DeleteConfigurationSetTrackingOptionsResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteConfigurationSetTrackingOptionsResponse = class;
  
  IDeleteConfigurationSetTrackingOptionsResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteConfigurationSetTrackingOptionsResponse;
  end;
  
  TDeleteConfigurationSetTrackingOptionsResponse = class(TAmazonWebServiceResponse, IDeleteConfigurationSetTrackingOptionsResponse)
  strict protected
    function Obj: TDeleteConfigurationSetTrackingOptionsResponse;
  end;
  
implementation

{ TDeleteConfigurationSetTrackingOptionsResponse }

function TDeleteConfigurationSetTrackingOptionsResponse.Obj: TDeleteConfigurationSetTrackingOptionsResponse;
begin
  Result := Self;
end;

end.
