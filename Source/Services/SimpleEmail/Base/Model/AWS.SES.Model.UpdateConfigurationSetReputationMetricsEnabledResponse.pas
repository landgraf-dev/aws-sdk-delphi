unit AWS.SES.Model.UpdateConfigurationSetReputationMetricsEnabledResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateConfigurationSetReputationMetricsEnabledResponse = class;
  
  IUpdateConfigurationSetReputationMetricsEnabledResponse = interface
    function Obj: TUpdateConfigurationSetReputationMetricsEnabledResponse;
  end;
  
  TUpdateConfigurationSetReputationMetricsEnabledResponse = class(TAmazonWebServiceResponse, IUpdateConfigurationSetReputationMetricsEnabledResponse)
  strict protected
    function Obj: TUpdateConfigurationSetReputationMetricsEnabledResponse;
  end;
  
implementation

{ TUpdateConfigurationSetReputationMetricsEnabledResponse }

function TUpdateConfigurationSetReputationMetricsEnabledResponse.Obj: TUpdateConfigurationSetReputationMetricsEnabledResponse;
begin
  Result := Self;
end;

end.
