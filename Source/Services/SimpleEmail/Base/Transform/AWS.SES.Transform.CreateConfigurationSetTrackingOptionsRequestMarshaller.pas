unit AWS.SES.Transform.CreateConfigurationSetTrackingOptionsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.CreateConfigurationSetTrackingOptionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ICreateConfigurationSetTrackingOptionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateConfigurationSetTrackingOptionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateConfigurationSetTrackingOptionsRequest>, ICreateConfigurationSetTrackingOptionsRequestMarshaller)
  strict private
    class var FInstance: ICreateConfigurationSetTrackingOptionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateConfigurationSetTrackingOptionsRequest): IRequest; overload;
    class function Instance: ICreateConfigurationSetTrackingOptionsRequestMarshaller; static;
  end;
  
implementation

{ TCreateConfigurationSetTrackingOptionsRequestMarshaller }

function TCreateConfigurationSetTrackingOptionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateConfigurationSetTrackingOptionsRequest(AInput));
end;

function TCreateConfigurationSetTrackingOptionsRequestMarshaller.Marshall(PublicRequest: TCreateConfigurationSetTrackingOptionsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'CreateConfigurationSetTrackingOptions');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetConfigurationSetName then
      Request.Parameters.Add('ConfigurationSetName', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
    if PublicRequest.IsSetTrackingOptions then
      if PublicRequest.TrackingOptions.IsSetCustomRedirectDomain then
        Request.Parameters.Add('TrackingOptions' + '.' + 'CustomRedirectDomain', TStringUtils.Fromstring(PublicRequest.TrackingOptions.CustomRedirectDomain));
  end;
  Result := Request;
end;

class constructor TCreateConfigurationSetTrackingOptionsRequestMarshaller.Create;
begin
  FInstance := TCreateConfigurationSetTrackingOptionsRequestMarshaller.Create;
end;

class function TCreateConfigurationSetTrackingOptionsRequestMarshaller.Instance: ICreateConfigurationSetTrackingOptionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
