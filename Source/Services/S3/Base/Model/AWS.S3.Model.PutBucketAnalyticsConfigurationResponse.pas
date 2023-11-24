unit AWS.S3.Model.PutBucketAnalyticsConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutBucketAnalyticsConfigurationResponse = class;
  
  IPutBucketAnalyticsConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutBucketAnalyticsConfigurationResponse;
  end;
  
  TPutBucketAnalyticsConfigurationResponse = class(TAmazonWebServiceResponse, IPutBucketAnalyticsConfigurationResponse)
  strict protected
    function Obj: TPutBucketAnalyticsConfigurationResponse;
  end;
  
implementation

{ TPutBucketAnalyticsConfigurationResponse }

function TPutBucketAnalyticsConfigurationResponse.Obj: TPutBucketAnalyticsConfigurationResponse;
begin
  Result := Self;
end;

end.
