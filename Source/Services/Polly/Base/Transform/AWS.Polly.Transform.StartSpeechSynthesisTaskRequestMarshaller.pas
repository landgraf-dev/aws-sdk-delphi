unit AWS.Polly.Transform.StartSpeechSynthesisTaskRequestMarshaller;

interface

uses
  AWS.Polly.Model.StartSpeechSynthesisTaskRequest, 
  AWS.Internal.Request, 
  AWS.Runtime.Model, 
  AWS.Transform.RequestMarshaller, 
  AWS.Internal.DefaultRequest;

type
  IStartSpeechSynthesisTaskRequestMarshaller = interface(, IMarshaller<IRequest, TStartSpeechSynthesisTaskRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  end;
  
  TStartSpeechSynthesisTaskRequestMarshaller = class(TInterfacedObject, IStartSpeechSynthesisTaskRequestMarshaller, IMarshaller<IRequest, TStartSpeechSynthesisTaskRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStartSpeechSynthesisTaskRequest): IRequest; overload;
  end;
  
implementation

{ TStartSpeechSynthesisTaskRequestMarshaller }

function TStartSpeechSynthesisTaskRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStartSpeechSynthesisTaskRequest(AInput));
end;

function TStartSpeechSynthesisTaskRequestMarshaller.Marshall(PublicRequest: TStartSpeechSynthesisTaskRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Polly');
end;

end.
