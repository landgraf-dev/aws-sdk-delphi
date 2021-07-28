unit AWS.SES.Transform.UpdateConfigurationSetSendingEnabledRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.UpdateConfigurationSetSendingEnabledRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IUpdateConfigurationSetSendingEnabledRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateConfigurationSetSendingEnabledRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateConfigurationSetSendingEnabledRequest>, IUpdateConfigurationSetSendingEnabledRequestMarshaller)
  strict private
    class var FInstance: IUpdateConfigurationSetSendingEnabledRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateConfigurationSetSendingEnabledRequest): IRequest; overload;
    class function Instance: IUpdateConfigurationSetSendingEnabledRequestMarshaller; static;
  end;
  
implementation

{ TUpdateConfigurationSetSendingEnabledRequestMarshaller }

function TUpdateConfigurationSetSendingEnabledRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateConfigurationSetSendingEnabledRequest(AInput));
end;

function TUpdateConfigurationSetSendingEnabledRequestMarshaller.Marshall(PublicRequest: TUpdateConfigurationSetSendingEnabledRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'UpdateConfigurationSetSendingEnabled');
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

class constructor TUpdateConfigurationSetSendingEnabledRequestMarshaller.Create;
begin
  FInstance := TUpdateConfigurationSetSendingEnabledRequestMarshaller.Create;
end;

class function TUpdateConfigurationSetSendingEnabledRequestMarshaller.Instance: IUpdateConfigurationSetSendingEnabledRequestMarshaller;
begin
  Result := FInstance;
end;

end.
