unit AWS.Polly.Transform.PutLexiconRequestMarshaller;

interface

uses
  AWS.Polly.Model.PutLexiconRequest, 
  AWS.Internal.Request, 
  AWS.Runtime.Model, 
  AWS.Transform.RequestMarshaller, 
  AWS.Internal.DefaultRequest;

type
  IPutLexiconRequestMarshaller = interface(, IMarshaller<IRequest, TPutLexiconRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  end;
  
  TPutLexiconRequestMarshaller = class(TInterfacedObject, IPutLexiconRequestMarshaller, IMarshaller<IRequest, TPutLexiconRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutLexiconRequest): IRequest; overload;
  end;
  
implementation

{ TPutLexiconRequestMarshaller }

function TPutLexiconRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutLexiconRequest(AInput));
end;

function TPutLexiconRequestMarshaller.Marshall(PublicRequest: TPutLexiconRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Polly');
end;

end.
