unit AWS.SES.Transform.ListReceiptRuleSetsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.ListReceiptRuleSetsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListReceiptRuleSetsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListReceiptRuleSetsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListReceiptRuleSetsRequest>, IListReceiptRuleSetsRequestMarshaller)
  strict private
    class var FInstance: IListReceiptRuleSetsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListReceiptRuleSetsRequest): IRequest; overload;
    class function Instance: IListReceiptRuleSetsRequestMarshaller; static;
  end;
  
implementation

{ TListReceiptRuleSetsRequestMarshaller }

function TListReceiptRuleSetsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListReceiptRuleSetsRequest(AInput));
end;

function TListReceiptRuleSetsRequestMarshaller.Marshall(PublicRequest: TListReceiptRuleSetsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'ListReceiptRuleSets');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetNextToken then
      Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  Result := Request;
end;

class constructor TListReceiptRuleSetsRequestMarshaller.Create;
begin
  FInstance := TListReceiptRuleSetsRequestMarshaller.Create;
end;

class function TListReceiptRuleSetsRequestMarshaller.Instance: IListReceiptRuleSetsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
