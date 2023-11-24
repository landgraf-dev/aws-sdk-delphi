unit AWS.S3.Model.PutBucketIntelligentTieringConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutBucketIntelligentTieringConfigurationResponse = class;
  
  IPutBucketIntelligentTieringConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutBucketIntelligentTieringConfigurationResponse;
  end;
  
  TPutBucketIntelligentTieringConfigurationResponse = class(TAmazonWebServiceResponse, IPutBucketIntelligentTieringConfigurationResponse)
  strict protected
    function Obj: TPutBucketIntelligentTieringConfigurationResponse;
  end;
  
implementation

{ TPutBucketIntelligentTieringConfigurationResponse }

function TPutBucketIntelligentTieringConfigurationResponse.Obj: TPutBucketIntelligentTieringConfigurationResponse;
begin
  Result := Self;
end;

end.
