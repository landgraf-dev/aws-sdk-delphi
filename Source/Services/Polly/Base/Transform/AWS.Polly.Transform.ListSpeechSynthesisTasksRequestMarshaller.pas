unit AWS.Polly.Transform.ListSpeechSynthesisTasksRequestMarshaller;

interface

uses
  AWS.Polly.Model.ListSpeechSynthesisTasksRequest, 
  AWS.Internal.Request, 
  AWS.Runtime.Model, 
  AWS.Transform.RequestMarshaller, 
  AWS.Internal.DefaultRequest;

type
  IListSpeechSynthesisTasksRequestMarshaller = interface(, IMarshaller<IRequest, TListSpeechSynthesisTasksRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  end;
  
  TListSpeechSynthesisTasksRequestMarshaller = class(TInterfacedObject, IListSpeechSynthesisTasksRequestMarshaller, IMarshaller<IRequest, TListSpeechSynthesisTasksRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListSpeechSynthesisTasksRequest): IRequest; overload;
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
end;

end.
