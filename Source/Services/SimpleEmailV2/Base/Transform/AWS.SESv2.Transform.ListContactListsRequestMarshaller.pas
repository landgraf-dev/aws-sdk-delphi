unit AWS.SESv2.Transform.ListContactListsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.ListContactListsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Internal.StringUtils;

type
  IListContactListsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListContactListsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListContactListsRequest>, IListContactListsRequestMarshaller)
  strict private
    class var FInstance: IListContactListsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListContactListsRequest): IRequest; overload;
    class function Instance: IListContactListsRequestMarshaller; static;
  end;
  
implementation

{ TListContactListsRequestMarshaller }

function TListContactListsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListContactListsRequest(AInput));
end;

function TListContactListsRequestMarshaller.Marshall(PublicRequest: TListContactListsRequest): IRequest;
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
  Request.ResourcePath := '/v2/email/contact-lists';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListContactListsRequestMarshaller.Create;
begin
  FInstance := TListContactListsRequestMarshaller.Create;
end;

class function TListContactListsRequestMarshaller.Instance: IListContactListsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
