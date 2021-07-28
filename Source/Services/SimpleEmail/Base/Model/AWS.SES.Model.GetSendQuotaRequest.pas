unit AWS.SES.Model.GetSendQuotaRequest;

interface

uses
  AWS.SES.Model.Request;

type
  TGetSendQuotaRequest = class;
  
  IGetSendQuotaRequest = interface
    function Obj: TGetSendQuotaRequest;
  end;
  
  TGetSendQuotaRequest = class(TAmazonSimpleEmailServiceRequest, IGetSendQuotaRequest)
  strict protected
    function Obj: TGetSendQuotaRequest;
  end;
  
implementation

{ TGetSendQuotaRequest }

function TGetSendQuotaRequest.Obj: TGetSendQuotaRequest;
begin
  Result := Self;
end;

end.
