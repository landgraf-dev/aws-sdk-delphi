unit AWS.SES.Transform.DeleteConfigurationSetTrackingOptionsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.DeleteConfigurationSetTrackingOptionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeleteConfigurationSetTrackingOptionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteConfigurationSetTrackingOptionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteConfigurationSetTrackingOptionsRequest>, IDeleteConfigurationSetTrackingOptionsRequestMarshaller)
  strict private
    class var FInstance: IDeleteConfigurationSetTrackingOptionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteConfigurationSetTrackingOptionsRequest): IRequest; overload;
    class function Instance: IDeleteConfigurationSetTrackingOptionsRequestMarshaller; static;
  end;
  
implementation

{ TDeleteConfigurationSetTrackingOptionsRequestMarshaller }

function TDeleteConfigurationSetTrackingOptionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteConfigurationSetTrackingOptionsRequest(AInput));
end;

function TDeleteConfigurationSetTrackingOptionsRequestMarshaller.Marshall(PublicRequest: TDeleteConfigurationSetTrackingOptionsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'DeleteConfigurationSetTrackingOptions');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetConfigurationSetName then
      Request.Parameters.Add('ConfigurationSetName', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
  Result := Request;
end;

class constructor TDeleteConfigurationSetTrackingOptionsRequestMarshaller.Create;
begin
  FInstance := TDeleteConfigurationSetTrackingOptionsRequestMarshaller.Create;
end;

class function TDeleteConfigurationSetTrackingOptionsRequestMarshaller.Instance: IDeleteConfigurationSetTrackingOptionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
