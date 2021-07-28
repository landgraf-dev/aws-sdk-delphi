unit AWS.SQS.Transform.TagQueueRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.TagQueueRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ITagQueueRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TTagQueueRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TTagQueueRequest>, ITagQueueRequestMarshaller)
  strict private
    class var FInstance: ITagQueueRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TTagQueueRequest): IRequest; overload;
    class function Instance: ITagQueueRequestMarshaller; static;
  end;
  
implementation

{ TTagQueueRequestMarshaller }

function TTagQueueRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TTagQueueRequest(AInput));
end;

function TTagQueueRequestMarshaller.Marshall(PublicRequest: TTagQueueRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'TagQueue');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetQueueUrl then
      Request.Parameters.Add('QueueUrl', TStringUtils.Fromstring(PublicRequest.QueueUrl));
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

class constructor TTagQueueRequestMarshaller.Create;
begin
  FInstance := TTagQueueRequestMarshaller.Create;
end;

class function TTagQueueRequestMarshaller.Instance: ITagQueueRequestMarshaller;
begin
  Result := FInstance;
end;

end.
