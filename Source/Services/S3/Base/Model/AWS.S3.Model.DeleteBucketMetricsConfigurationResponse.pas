unit AWS.S3.Model.DeleteBucketMetricsConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteBucketMetricsConfigurationResponse = class;
  
  IDeleteBucketMetricsConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteBucketMetricsConfigurationResponse;
  end;
  
  TDeleteBucketMetricsConfigurationResponse = class(TAmazonWebServiceResponse, IDeleteBucketMetricsConfigurationResponse)
  strict protected
    function Obj: TDeleteBucketMetricsConfigurationResponse;
  end;
  
implementation

{ TDeleteBucketMetricsConfigurationResponse }

function TDeleteBucketMetricsConfigurationResponse.Obj: TDeleteBucketMetricsConfigurationResponse;
begin
  Result := Self;
end;

end.
