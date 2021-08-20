unit AWS.Polly.Transform.SynthesizeSpeechRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Polly.Model.SynthesizeSpeechRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

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
  Request.Headers['Content-Type'] := 'application/json';
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-06-10');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/v1/speech';
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
