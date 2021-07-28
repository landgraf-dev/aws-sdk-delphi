unit AWS.SES.Transform.PutConfigurationSetDeliveryOptionsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.PutConfigurationSetDeliveryOptionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IPutConfigurationSetDeliveryOptionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutConfigurationSetDeliveryOptionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutConfigurationSetDeliveryOptionsRequest>, IPutConfigurationSetDeliveryOptionsRequestMarshaller)
  strict private
    class var FInstance: IPutConfigurationSetDeliveryOptionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutConfigurationSetDeliveryOptionsRequest): IRequest; overload;
    class function Instance: IPutConfigurationSetDeliveryOptionsRequestMarshaller; static;
  end;
  
implementation

{ TPutConfigurationSetDeliveryOptionsRequestMarshaller }

function TPutConfigurationSetDeliveryOptionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutConfigurationSetDeliveryOptionsRequest(AInput));
end;

function TPutConfigurationSetDeliveryOptionsRequestMarshaller.Marshall(PublicRequest: TPutConfigurationSetDeliveryOptionsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'PutConfigurationSetDeliveryOptions');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetConfigurationSetName then
      Request.Parameters.Add('ConfigurationSetName', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
    if PublicRequest.IsSetDeliveryOptions then
      if PublicRequest.DeliveryOptions.IsSetTlsPolicy then
        Request.Parameters.Add('DeliveryOptions' + '.' + 'TlsPolicy', PublicRequest.DeliveryOptions.TlsPolicy.Value);
  end;
  Result := Request;
end;

class constructor TPutConfigurationSetDeliveryOptionsRequestMarshaller.Create;
begin
  FInstance := TPutConfigurationSetDeliveryOptionsRequestMarshaller.Create;
end;

class function TPutConfigurationSetDeliveryOptionsRequestMarshaller.Instance: IPutConfigurationSetDeliveryOptionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
