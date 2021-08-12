unit AWS.SNS.Transform.ListSMSSandboxPhoneNumbersRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.ListSMSSandboxPhoneNumbersRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListSMSSandboxPhoneNumbersRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListSMSSandboxPhoneNumbersRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListSMSSandboxPhoneNumbersRequest>, IListSMSSandboxPhoneNumbersRequestMarshaller)
  strict private
    class var FInstance: IListSMSSandboxPhoneNumbersRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListSMSSandboxPhoneNumbersRequest): IRequest; overload;
    class function Instance: IListSMSSandboxPhoneNumbersRequestMarshaller; static;
  end;
  
implementation

{ TListSMSSandboxPhoneNumbersRequestMarshaller }

function TListSMSSandboxPhoneNumbersRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListSMSSandboxPhoneNumbersRequest(AInput));
end;

function TListSMSSandboxPhoneNumbersRequestMarshaller.Marshall(PublicRequest: TListSMSSandboxPhoneNumbersRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'ListSMSSandboxPhoneNumbers');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetMaxResults then
      Request.Parameters.Add('MaxResults', TStringUtils.FromInteger(PublicRequest.MaxResults));
    if PublicRequest.IsSetNextToken then
      Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  end;
  Result := Request;
end;

class constructor TListSMSSandboxPhoneNumbersRequestMarshaller.Create;
begin
  FInstance := TListSMSSandboxPhoneNumbersRequestMarshaller.Create;
end;

class function TListSMSSandboxPhoneNumbersRequestMarshaller.Instance: IListSMSSandboxPhoneNumbersRequestMarshaller;
begin
  Result := FInstance;
end;

end.
