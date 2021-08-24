unit AWS.SESv2.Transform.ListTagsForResourceRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.ListTagsForResourceRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Internal.StringUtils;

type
  IListTagsForResourceRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListTagsForResourceRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListTagsForResourceRequest>, IListTagsForResourceRequestMarshaller)
  strict private
    class var FInstance: IListTagsForResourceRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListTagsForResourceRequest): IRequest; overload;
    class function Instance: IListTagsForResourceRequestMarshaller; static;
  end;
  
implementation

{ TListTagsForResourceRequestMarshaller }

function TListTagsForResourceRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListTagsForResourceRequest(AInput));
end;

function TListTagsForResourceRequestMarshaller.Marshall(PublicRequest: TListTagsForResourceRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetResourceArn then
    Request.Parameters.Add('ResourceArn', TStringUtils.Fromstring(PublicRequest.ResourceArn));
  Request.ResourcePath := '/v2/email/tags';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListTagsForResourceRequestMarshaller.Create;
begin
  FInstance := TListTagsForResourceRequestMarshaller.Create;
end;

class function TListTagsForResourceRequestMarshaller.Instance: IListTagsForResourceRequestMarshaller;
begin
  Result := FInstance;
end;

end.
