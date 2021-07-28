unit AWS.SES.Transform.DescribeConfigurationSetRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.DescribeConfigurationSetRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDescribeConfigurationSetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeConfigurationSetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeConfigurationSetRequest>, IDescribeConfigurationSetRequestMarshaller)
  strict private
    class var FInstance: IDescribeConfigurationSetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeConfigurationSetRequest): IRequest; overload;
    class function Instance: IDescribeConfigurationSetRequestMarshaller; static;
  end;
  
implementation

{ TDescribeConfigurationSetRequestMarshaller }

function TDescribeConfigurationSetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeConfigurationSetRequest(AInput));
end;

function TDescribeConfigurationSetRequestMarshaller.Marshall(PublicRequest: TDescribeConfigurationSetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'DescribeConfigurationSet');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetConfigurationSetAttributeNames then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.ConfigurationSetAttributeNames do
      begin
        Request.Parameters.Add('ConfigurationSetAttributeNames' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValue));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
    if PublicRequest.IsSetConfigurationSetName then
      Request.Parameters.Add('ConfigurationSetName', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
  end;
  Result := Request;
end;

class constructor TDescribeConfigurationSetRequestMarshaller.Create;
begin
  FInstance := TDescribeConfigurationSetRequestMarshaller.Create;
end;

class function TDescribeConfigurationSetRequestMarshaller.Instance: IDescribeConfigurationSetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
