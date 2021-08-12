unit AWS.SNS.Model.GetSMSSandboxAccountStatusRequest;

interface

uses
  AWS.SNS.Model.Request;

type
  TGetSMSSandboxAccountStatusRequest = class;
  
  IGetSMSSandboxAccountStatusRequest = interface
    function Obj: TGetSMSSandboxAccountStatusRequest;
  end;
  
  TGetSMSSandboxAccountStatusRequest = class(TAmazonSimpleNotificationServiceRequest, IGetSMSSandboxAccountStatusRequest)
  strict protected
    function Obj: TGetSMSSandboxAccountStatusRequest;
  end;
  
implementation

{ TGetSMSSandboxAccountStatusRequest }

function TGetSMSSandboxAccountStatusRequest.Obj: TGetSMSSandboxAccountStatusRequest;
begin
  Result := Self;
end;

end.
