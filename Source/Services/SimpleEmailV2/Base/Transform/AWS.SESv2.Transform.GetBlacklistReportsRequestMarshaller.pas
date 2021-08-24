unit AWS.SESv2.Transform.GetBlacklistReportsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetBlacklistReportsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IGetBlacklistReportsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBlacklistReportsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBlacklistReportsRequest>, IGetBlacklistReportsRequestMarshaller)
  strict private
    class var FInstance: IGetBlacklistReportsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBlacklistReportsRequest): IRequest; overload;
    class function Instance: IGetBlacklistReportsRequestMarshaller; static;
  end;
  
implementation

{ TGetBlacklistReportsRequestMarshaller }

function TGetBlacklistReportsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBlacklistReportsRequest(AInput));
end;

function TGetBlacklistReportsRequestMarshaller.Marshall(PublicRequest: TGetBlacklistReportsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetBlacklistItemNames then
    Request.ParameterCollection.Add('BlacklistItemNames', PublicRequest.BlacklistItemNames);
  Request.ResourcePath := '/v2/email/deliverability-dashboard/blacklist-report';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TGetBlacklistReportsRequestMarshaller.Create;
begin
  FInstance := TGetBlacklistReportsRequestMarshaller.Create;
end;

class function TGetBlacklistReportsRequestMarshaller.Instance: IGetBlacklistReportsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
