unit AWS.SNS.Transform.UntagResourceRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.UntagResourceRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IUntagResourceRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUntagResourceRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUntagResourceRequest>, IUntagResourceRequestMarshaller)
  strict private
    class var FInstance: IUntagResourceRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUntagResourceRequest): IRequest; overload;
    class function Instance: IUntagResourceRequestMarshaller; static;
  end;
  
implementation

{ TUntagResourceRequestMarshaller }

function TUntagResourceRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUntagResourceRequest(AInput));
end;

function TUntagResourceRequestMarshaller.Marshall(PublicRequest: TUntagResourceRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'UntagResource');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetResourceArn then
      Request.Parameters.Add('ResourceArn', TStringUtils.Fromstring(PublicRequest.ResourceArn));
    if PublicRequest.IsSetTagKeys then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.TagKeys do
      begin
        Request.Parameters.Add('TagKeys' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValue));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
  end;
  Result := Request;
end;

class constructor TUntagResourceRequestMarshaller.Create;
begin
  FInstance := TUntagResourceRequestMarshaller.Create;
end;

class function TUntagResourceRequestMarshaller.Instance: IUntagResourceRequestMarshaller;
begin
  Result := FInstance;
end;

end.
