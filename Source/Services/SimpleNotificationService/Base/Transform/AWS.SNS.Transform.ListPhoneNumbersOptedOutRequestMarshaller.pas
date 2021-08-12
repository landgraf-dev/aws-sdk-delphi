unit AWS.SNS.Transform.ListPhoneNumbersOptedOutRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.ListPhoneNumbersOptedOutRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListPhoneNumbersOptedOutRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListPhoneNumbersOptedOutRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListPhoneNumbersOptedOutRequest>, IListPhoneNumbersOptedOutRequestMarshaller)
  strict private
    class var FInstance: IListPhoneNumbersOptedOutRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListPhoneNumbersOptedOutRequest): IRequest; overload;
    class function Instance: IListPhoneNumbersOptedOutRequestMarshaller; static;
  end;
  
implementation

{ TListPhoneNumbersOptedOutRequestMarshaller }

function TListPhoneNumbersOptedOutRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListPhoneNumbersOptedOutRequest(AInput));
end;

function TListPhoneNumbersOptedOutRequestMarshaller.Marshall(PublicRequest: TListPhoneNumbersOptedOutRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'ListPhoneNumbersOptedOut');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetNextToken then
      Request.Parameters.Add('nextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  Result := Request;
end;

class constructor TListPhoneNumbersOptedOutRequestMarshaller.Create;
begin
  FInstance := TListPhoneNumbersOptedOutRequestMarshaller.Create;
end;

class function TListPhoneNumbersOptedOutRequestMarshaller.Instance: IListPhoneNumbersOptedOutRequestMarshaller;
begin
  Result := FInstance;
end;

end.
