unit AWS.Rekognition.Model.DeleteDatasetResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteDatasetResponse = class;
  
  IDeleteDatasetResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteDatasetResponse;
  end;
  
  TDeleteDatasetResponse = class(TAmazonWebServiceResponse, IDeleteDatasetResponse)
  strict protected
    function Obj: TDeleteDatasetResponse;
  end;
  
implementation

{ TDeleteDatasetResponse }

function TDeleteDatasetResponse.Obj: TDeleteDatasetResponse;
begin
  Result := Self;
end;

end.
