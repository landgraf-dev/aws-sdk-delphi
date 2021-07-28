unit AWS.SQS.Transform.DeleteMessageBatchRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.DeleteMessageBatchRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeleteMessageBatchRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteMessageBatchRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteMessageBatchRequest>, IDeleteMessageBatchRequestMarshaller)
  strict private
    class var FInstance: IDeleteMessageBatchRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteMessageBatchRequest): IRequest; overload;
    class function Instance: IDeleteMessageBatchRequestMarshaller; static;
  end;
  
implementation

{ TDeleteMessageBatchRequestMarshaller }

function TDeleteMessageBatchRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteMessageBatchRequest(AInput));
end;

function TDeleteMessageBatchRequestMarshaller.Marshall(PublicRequest: TDeleteMessageBatchRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'DeleteMessageBatch');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetEntries then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.Entries do
      begin
        if PublicRequestlistValue.IsSetId then
          Request.Parameters.Add('DeleteMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Id', TStringUtils.Fromstring(PublicRequestlistValue.Id));
        if PublicRequestlistValue.IsSetReceiptHandle then
          Request.Parameters.Add('DeleteMessageBatchRequestEntry' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'ReceiptHandle', TStringUtils.Fromstring(PublicRequestlistValue.ReceiptHandle));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
    if PublicRequest.IsSetQueueUrl then
      Request.Parameters.Add('QueueUrl', TStringUtils.Fromstring(PublicRequest.QueueUrl));
  end;
  Result := Request;
end;

class constructor TDeleteMessageBatchRequestMarshaller.Create;
begin
  FInstance := TDeleteMessageBatchRequestMarshaller.Create;
end;

class function TDeleteMessageBatchRequestMarshaller.Instance: IDeleteMessageBatchRequestMarshaller;
begin
  Result := FInstance;
end;

end.
