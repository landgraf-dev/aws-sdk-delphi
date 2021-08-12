unit AWS.SNS.Transform.RemovePermissionRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.RemovePermissionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IRemovePermissionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TRemovePermissionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TRemovePermissionRequest>, IRemovePermissionRequestMarshaller)
  strict private
    class var FInstance: IRemovePermissionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TRemovePermissionRequest): IRequest; overload;
    class function Instance: IRemovePermissionRequestMarshaller; static;
  end;
  
implementation

{ TRemovePermissionRequestMarshaller }

function TRemovePermissionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TRemovePermissionRequest(AInput));
end;

function TRemovePermissionRequestMarshaller.Marshall(PublicRequest: TRemovePermissionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'RemovePermission');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetLabel then
      Request.Parameters.Add('Label', TStringUtils.Fromstring(PublicRequest.&Label));
    if PublicRequest.IsSetTopicArn then
      Request.Parameters.Add('TopicArn', TStringUtils.Fromstring(PublicRequest.TopicArn));
  end;
  Result := Request;
end;

class constructor TRemovePermissionRequestMarshaller.Create;
begin
  FInstance := TRemovePermissionRequestMarshaller.Create;
end;

class function TRemovePermissionRequestMarshaller.Instance: IRemovePermissionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
