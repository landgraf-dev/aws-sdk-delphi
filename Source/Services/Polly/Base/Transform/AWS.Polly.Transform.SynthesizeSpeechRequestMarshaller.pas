unit AWS.Polly.Transform.SynthesizeSpeechRequestMarshaller;

interface

uses
  AWS.Polly.Model.SynthesizeSpeechRequest, 
  AWS.Internal.Request, 
  AWS.Runtime.Model, 
  AWS.Transform.RequestMarshaller, 
  AWS.Internal.DefaultRequest;

type
  ISynthesizeSpeechRequestMarshaller = interface(, IMarshaller<IRequest, TSynthesizeSpeechRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  end;
  
  TSynthesizeSpeechRequestMarshaller = class(TInterfacedObject, ISynthesizeSpeechRequestMarshaller, IMarshaller<IRequest, TSynthesizeSpeechRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSynthesizeSpeechRequest): IRequest; overload;
  end;
  
implementation

{ TSynthesizeSpeechRequestMarshaller }

function TSynthesizeSpeechRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSynthesizeSpeechRequest(AInput));
end;

function TSynthesizeSpeechRequestMarshaller.Marshall(PublicRequest: TSynthesizeSpeechRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Polly');
end;

end.
