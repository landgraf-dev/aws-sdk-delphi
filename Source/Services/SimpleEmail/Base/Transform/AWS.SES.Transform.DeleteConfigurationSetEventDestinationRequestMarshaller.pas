unit AWS.SES.Transform.DeleteConfigurationSetEventDestinationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.DeleteConfigurationSetEventDestinationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeleteConfigurationSetEventDestinationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteConfigurationSetEventDestinationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteConfigurationSetEventDestinationRequest>, IDeleteConfigurationSetEventDestinationRequestMarshaller)
  strict private
    class var FInstance: IDeleteConfigurationSetEventDestinationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteConfigurationSetEventDestinationRequest): IRequest; overload;
    class function Instance: IDeleteConfigurationSetEventDestinationRequestMarshaller; static;
  end;
  
implementation

{ TDeleteConfigurationSetEventDestinationRequestMarshaller }

function TDeleteConfigurationSetEventDestinationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteConfigurationSetEventDestinationRequest(AInput));
end;

function TDeleteConfigurationSetEventDestinationRequestMarshaller.Marshall(PublicRequest: TDeleteConfigurationSetEventDestinationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'DeleteConfigurationSetEventDestination');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetConfigurationSetName then
      Request.Parameters.Add('ConfigurationSetName', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
    if PublicRequest.IsSetEventDestinationName then
      Request.Parameters.Add('EventDestinationName', TStringUtils.Fromstring(PublicRequest.EventDestinationName));
  end;
  Result := Request;
end;

class constructor TDeleteConfigurationSetEventDestinationRequestMarshaller.Create;
begin
  FInstance := TDeleteConfigurationSetEventDestinationRequestMarshaller.Create;
end;

class function TDeleteConfigurationSetEventDestinationRequestMarshaller.Instance: IDeleteConfigurationSetEventDestinationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
