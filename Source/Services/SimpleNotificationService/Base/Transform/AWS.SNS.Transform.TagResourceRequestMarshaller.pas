unit AWS.SNS.Transform.TagResourceRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.TagResourceRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ITagResourceRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TTagResourceRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TTagResourceRequest>, ITagResourceRequestMarshaller)
  strict private
    class var FInstance: ITagResourceRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TTagResourceRequest): IRequest; overload;
    class function Instance: ITagResourceRequestMarshaller; static;
  end;
  
implementation

{ TTagResourceRequestMarshaller }

function TTagResourceRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TTagResourceRequest(AInput));
end;

function TTagResourceRequestMarshaller.Marshall(PublicRequest: TTagResourceRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'TagResource');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetResourceArn then
      Request.Parameters.Add('ResourceArn', TStringUtils.Fromstring(PublicRequest.ResourceArn));
    if PublicRequest.IsSetTags then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.Tags do
      begin
        if PublicRequestlistValue.IsSetKey then
          Request.Parameters.Add('Tags' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Key', TStringUtils.Fromstring(PublicRequestlistValue.Key));
        if PublicRequestlistValue.IsSetValue then
          Request.Parameters.Add('Tags' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Value', TStringUtils.Fromstring(PublicRequestlistValue.Value));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
  end;
  Result := Request;
end;

class constructor TTagResourceRequestMarshaller.Create;
begin
  FInstance := TTagResourceRequestMarshaller.Create;
end;

class function TTagResourceRequestMarshaller.Instance: ITagResourceRequestMarshaller;
begin
  Result := FInstance;
end;

end.
