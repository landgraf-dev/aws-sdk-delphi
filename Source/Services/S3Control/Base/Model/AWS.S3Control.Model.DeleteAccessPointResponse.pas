unit AWS.S3Control.Model.DeleteAccessPointResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteAccessPointResponse = class;
  
  IDeleteAccessPointResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteAccessPointResponse;
  end;
  
  TDeleteAccessPointResponse = class(TAmazonWebServiceResponse, IDeleteAccessPointResponse)
  strict protected
    function Obj: TDeleteAccessPointResponse;
  end;
  
implementation

{ TDeleteAccessPointResponse }

function TDeleteAccessPointResponse.Obj: TDeleteAccessPointResponse;
begin
  Result := Self;
end;

end.
