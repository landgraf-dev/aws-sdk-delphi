unit AWS.SES.Transform.SetReceiptRulePositionRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.SetReceiptRulePositionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISetReceiptRulePositionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSetReceiptRulePositionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSetReceiptRulePositionRequest>, ISetReceiptRulePositionRequestMarshaller)
  strict private
    class var FInstance: ISetReceiptRulePositionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSetReceiptRulePositionRequest): IRequest; overload;
    class function Instance: ISetReceiptRulePositionRequestMarshaller; static;
  end;
  
implementation

{ TSetReceiptRulePositionRequestMarshaller }

function TSetReceiptRulePositionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSetReceiptRulePositionRequest(AInput));
end;

function TSetReceiptRulePositionRequestMarshaller.Marshall(PublicRequest: TSetReceiptRulePositionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'SetReceiptRulePosition');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetAfter then
      Request.Parameters.Add('After', TStringUtils.Fromstring(PublicRequest.After));
    if PublicRequest.IsSetRuleName then
      Request.Parameters.Add('RuleName', TStringUtils.Fromstring(PublicRequest.RuleName));
    if PublicRequest.IsSetRuleSetName then
      Request.Parameters.Add('RuleSetName', TStringUtils.Fromstring(PublicRequest.RuleSetName));
  end;
  Result := Request;
end;

class constructor TSetReceiptRulePositionRequestMarshaller.Create;
begin
  FInstance := TSetReceiptRulePositionRequestMarshaller.Create;
end;

class function TSetReceiptRulePositionRequestMarshaller.Instance: ISetReceiptRulePositionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
