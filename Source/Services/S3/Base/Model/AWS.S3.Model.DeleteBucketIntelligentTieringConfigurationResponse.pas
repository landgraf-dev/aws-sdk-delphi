unit AWS.S3.Model.DeleteBucketIntelligentTieringConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteBucketIntelligentTieringConfigurationResponse = class;
  
  IDeleteBucketIntelligentTieringConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteBucketIntelligentTieringConfigurationResponse;
  end;
  
  TDeleteBucketIntelligentTieringConfigurationResponse = class(TAmazonWebServiceResponse, IDeleteBucketIntelligentTieringConfigurationResponse)
  strict protected
    function Obj: TDeleteBucketIntelligentTieringConfigurationResponse;
  end;
  
implementation

{ TDeleteBucketIntelligentTieringConfigurationResponse }

function TDeleteBucketIntelligentTieringConfigurationResponse.Obj: TDeleteBucketIntelligentTieringConfigurationResponse;
begin
  Result := Self;
end;

end.
