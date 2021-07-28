unit AWS.SES.Transform.ReorderReceiptRuleSetRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.ReorderReceiptRuleSetRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IReorderReceiptRuleSetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TReorderReceiptRuleSetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TReorderReceiptRuleSetRequest>, IReorderReceiptRuleSetRequestMarshaller)
  strict private
    class var FInstance: IReorderReceiptRuleSetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TReorderReceiptRuleSetRequest): IRequest; overload;
    class function Instance: IReorderReceiptRuleSetRequestMarshaller; static;
  end;
  
implementation

{ TReorderReceiptRuleSetRequestMarshaller }

function TReorderReceiptRuleSetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TReorderReceiptRuleSetRequest(AInput));
end;

function TReorderReceiptRuleSetRequestMarshaller.Marshall(PublicRequest: TReorderReceiptRuleSetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'ReorderReceiptRuleSet');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetRuleNames then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.RuleNames do
      begin
        Request.Parameters.Add('RuleNames' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValue));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
    if PublicRequest.IsSetRuleSetName then
      Request.Parameters.Add('RuleSetName', TStringUtils.Fromstring(PublicRequest.RuleSetName));
  end;
  Result := Request;
end;

class constructor TReorderReceiptRuleSetRequestMarshaller.Create;
begin
  FInstance := TReorderReceiptRuleSetRequestMarshaller.Create;
end;

class function TReorderReceiptRuleSetRequestMarshaller.Instance: IReorderReceiptRuleSetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
