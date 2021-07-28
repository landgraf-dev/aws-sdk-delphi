unit AWS.SES.Transform.CreateConfigurationSetRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.CreateConfigurationSetRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ICreateConfigurationSetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateConfigurationSetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateConfigurationSetRequest>, ICreateConfigurationSetRequestMarshaller)
  strict private
    class var FInstance: ICreateConfigurationSetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateConfigurationSetRequest): IRequest; overload;
    class function Instance: ICreateConfigurationSetRequestMarshaller; static;
  end;
  
implementation

{ TCreateConfigurationSetRequestMarshaller }

function TCreateConfigurationSetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateConfigurationSetRequest(AInput));
end;

function TCreateConfigurationSetRequestMarshaller.Marshall(PublicRequest: TCreateConfigurationSetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'CreateConfigurationSet');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetConfigurationSet then
      if PublicRequest.ConfigurationSet.IsSetName then
        Request.Parameters.Add('ConfigurationSet' + '.' + 'Name', TStringUtils.Fromstring(PublicRequest.ConfigurationSet.Name));
  Result := Request;
end;

class constructor TCreateConfigurationSetRequestMarshaller.Create;
begin
  FInstance := TCreateConfigurationSetRequestMarshaller.Create;
end;

class function TCreateConfigurationSetRequestMarshaller.Instance: ICreateConfigurationSetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
