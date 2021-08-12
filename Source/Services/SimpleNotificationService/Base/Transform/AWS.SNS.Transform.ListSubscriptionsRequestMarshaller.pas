unit AWS.SNS.Transform.ListSubscriptionsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.ListSubscriptionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListSubscriptionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListSubscriptionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListSubscriptionsRequest>, IListSubscriptionsRequestMarshaller)
  strict private
    class var FInstance: IListSubscriptionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListSubscriptionsRequest): IRequest; overload;
    class function Instance: IListSubscriptionsRequestMarshaller; static;
  end;
  
implementation

{ TListSubscriptionsRequestMarshaller }

function TListSubscriptionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListSubscriptionsRequest(AInput));
end;

function TListSubscriptionsRequestMarshaller.Marshall(PublicRequest: TListSubscriptionsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'ListSubscriptions');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetNextToken then
      Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  Result := Request;
end;

class constructor TListSubscriptionsRequestMarshaller.Create;
begin
  FInstance := TListSubscriptionsRequestMarshaller.Create;
end;

class function TListSubscriptionsRequestMarshaller.Instance: IListSubscriptionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
