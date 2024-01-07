unit AWS.S3.Model.WriteGetObjectResponseResponse;

interface

uses
  AWS.Runtime.Model;

type
  TWriteGetObjectResponseResponse = class;
  
  IWriteGetObjectResponseResponse = interface(IAmazonWebServiceResponse)
    function Obj: TWriteGetObjectResponseResponse;
  end;
  
  TWriteGetObjectResponseResponse = class(TAmazonWebServiceResponse, IWriteGetObjectResponseResponse)
  strict protected
    function Obj: TWriteGetObjectResponseResponse;
  end;
  
implementation

{ TWriteGetObjectResponseResponse }

function TWriteGetObjectResponseResponse.Obj: TWriteGetObjectResponseResponse;
begin
  Result := Self;
end;

end.
