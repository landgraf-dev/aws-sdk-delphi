unit AWS.SNS.Transform.ListPlatformApplicationsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.ListPlatformApplicationsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListPlatformApplicationsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListPlatformApplicationsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListPlatformApplicationsRequest>, IListPlatformApplicationsRequestMarshaller)
  strict private
    class var FInstance: IListPlatformApplicationsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListPlatformApplicationsRequest): IRequest; overload;
    class function Instance: IListPlatformApplicationsRequestMarshaller; static;
  end;
  
implementation

{ TListPlatformApplicationsRequestMarshaller }

function TListPlatformApplicationsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListPlatformApplicationsRequest(AInput));
end;

function TListPlatformApplicationsRequestMarshaller.Marshall(PublicRequest: TListPlatformApplicationsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'ListPlatformApplications');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetNextToken then
      Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  Result := Request;
end;

class constructor TListPlatformApplicationsRequestMarshaller.Create;
begin
  FInstance := TListPlatformApplicationsRequestMarshaller.Create;
end;

class function TListPlatformApplicationsRequestMarshaller.Instance: IListPlatformApplicationsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
