unit AWS.SESv2.Model.GetDeliverabilityDashboardOptionsRequest;

interface

uses
  AWS.SESv2.Model.Request;

type
  TGetDeliverabilityDashboardOptionsRequest = class;
  
  IGetDeliverabilityDashboardOptionsRequest = interface
    function Obj: TGetDeliverabilityDashboardOptionsRequest;
  end;
  
  TGetDeliverabilityDashboardOptionsRequest = class(TAmazonSimpleEmailServiceV2Request, IGetDeliverabilityDashboardOptionsRequest)
  strict protected
    function Obj: TGetDeliverabilityDashboardOptionsRequest;
  end;
  
implementation

{ TGetDeliverabilityDashboardOptionsRequest }

function TGetDeliverabilityDashboardOptionsRequest.Obj: TGetDeliverabilityDashboardOptionsRequest;
begin
  Result := Self;
end;

end.
