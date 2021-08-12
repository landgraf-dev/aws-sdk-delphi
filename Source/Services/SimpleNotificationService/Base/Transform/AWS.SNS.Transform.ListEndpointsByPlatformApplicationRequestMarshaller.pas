unit AWS.SNS.Transform.ListEndpointsByPlatformApplicationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.ListEndpointsByPlatformApplicationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListEndpointsByPlatformApplicationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListEndpointsByPlatformApplicationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListEndpointsByPlatformApplicationRequest>, IListEndpointsByPlatformApplicationRequestMarshaller)
  strict private
    class var FInstance: IListEndpointsByPlatformApplicationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListEndpointsByPlatformApplicationRequest): IRequest; overload;
    class function Instance: IListEndpointsByPlatformApplicationRequestMarshaller; static;
  end;
  
implementation

{ TListEndpointsByPlatformApplicationRequestMarshaller }

function TListEndpointsByPlatformApplicationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListEndpointsByPlatformApplicationRequest(AInput));
end;

function TListEndpointsByPlatformApplicationRequestMarshaller.Marshall(PublicRequest: TListEndpointsByPlatformApplicationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'ListEndpointsByPlatformApplication');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetNextToken then
      Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
    if PublicRequest.IsSetPlatformApplicationArn then
      Request.Parameters.Add('PlatformApplicationArn', TStringUtils.Fromstring(PublicRequest.PlatformApplicationArn));
  end;
  Result := Request;
end;

class constructor TListEndpointsByPlatformApplicationRequestMarshaller.Create;
begin
  FInstance := TListEndpointsByPlatformApplicationRequestMarshaller.Create;
end;

class function TListEndpointsByPlatformApplicationRequestMarshaller.Instance: IListEndpointsByPlatformApplicationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
