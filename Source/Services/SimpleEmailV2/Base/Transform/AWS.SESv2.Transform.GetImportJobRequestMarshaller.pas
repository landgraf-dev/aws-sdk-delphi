unit AWS.SESv2.Transform.GetImportJobRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetImportJobRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IGetImportJobRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetImportJobRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetImportJobRequest>, IGetImportJobRequestMarshaller)
  strict private
    class var FInstance: IGetImportJobRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetImportJobRequest): IRequest; overload;
    class function Instance: IGetImportJobRequestMarshaller; static;
  end;
  
implementation

{ TGetImportJobRequestMarshaller }

function TGetImportJobRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetImportJobRequest(AInput));
end;

function TGetImportJobRequestMarshaller.Marshall(PublicRequest: TGetImportJobRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetJobId then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field JobId set');
  Request.AddPathResource('{JobId}', TStringUtils.Fromstring(PublicRequest.JobId));
  Request.ResourcePath := '/v2/email/import-jobs/{JobId}';
  Result := Request;
end;

class constructor TGetImportJobRequestMarshaller.Create;
begin
  FInstance := TGetImportJobRequestMarshaller.Create;
end;

class function TGetImportJobRequestMarshaller.Instance: IGetImportJobRequestMarshaller;
begin
  Result := FInstance;
end;

end.
