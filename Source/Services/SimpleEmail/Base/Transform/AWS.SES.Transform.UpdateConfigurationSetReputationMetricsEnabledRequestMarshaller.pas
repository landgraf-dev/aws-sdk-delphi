unit AWS.SES.Transform.UpdateConfigurationSetReputationMetricsEnabledRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.UpdateConfigurationSetReputationMetricsEnabledRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IUpdateConfigurationSetReputationMetricsEnabledRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateConfigurationSetReputationMetricsEnabledRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateConfigurationSetReputationMetricsEnabledRequest>, IUpdateConfigurationSetReputationMetricsEnabledRequestMarshaller)
  strict private
    class var FInstance: IUpdateConfigurationSetReputationMetricsEnabledRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateConfigurationSetReputationMetricsEnabledRequest): IRequest; overload;
    class function Instance: IUpdateConfigurationSetReputationMetricsEnabledRequestMarshaller; static;
  end;
  
implementation

{ TUpdateConfigurationSetReputationMetricsEnabledRequestMarshaller }

function TUpdateConfigurationSetReputationMetricsEnabledRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateConfigurationSetReputationMetricsEnabledRequest(AInput));
end;

function TUpdateConfigurationSetReputationMetricsEnabledRequestMarshaller.Marshall(PublicRequest: TUpdateConfigurationSetReputationMetricsEnabledRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'UpdateConfigurationSetReputationMetricsEnabled');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetConfigurationSetName then
      Request.Parameters.Add('ConfigurationSetName', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
    if PublicRequest.IsSetEnabled then
      Request.Parameters.Add('Enabled', TStringUtils.FromBoolean(PublicRequest.Enabled));
  end;
  Result := Request;
end;

class constructor TUpdateConfigurationSetReputationMetricsEnabledRequestMarshaller.Create;
begin
  FInstance := TUpdateConfigurationSetReputationMetricsEnabledRequestMarshaller.Create;
end;

class function TUpdateConfigurationSetReputationMetricsEnabledRequestMarshaller.Instance: IUpdateConfigurationSetReputationMetricsEnabledRequestMarshaller;
begin
  Result := FInstance;
end;

end.
