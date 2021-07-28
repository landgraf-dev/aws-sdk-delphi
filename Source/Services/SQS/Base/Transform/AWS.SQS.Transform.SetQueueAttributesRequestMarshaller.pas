unit AWS.SQS.Transform.SetQueueAttributesRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.SetQueueAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISetQueueAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSetQueueAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSetQueueAttributesRequest>, ISetQueueAttributesRequestMarshaller)
  strict private
    class var FInstance: ISetQueueAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSetQueueAttributesRequest): IRequest; overload;
    class function Instance: ISetQueueAttributesRequestMarshaller; static;
  end;
  
implementation

{ TSetQueueAttributesRequestMarshaller }

function TSetQueueAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSetQueueAttributesRequest(AInput));
end;

function TSetQueueAttributesRequestMarshaller.Marshall(PublicRequest: TSetQueueAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'SetQueueAttributes');
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
    if PublicRequest.IsSetQueueUrl then
      Request.Parameters.Add('QueueUrl', TStringUtils.Fromstring(PublicRequest.QueueUrl));
  end;
  Result := Request;
end;

class constructor TSetQueueAttributesRequestMarshaller.Create;
begin
  FInstance := TSetQueueAttributesRequestMarshaller.Create;
end;

class function TSetQueueAttributesRequestMarshaller.Instance: ISetQueueAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
