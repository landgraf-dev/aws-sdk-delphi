unit AWS.SESv2.Transform.ListSuppressedDestinationsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.ListSuppressedDestinationsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Internal.StringUtils;

type
  IListSuppressedDestinationsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListSuppressedDestinationsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListSuppressedDestinationsRequest>, IListSuppressedDestinationsRequestMarshaller)
  strict private
    class var FInstance: IListSuppressedDestinationsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListSuppressedDestinationsRequest): IRequest; overload;
    class function Instance: IListSuppressedDestinationsRequestMarshaller; static;
  end;
  
implementation

{ TListSuppressedDestinationsRequestMarshaller }

function TListSuppressedDestinationsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListSuppressedDestinationsRequest(AInput));
end;

function TListSuppressedDestinationsRequestMarshaller.Marshall(PublicRequest: TListSuppressedDestinationsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetEndDate then
    Request.Parameters.Add('EndDate', TStringUtils.FromDateTimeToISO8601(PublicRequest.EndDate));
  if PublicRequest.IsSetNextToken then
    Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  if PublicRequest.IsSetPageSize then
    Request.Parameters.Add('PageSize', TStringUtils.FromInteger(PublicRequest.PageSize));
  if PublicRequest.IsSetReasons then
    Request.ParameterCollection.Add('Reason', PublicRequest.Reasons);
  if PublicRequest.IsSetStartDate then
    Request.Parameters.Add('StartDate', TStringUtils.FromDateTimeToISO8601(PublicRequest.StartDate));
  Request.ResourcePath := '/v2/email/suppression/addresses';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListSuppressedDestinationsRequestMarshaller.Create;
begin
  FInstance := TListSuppressedDestinationsRequestMarshaller.Create;
end;

class function TListSuppressedDestinationsRequestMarshaller.Instance: IListSuppressedDestinationsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
