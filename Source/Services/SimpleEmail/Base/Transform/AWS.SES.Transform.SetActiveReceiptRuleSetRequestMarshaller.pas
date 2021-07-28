unit AWS.SES.Transform.SetActiveReceiptRuleSetRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.SetActiveReceiptRuleSetRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISetActiveReceiptRuleSetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSetActiveReceiptRuleSetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSetActiveReceiptRuleSetRequest>, ISetActiveReceiptRuleSetRequestMarshaller)
  strict private
    class var FInstance: ISetActiveReceiptRuleSetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSetActiveReceiptRuleSetRequest): IRequest; overload;
    class function Instance: ISetActiveReceiptRuleSetRequestMarshaller; static;
  end;
  
implementation

{ TSetActiveReceiptRuleSetRequestMarshaller }

function TSetActiveReceiptRuleSetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSetActiveReceiptRuleSetRequest(AInput));
end;

function TSetActiveReceiptRuleSetRequestMarshaller.Marshall(PublicRequest: TSetActiveReceiptRuleSetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'SetActiveReceiptRuleSet');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetRuleSetName then
      Request.Parameters.Add('RuleSetName', TStringUtils.Fromstring(PublicRequest.RuleSetName));
  Result := Request;
end;

class constructor TSetActiveReceiptRuleSetRequestMarshaller.Create;
begin
  FInstance := TSetActiveReceiptRuleSetRequestMarshaller.Create;
end;

class function TSetActiveReceiptRuleSetRequestMarshaller.Instance: ISetActiveReceiptRuleSetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
