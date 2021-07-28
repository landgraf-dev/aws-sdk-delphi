unit AWS.SES.Transform.DeleteReceiptRuleSetRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.DeleteReceiptRuleSetRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeleteReceiptRuleSetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteReceiptRuleSetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteReceiptRuleSetRequest>, IDeleteReceiptRuleSetRequestMarshaller)
  strict private
    class var FInstance: IDeleteReceiptRuleSetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteReceiptRuleSetRequest): IRequest; overload;
    class function Instance: IDeleteReceiptRuleSetRequestMarshaller; static;
  end;
  
implementation

{ TDeleteReceiptRuleSetRequestMarshaller }

function TDeleteReceiptRuleSetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteReceiptRuleSetRequest(AInput));
end;

function TDeleteReceiptRuleSetRequestMarshaller.Marshall(PublicRequest: TDeleteReceiptRuleSetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'DeleteReceiptRuleSet');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetRuleSetName then
      Request.Parameters.Add('RuleSetName', TStringUtils.Fromstring(PublicRequest.RuleSetName));
  Result := Request;
end;

class constructor TDeleteReceiptRuleSetRequestMarshaller.Create;
begin
  FInstance := TDeleteReceiptRuleSetRequestMarshaller.Create;
end;

class function TDeleteReceiptRuleSetRequestMarshaller.Instance: IDeleteReceiptRuleSetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
