unit AWS.SES.Model.UpdateConfigurationSetSendingEnabledResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateConfigurationSetSendingEnabledResponse = class;
  
  IUpdateConfigurationSetSendingEnabledResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUpdateConfigurationSetSendingEnabledResponse;
  end;
  
  TUpdateConfigurationSetSendingEnabledResponse = class(TAmazonWebServiceResponse, IUpdateConfigurationSetSendingEnabledResponse)
  strict protected
    function Obj: TUpdateConfigurationSetSendingEnabledResponse;
  end;
  
implementation

{ TUpdateConfigurationSetSendingEnabledResponse }

function TUpdateConfigurationSetSendingEnabledResponse.Obj: TUpdateConfigurationSetSendingEnabledResponse;
begin
  Result := Self;
end;

end.
