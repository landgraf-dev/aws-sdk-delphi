unit AWS.Polly.Transform.DescribeVoicesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Polly.Model.DescribeVoicesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Internal.StringUtils;

type
  IDescribeVoicesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeVoicesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeVoicesRequest>, IDescribeVoicesRequestMarshaller)
  strict private
    class var FInstance: IDescribeVoicesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeVoicesRequest): IRequest; overload;
    class function Instance: IDescribeVoicesRequestMarshaller; static;
  end;
  
implementation

{ TDescribeVoicesRequestMarshaller }

function TDescribeVoicesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeVoicesRequest(AInput));
end;

function TDescribeVoicesRequestMarshaller.Marshall(PublicRequest: TDescribeVoicesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Polly');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-06-10');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetEngine then
    Request.Parameters.Add('Engine', TStringUtils.Fromstring(PublicRequest.Engine));
  if PublicRequest.IsSetIncludeAdditionalLanguageCodes then
    Request.Parameters.Add('IncludeAdditionalLanguageCodes', TStringUtils.FromBoolean(PublicRequest.IncludeAdditionalLanguageCodes));
  if PublicRequest.IsSetLanguageCode then
    Request.Parameters.Add('LanguageCode', TStringUtils.Fromstring(PublicRequest.LanguageCode));
  if PublicRequest.IsSetNextToken then
    Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  Result := Request;
end;

class constructor TDescribeVoicesRequestMarshaller.Create;
begin
  FInstance := TDescribeVoicesRequestMarshaller.Create;
end;

class function TDescribeVoicesRequestMarshaller.Instance: IDescribeVoicesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
