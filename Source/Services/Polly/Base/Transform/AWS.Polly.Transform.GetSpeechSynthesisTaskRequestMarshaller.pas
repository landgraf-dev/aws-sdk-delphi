unit AWS.Polly.Transform.GetSpeechSynthesisTaskRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Polly.Model.GetSpeechSynthesisTaskRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IGetSpeechSynthesisTaskRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetSpeechSynthesisTaskRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetSpeechSynthesisTaskRequest>, IGetSpeechSynthesisTaskRequestMarshaller)
  strict private
    class var FInstance: IGetSpeechSynthesisTaskRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetSpeechSynthesisTaskRequest): IRequest; overload;
    class function Instance: IGetSpeechSynthesisTaskRequestMarshaller; static;
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
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-06-10');
  Request.HttpMethod := 'GET';
  Result := Request;
end;

class constructor TGetSpeechSynthesisTaskRequestMarshaller.Create;
begin
  FInstance := TGetSpeechSynthesisTaskRequestMarshaller.Create;
end;

class function TGetSpeechSynthesisTaskRequestMarshaller.Instance: IGetSpeechSynthesisTaskRequestMarshaller;
begin
  Result := FInstance;
end;

end.
