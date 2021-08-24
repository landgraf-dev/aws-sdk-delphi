unit AWS.SESv2.Transform.ListConfigurationSetsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.ListConfigurationSetsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Internal.StringUtils;

type
  IListConfigurationSetsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListConfigurationSetsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListConfigurationSetsRequest>, IListConfigurationSetsRequestMarshaller)
  strict private
    class var FInstance: IListConfigurationSetsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListConfigurationSetsRequest): IRequest; overload;
    class function Instance: IListConfigurationSetsRequestMarshaller; static;
  end;
  
implementation

{ TListConfigurationSetsRequestMarshaller }

function TListConfigurationSetsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListConfigurationSetsRequest(AInput));
end;

function TListConfigurationSetsRequestMarshaller.Marshall(PublicRequest: TListConfigurationSetsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetNextToken then
    Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  if PublicRequest.IsSetPageSize then
    Request.Parameters.Add('PageSize', TStringUtils.FromInteger(PublicRequest.PageSize));
  Request.ResourcePath := '/v2/email/configuration-sets';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListConfigurationSetsRequestMarshaller.Create;
begin
  FInstance := TListConfigurationSetsRequestMarshaller.Create;
end;

class function TListConfigurationSetsRequestMarshaller.Instance: IListConfigurationSetsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
