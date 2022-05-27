unit AWS.Rekognition.Model.UpdateDatasetEntriesResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateDatasetEntriesResponse = class;
  
  IUpdateDatasetEntriesResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUpdateDatasetEntriesResponse;
  end;
  
  TUpdateDatasetEntriesResponse = class(TAmazonWebServiceResponse, IUpdateDatasetEntriesResponse)
  strict protected
    function Obj: TUpdateDatasetEntriesResponse;
  end;
  
implementation

{ TUpdateDatasetEntriesResponse }

function TUpdateDatasetEntriesResponse.Obj: TUpdateDatasetEntriesResponse;
begin
  Result := Self;
end;

end.
