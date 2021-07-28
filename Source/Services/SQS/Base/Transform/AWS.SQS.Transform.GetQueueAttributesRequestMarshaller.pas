unit AWS.SQS.Transform.GetQueueAttributesRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.GetQueueAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IGetQueueAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetQueueAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetQueueAttributesRequest>, IGetQueueAttributesRequestMarshaller)
  strict private
    class var FInstance: IGetQueueAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetQueueAttributesRequest): IRequest; overload;
    class function Instance: IGetQueueAttributesRequestMarshaller; static;
  end;
  
implementation

{ TGetQueueAttributesRequestMarshaller }

function TGetQueueAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetQueueAttributesRequest(AInput));
end;

function TGetQueueAttributesRequestMarshaller.Marshall(PublicRequest: TGetQueueAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'GetQueueAttributes');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetAttributeNames then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.AttributeNames do
      begin
        Request.Parameters.Add('AttributeName' + '.' + IntToStr(PublicRequestlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValue));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
    if PublicRequest.IsSetQueueUrl then
      Request.Parameters.Add('QueueUrl', TStringUtils.Fromstring(PublicRequest.QueueUrl));
  end;
  Result := Request;
end;

class constructor TGetQueueAttributesRequestMarshaller.Create;
begin
  FInstance := TGetQueueAttributesRequestMarshaller.Create;
end;

class function TGetQueueAttributesRequestMarshaller.Instance: IGetQueueAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
