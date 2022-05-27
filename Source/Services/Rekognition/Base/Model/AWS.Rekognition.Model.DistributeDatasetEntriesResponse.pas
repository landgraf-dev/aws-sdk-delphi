unit AWS.Rekognition.Model.DistributeDatasetEntriesResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDistributeDatasetEntriesResponse = class;
  
  IDistributeDatasetEntriesResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDistributeDatasetEntriesResponse;
  end;
  
  TDistributeDatasetEntriesResponse = class(TAmazonWebServiceResponse, IDistributeDatasetEntriesResponse)
  strict protected
    function Obj: TDistributeDatasetEntriesResponse;
  end;
  
implementation

{ TDistributeDatasetEntriesResponse }

function TDistributeDatasetEntriesResponse.Obj: TDistributeDatasetEntriesResponse;
begin
  Result := Self;
end;

end.
