unit AWS.SES.Transform.DeleteConfigurationSetRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.DeleteConfigurationSetRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeleteConfigurationSetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteConfigurationSetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteConfigurationSetRequest>, IDeleteConfigurationSetRequestMarshaller)
  strict private
    class var FInstance: IDeleteConfigurationSetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteConfigurationSetRequest): IRequest; overload;
    class function Instance: IDeleteConfigurationSetRequestMarshaller; static;
  end;
  
implementation

{ TDeleteConfigurationSetRequestMarshaller }

function TDeleteConfigurationSetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteConfigurationSetRequest(AInput));
end;

function TDeleteConfigurationSetRequestMarshaller.Marshall(PublicRequest: TDeleteConfigurationSetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'DeleteConfigurationSet');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetConfigurationSetName then
      Request.Parameters.Add('ConfigurationSetName', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
  Result := Request;
end;

class constructor TDeleteConfigurationSetRequestMarshaller.Create;
begin
  FInstance := TDeleteConfigurationSetRequestMarshaller.Create;
end;

class function TDeleteConfigurationSetRequestMarshaller.Instance: IDeleteConfigurationSetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
