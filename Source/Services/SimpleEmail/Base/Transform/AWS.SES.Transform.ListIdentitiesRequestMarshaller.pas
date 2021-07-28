unit AWS.SES.Transform.ListIdentitiesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.ListIdentitiesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListIdentitiesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListIdentitiesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListIdentitiesRequest>, IListIdentitiesRequestMarshaller)
  strict private
    class var FInstance: IListIdentitiesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListIdentitiesRequest): IRequest; overload;
    class function Instance: IListIdentitiesRequestMarshaller; static;
  end;
  
implementation

{ TListIdentitiesRequestMarshaller }

function TListIdentitiesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListIdentitiesRequest(AInput));
end;

function TListIdentitiesRequestMarshaller.Marshall(PublicRequest: TListIdentitiesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'ListIdentities');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetIdentityType then
      Request.Parameters.Add('IdentityType', PublicRequest.IdentityType.Value);
    if PublicRequest.IsSetMaxItems then
      Request.Parameters.Add('MaxItems', TStringUtils.FromInteger(PublicRequest.MaxItems));
    if PublicRequest.IsSetNextToken then
      Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  end;
  Result := Request;
end;

class constructor TListIdentitiesRequestMarshaller.Create;
begin
  FInstance := TListIdentitiesRequestMarshaller.Create;
end;

class function TListIdentitiesRequestMarshaller.Instance: IListIdentitiesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
