unit AWS.S3.Model.PutBucketMetricsConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutBucketMetricsConfigurationResponse = class;
  
  IPutBucketMetricsConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutBucketMetricsConfigurationResponse;
  end;
  
  TPutBucketMetricsConfigurationResponse = class(TAmazonWebServiceResponse, IPutBucketMetricsConfigurationResponse)
  strict protected
    function Obj: TPutBucketMetricsConfigurationResponse;
  end;
  
implementation

{ TPutBucketMetricsConfigurationResponse }

function TPutBucketMetricsConfigurationResponse.Obj: TPutBucketMetricsConfigurationResponse;
begin
  Result := Self;
end;

end.
