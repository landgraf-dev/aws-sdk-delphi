unit AWS.SNS.Model.DeletePlatformApplicationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeletePlatformApplicationResponse = class;
  
  IDeletePlatformApplicationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeletePlatformApplicationResponse;
  end;
  
  TDeletePlatformApplicationResponse = class(TAmazonWebServiceResponse, IDeletePlatformApplicationResponse)
  strict protected
    function Obj: TDeletePlatformApplicationResponse;
  end;
  
implementation

{ TDeletePlatformApplicationResponse }

function TDeletePlatformApplicationResponse.Obj: TDeletePlatformApplicationResponse;
begin
  Result := Self;
end;

end.
