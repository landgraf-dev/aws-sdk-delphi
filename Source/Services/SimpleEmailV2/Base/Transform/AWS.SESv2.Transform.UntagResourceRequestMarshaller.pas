unit AWS.SESv2.Transform.UntagResourceRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.UntagResourceRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Internal.StringUtils;

type
  IUntagResourceRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUntagResourceRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUntagResourceRequest>, IUntagResourceRequestMarshaller)
  strict private
    class var FInstance: IUntagResourceRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUntagResourceRequest): IRequest; overload;
    class function Instance: IUntagResourceRequestMarshaller; static;
  end;
  
implementation

{ TUntagResourceRequestMarshaller }

function TUntagResourceRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUntagResourceRequest(AInput));
end;

function TUntagResourceRequestMarshaller.Marshall(PublicRequest: TUntagResourceRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'DELETE';
  if PublicRequest.IsSetResourceArn then
    Request.Parameters.Add('ResourceArn', TStringUtils.Fromstring(PublicRequest.ResourceArn));
  if PublicRequest.IsSetTagKeys then
    Request.ParameterCollection.Add('TagKeys', PublicRequest.TagKeys);
  Request.ResourcePath := '/v2/email/tags';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TUntagResourceRequestMarshaller.Create;
begin
  FInstance := TUntagResourceRequestMarshaller.Create;
end;

class function TUntagResourceRequestMarshaller.Instance: IUntagResourceRequestMarshaller;
begin
  Result := FInstance;
end;

end.
