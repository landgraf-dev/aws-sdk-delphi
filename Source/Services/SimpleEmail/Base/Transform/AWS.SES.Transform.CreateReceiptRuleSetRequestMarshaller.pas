unit AWS.SES.Transform.CreateReceiptRuleSetRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.CreateReceiptRuleSetRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ICreateReceiptRuleSetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateReceiptRuleSetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateReceiptRuleSetRequest>, ICreateReceiptRuleSetRequestMarshaller)
  strict private
    class var FInstance: ICreateReceiptRuleSetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateReceiptRuleSetRequest): IRequest; overload;
    class function Instance: ICreateReceiptRuleSetRequestMarshaller; static;
  end;
  
implementation

{ TCreateReceiptRuleSetRequestMarshaller }

function TCreateReceiptRuleSetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateReceiptRuleSetRequest(AInput));
end;

function TCreateReceiptRuleSetRequestMarshaller.Marshall(PublicRequest: TCreateReceiptRuleSetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'CreateReceiptRuleSet');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetRuleSetName then
      Request.Parameters.Add('RuleSetName', TStringUtils.Fromstring(PublicRequest.RuleSetName));
  Result := Request;
end;

class constructor TCreateReceiptRuleSetRequestMarshaller.Create;
begin
  FInstance := TCreateReceiptRuleSetRequestMarshaller.Create;
end;

class function TCreateReceiptRuleSetRequestMarshaller.Instance: ICreateReceiptRuleSetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
