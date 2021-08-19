unit AWS.Polly.Transform.SynthesizeSpeechRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Polly.Model.SynthesizeSpeechRequest, 
  AWS.Internal.DefaultRequest;

type
  ISynthesizeSpeechRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSynthesizeSpeechRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSynthesizeSpeechRequest>, ISynthesizeSpeechRequestMarshaller)
  strict private
    class var FInstance: ISynthesizeSpeechRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSynthesizeSpeechRequest): IRequest; overload;
    class function Instance: ISynthesizeSpeechRequestMarshaller; static;
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

class constructor TSynthesizeSpeechRequestMarshaller.Create;
begin
  FInstance := TSynthesizeSpeechRequestMarshaller.Create;
end;

class function TSynthesizeSpeechRequestMarshaller.Instance: ISynthesizeSpeechRequestMarshaller;
begin
  Result := FInstance;
end;

end.
