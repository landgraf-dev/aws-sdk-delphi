unit AWS.SES.Transform.DescribeReceiptRuleSetRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.DescribeReceiptRuleSetRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDescribeReceiptRuleSetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeReceiptRuleSetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeReceiptRuleSetRequest>, IDescribeReceiptRuleSetRequestMarshaller)
  strict private
    class var FInstance: IDescribeReceiptRuleSetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeReceiptRuleSetRequest): IRequest; overload;
    class function Instance: IDescribeReceiptRuleSetRequestMarshaller; static;
  end;
  
implementation

{ TDescribeReceiptRuleSetRequestMarshaller }

function TDescribeReceiptRuleSetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeReceiptRuleSetRequest(AInput));
end;

function TDescribeReceiptRuleSetRequestMarshaller.Marshall(PublicRequest: TDescribeReceiptRuleSetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'DescribeReceiptRuleSet');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetRuleSetName then
      Request.Parameters.Add('RuleSetName', TStringUtils.Fromstring(PublicRequest.RuleSetName));
  Result := Request;
end;

class constructor TDescribeReceiptRuleSetRequestMarshaller.Create;
begin
  FInstance := TDescribeReceiptRuleSetRequestMarshaller.Create;
end;

class function TDescribeReceiptRuleSetRequestMarshaller.Instance: IDescribeReceiptRuleSetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
