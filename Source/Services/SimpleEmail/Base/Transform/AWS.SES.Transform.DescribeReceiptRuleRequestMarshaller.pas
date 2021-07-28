unit AWS.SES.Transform.DescribeReceiptRuleRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.DescribeReceiptRuleRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDescribeReceiptRuleRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeReceiptRuleRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeReceiptRuleRequest>, IDescribeReceiptRuleRequestMarshaller)
  strict private
    class var FInstance: IDescribeReceiptRuleRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeReceiptRuleRequest): IRequest; overload;
    class function Instance: IDescribeReceiptRuleRequestMarshaller; static;
  end;
  
implementation

{ TDescribeReceiptRuleRequestMarshaller }

function TDescribeReceiptRuleRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeReceiptRuleRequest(AInput));
end;

function TDescribeReceiptRuleRequestMarshaller.Marshall(PublicRequest: TDescribeReceiptRuleRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'DescribeReceiptRule');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetRuleName then
      Request.Parameters.Add('RuleName', TStringUtils.Fromstring(PublicRequest.RuleName));
    if PublicRequest.IsSetRuleSetName then
      Request.Parameters.Add('RuleSetName', TStringUtils.Fromstring(PublicRequest.RuleSetName));
  end;
  Result := Request;
end;

class constructor TDescribeReceiptRuleRequestMarshaller.Create;
begin
  FInstance := TDescribeReceiptRuleRequestMarshaller.Create;
end;

class function TDescribeReceiptRuleRequestMarshaller.Instance: IDescribeReceiptRuleRequestMarshaller;
begin
  Result := FInstance;
end;

end.
