unit AWS.SES.Model.GetSendStatisticsRequest;

interface

uses
  AWS.SES.Model.Request;

type
  TGetSendStatisticsRequest = class;
  
  IGetSendStatisticsRequest = interface
    function Obj: TGetSendStatisticsRequest;
  end;
  
  TGetSendStatisticsRequest = class(TAmazonSimpleEmailServiceRequest, IGetSendStatisticsRequest)
  strict protected
    function Obj: TGetSendStatisticsRequest;
  end;
  
implementation

{ TGetSendStatisticsRequest }

function TGetSendStatisticsRequest.Obj: TGetSendStatisticsRequest;
begin
  Result := Self;
end;

end.
