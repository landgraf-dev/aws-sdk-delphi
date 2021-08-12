unit AWS.SNS.Transform.ListTopicsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.ListTopicsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListTopicsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListTopicsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListTopicsRequest>, IListTopicsRequestMarshaller)
  strict private
    class var FInstance: IListTopicsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListTopicsRequest): IRequest; overload;
    class function Instance: IListTopicsRequestMarshaller; static;
  end;
  
implementation

{ TListTopicsRequestMarshaller }

function TListTopicsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListTopicsRequest(AInput));
end;

function TListTopicsRequestMarshaller.Marshall(PublicRequest: TListTopicsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'ListTopics');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetNextToken then
      Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  Result := Request;
end;

class constructor TListTopicsRequestMarshaller.Create;
begin
  FInstance := TListTopicsRequestMarshaller.Create;
end;

class function TListTopicsRequestMarshaller.Instance: IListTopicsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
