unit AWS.SES.Transform.DescribeActiveReceiptRuleSetRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.DescribeActiveReceiptRuleSetRequest, 
  AWS.Internal.DefaultRequest;

type
  IDescribeActiveReceiptRuleSetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeActiveReceiptRuleSetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeActiveReceiptRuleSetRequest>, IDescribeActiveReceiptRuleSetRequestMarshaller)
  strict private
    class var FInstance: IDescribeActiveReceiptRuleSetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeActiveReceiptRuleSetRequest): IRequest; overload;
    class function Instance: IDescribeActiveReceiptRuleSetRequestMarshaller; static;
  end;
  
implementation

{ TDescribeActiveReceiptRuleSetRequestMarshaller }

function TDescribeActiveReceiptRuleSetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeActiveReceiptRuleSetRequest(AInput));
end;

function TDescribeActiveReceiptRuleSetRequestMarshaller.Marshall(PublicRequest: TDescribeActiveReceiptRuleSetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'DescribeActiveReceiptRuleSet');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
  end;
  Result := Request;
end;

class constructor TDescribeActiveReceiptRuleSetRequestMarshaller.Create;
begin
  FInstance := TDescribeActiveReceiptRuleSetRequestMarshaller.Create;
end;

class function TDescribeActiveReceiptRuleSetRequestMarshaller.Instance: IDescribeActiveReceiptRuleSetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
