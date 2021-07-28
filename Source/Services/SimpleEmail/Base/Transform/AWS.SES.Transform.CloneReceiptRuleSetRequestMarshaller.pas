unit AWS.SES.Transform.CloneReceiptRuleSetRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.CloneReceiptRuleSetRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ICloneReceiptRuleSetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCloneReceiptRuleSetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCloneReceiptRuleSetRequest>, ICloneReceiptRuleSetRequestMarshaller)
  strict private
    class var FInstance: ICloneReceiptRuleSetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCloneReceiptRuleSetRequest): IRequest; overload;
    class function Instance: ICloneReceiptRuleSetRequestMarshaller; static;
  end;
  
implementation

{ TCloneReceiptRuleSetRequestMarshaller }

function TCloneReceiptRuleSetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCloneReceiptRuleSetRequest(AInput));
end;

function TCloneReceiptRuleSetRequestMarshaller.Marshall(PublicRequest: TCloneReceiptRuleSetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'CloneReceiptRuleSet');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetOriginalRuleSetName then
      Request.Parameters.Add('OriginalRuleSetName', TStringUtils.Fromstring(PublicRequest.OriginalRuleSetName));
    if PublicRequest.IsSetRuleSetName then
      Request.Parameters.Add('RuleSetName', TStringUtils.Fromstring(PublicRequest.RuleSetName));
  end;
  Result := Request;
end;

class constructor TCloneReceiptRuleSetRequestMarshaller.Create;
begin
  FInstance := TCloneReceiptRuleSetRequestMarshaller.Create;
end;

class function TCloneReceiptRuleSetRequestMarshaller.Instance: ICloneReceiptRuleSetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
