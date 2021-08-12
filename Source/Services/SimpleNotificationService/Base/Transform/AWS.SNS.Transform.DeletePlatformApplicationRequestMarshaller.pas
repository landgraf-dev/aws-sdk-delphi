unit AWS.SNS.Transform.DeletePlatformApplicationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.DeletePlatformApplicationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeletePlatformApplicationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeletePlatformApplicationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeletePlatformApplicationRequest>, IDeletePlatformApplicationRequestMarshaller)
  strict private
    class var FInstance: IDeletePlatformApplicationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeletePlatformApplicationRequest): IRequest; overload;
    class function Instance: IDeletePlatformApplicationRequestMarshaller; static;
  end;
  
implementation

{ TDeletePlatformApplicationRequestMarshaller }

function TDeletePlatformApplicationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeletePlatformApplicationRequest(AInput));
end;

function TDeletePlatformApplicationRequestMarshaller.Marshall(PublicRequest: TDeletePlatformApplicationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'DeletePlatformApplication');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetPlatformApplicationArn then
      Request.Parameters.Add('PlatformApplicationArn', TStringUtils.Fromstring(PublicRequest.PlatformApplicationArn));
  Result := Request;
end;

class constructor TDeletePlatformApplicationRequestMarshaller.Create;
begin
  FInstance := TDeletePlatformApplicationRequestMarshaller.Create;
end;

class function TDeletePlatformApplicationRequestMarshaller.Instance: IDeletePlatformApplicationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
