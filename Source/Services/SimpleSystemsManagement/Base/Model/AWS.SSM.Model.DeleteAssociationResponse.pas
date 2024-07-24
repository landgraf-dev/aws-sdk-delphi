unit AWS.SSM.Model.DeleteAssociationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteAssociationResponse = class;
  
  IDeleteAssociationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteAssociationResponse;
  end;
  
  TDeleteAssociationResponse = class(TAmazonWebServiceResponse, IDeleteAssociationResponse)
  strict protected
    function Obj: TDeleteAssociationResponse;
  end;
  
implementation

{ TDeleteAssociationResponse }

function TDeleteAssociationResponse.Obj: TDeleteAssociationResponse;
begin
  Result := Self;
end;

end.
