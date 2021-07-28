unit AWS.SES.Model.SetIdentityDkimEnabledResponse;

interface

uses
  AWS.Runtime.Model;

type
  TSetIdentityDkimEnabledResponse = class;
  
  ISetIdentityDkimEnabledResponse = interface
    function Obj: TSetIdentityDkimEnabledResponse;
  end;
  
  TSetIdentityDkimEnabledResponse = class(TAmazonWebServiceResponse, ISetIdentityDkimEnabledResponse)
  strict protected
    function Obj: TSetIdentityDkimEnabledResponse;
  end;
  
implementation

{ TSetIdentityDkimEnabledResponse }

function TSetIdentityDkimEnabledResponse.Obj: TSetIdentityDkimEnabledResponse;
begin
  Result := Self;
end;

end.
