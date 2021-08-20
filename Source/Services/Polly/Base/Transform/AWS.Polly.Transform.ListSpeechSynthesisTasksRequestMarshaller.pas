unit AWS.Polly.Transform.ListSpeechSynthesisTasksRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Polly.Model.ListSpeechSynthesisTasksRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Internal.StringUtils;

type
  IListSpeechSynthesisTasksRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListSpeechSynthesisTasksRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListSpeechSynthesisTasksRequest>, IListSpeechSynthesisTasksRequestMarshaller)
  strict private
    class var FInstance: IListSpeechSynthesisTasksRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListSpeechSynthesisTasksRequest): IRequest; overload;
    class function Instance: IListSpeechSynthesisTasksRequestMarshaller; static;
  end;
  
implementation

{ TListSpeechSynthesisTasksRequestMarshaller }

function TListSpeechSynthesisTasksRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListSpeechSynthesisTasksRequest(AInput));
end;

function TListSpeechSynthesisTasksRequestMarshaller.Marshall(PublicRequest: TListSpeechSynthesisTasksRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Polly');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-06-10');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetMaxResults then
    Request.Parameters.Add('MaxResults', TStringUtils.FromInteger(PublicRequest.MaxResults));
  if PublicRequest.IsSetNextToken then
    Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  if PublicRequest.IsSetStatus then
    Request.Parameters.Add('Status', TStringUtils.Fromstring(PublicRequest.Status));
  Request.ResourcePath := '/v1/synthesisTasks';
  Result := Request;
end;

class constructor TListSpeechSynthesisTasksRequestMarshaller.Create;
begin
  FInstance := TListSpeechSynthesisTasksRequestMarshaller.Create;
end;

class function TListSpeechSynthesisTasksRequestMarshaller.Instance: IListSpeechSynthesisTasksRequestMarshaller;
begin
  Result := FInstance;
end;

end.
