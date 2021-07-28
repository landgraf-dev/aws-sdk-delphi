unit AWS.SQS.Transform.UntagQueueRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.UntagQueueRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IUntagQueueRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUntagQueueRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUntagQueueRequest>, IUntagQueueRequestMarshaller)
  strict private
    class var FInstance: IUntagQueueRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUntagQueueRequest): IRequest; overload;
    class function Instance: IUntagQueueRequestMarshaller; static;
  end;
  
implementation

{ TUntagQueueRequestMarshaller }

function TUntagQueueRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUntagQueueRequest(AInput));
end;

function TUntagQueueRequestMarshaller.Marshall(PublicRequest: TUntagQueueRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'UntagQueue');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetQueueUrl then
      Request.Parameters.Add('QueueUrl', TStringUtils.Fromstring(PublicRequest.QueueUrl));
    if PublicRequest.IsSetTagKeys then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.TagKeys do
      begin
        Request.Parameters.Add('TagKey' + '.' + IntToStr(PublicRequestlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValue));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
  end;
  Result := Request;
end;

class constructor TUntagQueueRequestMarshaller.Create;
begin
  FInstance := TUntagQueueRequestMarshaller.Create;
end;

class function TUntagQueueRequestMarshaller.Instance: IUntagQueueRequestMarshaller;
begin
  Result := FInstance;
end;

end.
