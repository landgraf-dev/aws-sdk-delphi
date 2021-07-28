unit AWS.SQS.Transform.ChangeMessageVisibilityBatchRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.ChangeMessageVisibilityBatchRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IChangeMessageVisibilityBatchRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TChangeMessageVisibilityBatchRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TChangeMessageVisibilityBatchRequest>, IChangeMessageVisibilityBatchRequestMarshaller)
  strict private
    class var FInstance: IChangeMessageVisibilityBatchRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TChangeMessageVisibilityBatchRequest): IRequest; overload;
    class function Instance: IChangeMessageVisibilityBatchRequestMarshaller; static;
  end;
  
implementation

{ TChangeMessageVisibilityBatchRequestMarshaller }

function TChangeMessageVisibilityBatchRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TChangeMessageVisibilityBatchRequest(AInput));
end;

function TChangeMessageVisibilityBatchRequestMarshaller.Marshall(PublicRequest: TChangeMessageVisibilityBatchRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'ChangeMessageVisibilityBatch');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetEntries then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.Entries do
      begin
        if PublicRequestlistValue.IsSetId then
          Request.Parameters.Add('ChangeMessageVisibilityBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Id', TStringUtils.Fromstring(PublicRequestlistValue.Id));
        if PublicRequestlistValue.IsSetReceiptHandle then
          Request.Parameters.Add('ChangeMessageVisibilityBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'ReceiptHandle', TStringUtils.Fromstring(PublicRequestlistValue.ReceiptHandle));
        if PublicRequestlistValue.IsSetVisibilityTimeout then
          Request.Parameters.Add('ChangeMessageVisibilityBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'VisibilityTimeout', TStringUtils.FromInteger(PublicRequestlistValue.VisibilityTimeout));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
    if PublicRequest.IsSetQueueUrl then
      Request.Parameters.Add('QueueUrl', TStringUtils.Fromstring(PublicRequest.QueueUrl));
  end;
  Result := Request;
end;

class constructor TChangeMessageVisibilityBatchRequestMarshaller.Create;
begin
  FInstance := TChangeMessageVisibilityBatchRequestMarshaller.Create;
end;

class function TChangeMessageVisibilityBatchRequestMarshaller.Instance: IChangeMessageVisibilityBatchRequestMarshaller;
begin
  Result := FInstance;
end;

end.
