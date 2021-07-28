unit AWS.SES.Transform.DeleteReceiptRuleRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.DeleteReceiptRuleRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeleteReceiptRuleRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteReceiptRuleRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteReceiptRuleRequest>, IDeleteReceiptRuleRequestMarshaller)
  strict private
    class var FInstance: IDeleteReceiptRuleRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteReceiptRuleRequest): IRequest; overload;
    class function Instance: IDeleteReceiptRuleRequestMarshaller; static;
  end;
  
implementation

{ TDeleteReceiptRuleRequestMarshaller }

function TDeleteReceiptRuleRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteReceiptRuleRequest(AInput));
end;

function TDeleteReceiptRuleRequestMarshaller.Marshall(PublicRequest: TDeleteReceiptRuleRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'DeleteReceiptRule');
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

class constructor TDeleteReceiptRuleRequestMarshaller.Create;
begin
  FInstance := TDeleteReceiptRuleRequestMarshaller.Create;
end;

class function TDeleteReceiptRuleRequestMarshaller.Instance: IDeleteReceiptRuleRequestMarshaller;
begin
  Result := FInstance;
end;

end.
