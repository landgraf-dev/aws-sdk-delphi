unit AWS.SSM.Model.UpdateServiceSettingResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateServiceSettingResponse = class;
  
  IUpdateServiceSettingResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUpdateServiceSettingResponse;
  end;
  
  TUpdateServiceSettingResponse = class(TAmazonWebServiceResponse, IUpdateServiceSettingResponse)
  strict protected
    function Obj: TUpdateServiceSettingResponse;
  end;
  
implementation

{ TUpdateServiceSettingResponse }

function TUpdateServiceSettingResponse.Obj: TUpdateServiceSettingResponse;
begin
  Result := Self;
end;

end.
