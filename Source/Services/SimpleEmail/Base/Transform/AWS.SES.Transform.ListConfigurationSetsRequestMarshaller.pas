unit AWS.SES.Transform.ListConfigurationSetsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.ListConfigurationSetsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListConfigurationSetsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListConfigurationSetsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListConfigurationSetsRequest>, IListConfigurationSetsRequestMarshaller)
  strict private
    class var FInstance: IListConfigurationSetsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListConfigurationSetsRequest): IRequest; overload;
    class function Instance: IListConfigurationSetsRequestMarshaller; static;
  end;
  
implementation

{ TListConfigurationSetsRequestMarshaller }

function TListConfigurationSetsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListConfigurationSetsRequest(AInput));
end;

function TListConfigurationSetsRequestMarshaller.Marshall(PublicRequest: TListConfigurationSetsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'ListConfigurationSets');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetMaxItems then
      Request.Parameters.Add('MaxItems', TStringUtils.FromInteger(PublicRequest.MaxItems));
    if PublicRequest.IsSetNextToken then
      Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  end;
  Result := Request;
end;

class constructor TListConfigurationSetsRequestMarshaller.Create;
begin
  FInstance := TListConfigurationSetsRequestMarshaller.Create;
end;

class function TListConfigurationSetsRequestMarshaller.Instance: IListConfigurationSetsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
