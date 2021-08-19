unit AWS.Polly.Transform.GetSpeechSynthesisTaskRequestMarshaller;

interface

uses
  AWS.Polly.Model.GetSpeechSynthesisTaskRequest, 
  AWS.Internal.Request, 
  AWS.Runtime.Model, 
  AWS.Transform.RequestMarshaller, 
  AWS.Internal.DefaultRequest;

type
  IGetSpeechSynthesisTaskRequestMarshaller = interface(, IMarshaller<IRequest, TGetSpeechSynthesisTaskRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  end;
  
  TGetSpeechSynthesisTaskRequestMarshaller = class(TInterfacedObject, IGetSpeechSynthesisTaskRequestMarshaller, IMarshaller<IRequest, TGetSpeechSynthesisTaskRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetSpeechSynthesisTaskRequest): IRequest; overload;
  end;
  
implementation

{ TGetSpeechSynthesisTaskRequestMarshaller }

function TGetSpeechSynthesisTaskRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetSpeechSynthesisTaskRequest(AInput));
end;

function TGetSpeechSynthesisTaskRequestMarshaller.Marshall(PublicRequest: TGetSpeechSynthesisTaskRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Polly');
end;

end.
