unit AWS.SES.Transform.UpdateConfigurationSetTrackingOptionsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.UpdateConfigurationSetTrackingOptionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IUpdateConfigurationSetTrackingOptionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateConfigurationSetTrackingOptionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateConfigurationSetTrackingOptionsRequest>, IUpdateConfigurationSetTrackingOptionsRequestMarshaller)
  strict private
    class var FInstance: IUpdateConfigurationSetTrackingOptionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateConfigurationSetTrackingOptionsRequest): IRequest; overload;
    class function Instance: IUpdateConfigurationSetTrackingOptionsRequestMarshaller; static;
  end;
  
implementation

{ TUpdateConfigurationSetTrackingOptionsRequestMarshaller }

function TUpdateConfigurationSetTrackingOptionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateConfigurationSetTrackingOptionsRequest(AInput));
end;

function TUpdateConfigurationSetTrackingOptionsRequestMarshaller.Marshall(PublicRequest: TUpdateConfigurationSetTrackingOptionsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'UpdateConfigurationSetTrackingOptions');
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

class constructor TUpdateConfigurationSetTrackingOptionsRequestMarshaller.Create;
begin
  FInstance := TUpdateConfigurationSetTrackingOptionsRequestMarshaller.Create;
end;

class function TUpdateConfigurationSetTrackingOptionsRequestMarshaller.Instance: IUpdateConfigurationSetTrackingOptionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
