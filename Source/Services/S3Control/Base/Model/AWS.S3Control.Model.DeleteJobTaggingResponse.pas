unit AWS.S3Control.Model.DeleteJobTaggingResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteJobTaggingResponse = class;
  
  IDeleteJobTaggingResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteJobTaggingResponse;
  end;
  
  TDeleteJobTaggingResponse = class(TAmazonWebServiceResponse, IDeleteJobTaggingResponse)
  strict protected
    function Obj: TDeleteJobTaggingResponse;
  end;
  
implementation

{ TDeleteJobTaggingResponse }

function TDeleteJobTaggingResponse.Obj: TDeleteJobTaggingResponse;
begin
  Result := Self;
end;

end.
