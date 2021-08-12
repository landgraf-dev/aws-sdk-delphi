unit AWS.SNS.Transform.ListOriginationNumbersRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.ListOriginationNumbersRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListOriginationNumbersRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListOriginationNumbersRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListOriginationNumbersRequest>, IListOriginationNumbersRequestMarshaller)
  strict private
    class var FInstance: IListOriginationNumbersRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListOriginationNumbersRequest): IRequest; overload;
    class function Instance: IListOriginationNumbersRequestMarshaller; static;
  end;
  
implementation

{ TListOriginationNumbersRequestMarshaller }

function TListOriginationNumbersRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListOriginationNumbersRequest(AInput));
end;

function TListOriginationNumbersRequestMarshaller.Marshall(PublicRequest: TListOriginationNumbersRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'ListOriginationNumbers');
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

class constructor TListOriginationNumbersRequestMarshaller.Create;
begin
  FInstance := TListOriginationNumbersRequestMarshaller.Create;
end;

class function TListOriginationNumbersRequestMarshaller.Instance: IListOriginationNumbersRequestMarshaller;
begin
  Result := FInstance;
end;

end.
