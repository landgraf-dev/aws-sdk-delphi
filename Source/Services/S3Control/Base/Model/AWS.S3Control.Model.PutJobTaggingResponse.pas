unit AWS.S3Control.Model.PutJobTaggingResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutJobTaggingResponse = class;
  
  IPutJobTaggingResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutJobTaggingResponse;
  end;
  
  TPutJobTaggingResponse = class(TAmazonWebServiceResponse, IPutJobTaggingResponse)
  strict protected
    function Obj: TPutJobTaggingResponse;
  end;
  
implementation

{ TPutJobTaggingResponse }

function TPutJobTaggingResponse.Obj: TPutJobTaggingResponse;
begin
  Result := Self;
end;

end.
