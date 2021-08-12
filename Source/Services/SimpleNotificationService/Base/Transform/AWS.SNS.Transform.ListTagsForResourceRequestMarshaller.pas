unit AWS.SNS.Transform.ListTagsForResourceRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.ListTagsForResourceRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListTagsForResourceRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListTagsForResourceRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListTagsForResourceRequest>, IListTagsForResourceRequestMarshaller)
  strict private
    class var FInstance: IListTagsForResourceRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListTagsForResourceRequest): IRequest; overload;
    class function Instance: IListTagsForResourceRequestMarshaller; static;
  end;
  
implementation

{ TListTagsForResourceRequestMarshaller }

function TListTagsForResourceRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListTagsForResourceRequest(AInput));
end;

function TListTagsForResourceRequestMarshaller.Marshall(PublicRequest: TListTagsForResourceRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'ListTagsForResource');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetResourceArn then
      Request.Parameters.Add('ResourceArn', TStringUtils.Fromstring(PublicRequest.ResourceArn));
  Result := Request;
end;

class constructor TListTagsForResourceRequestMarshaller.Create;
begin
  FInstance := TListTagsForResourceRequestMarshaller.Create;
end;

class function TListTagsForResourceRequestMarshaller.Instance: IListTagsForResourceRequestMarshaller;
begin
  Result := FInstance;
end;

end.
