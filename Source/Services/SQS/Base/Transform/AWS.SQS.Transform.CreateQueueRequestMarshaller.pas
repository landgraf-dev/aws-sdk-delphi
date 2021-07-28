unit AWS.SQS.Transform.CreateQueueRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.CreateQueueRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ICreateQueueRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateQueueRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateQueueRequest>, ICreateQueueRequestMarshaller)
  strict private
    class var FInstance: ICreateQueueRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateQueueRequest): IRequest; overload;
    class function Instance: ICreateQueueRequestMarshaller; static;
  end;
  
implementation

{ TCreateQueueRequestMarshaller }

function TCreateQueueRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateQueueRequest(AInput));
end;

function TCreateQueueRequestMarshaller.Marshall(PublicRequest: TCreateQueueRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'CreateQueue');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetAttributes then
    begin
      var mapIndex: Integer := 1;
      for var key in PublicRequest.Attributes.Keys do
      begin
        var value: string;
        var hasValue: Boolean;
        hasValue := PublicRequest.Attributes.TryGetValue(key, value);
        Request.Parameters.Add('Attribute' + '.' + IntToStr(mapIndex) + '.' + 'Name', TStringUtils.Fromstring(key));
        if hasValue then
          Request.Parameters.Add('Attribute' + '.' + IntToStr(mapIndex) + '.' + 'Value', TStringUtils.Fromstring(value));
        Inc(mapIndex);
      end;
    end;
    if PublicRequest.IsSetQueueName then
      Request.Parameters.Add('QueueName', TStringUtils.Fromstring(PublicRequest.QueueName));
    if PublicRequest.IsSetTags then
    begin
      var mapIndex: Integer := 1;
      for var key in PublicRequest.Tags.Keys do
      begin
        var value: string;
        var hasValue: Boolean;
        hasValue := PublicRequest.Tags.TryGetValue(key, value);
        Request.Parameters.Add('Tag' + '.' + IntToStr(mapIndex) + '.' + 'Key', TStringUtils.Fromstring(key));
        if hasValue then
          Request.Parameters.Add('Tag' + '.' + IntToStr(mapIndex) + '.' + 'Value', TStringUtils.Fromstring(value));
        Inc(mapIndex);
      end;
    end;
  end;
  Result := Request;
end;

class constructor TCreateQueueRequestMarshaller.Create;
begin
  FInstance := TCreateQueueRequestMarshaller.Create;
end;

class function TCreateQueueRequestMarshaller.Instance: ICreateQueueRequestMarshaller;
begin
  Result := FInstance;
end;

end.
