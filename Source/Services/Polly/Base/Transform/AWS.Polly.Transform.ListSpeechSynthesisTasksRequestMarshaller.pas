unit AWS.Polly.Transform.ListSpeechSynthesisTasksRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Polly.Model.ListSpeechSynthesisTasksRequest, 
  AWS.Internal.DefaultRequest;

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
