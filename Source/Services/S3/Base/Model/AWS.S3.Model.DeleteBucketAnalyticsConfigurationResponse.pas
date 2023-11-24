unit AWS.S3.Model.DeleteBucketAnalyticsConfigurationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteBucketAnalyticsConfigurationResponse = class;
  
  IDeleteBucketAnalyticsConfigurationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteBucketAnalyticsConfigurationResponse;
  end;
  
  TDeleteBucketAnalyticsConfigurationResponse = class(TAmazonWebServiceResponse, IDeleteBucketAnalyticsConfigurationResponse)
  strict protected
    function Obj: TDeleteBucketAnalyticsConfigurationResponse;
  end;
  
implementation

{ TDeleteBucketAnalyticsConfigurationResponse }

function TDeleteBucketAnalyticsConfigurationResponse.Obj: TDeleteBucketAnalyticsConfigurationResponse;
begin
  Result := Self;
end;

end.
