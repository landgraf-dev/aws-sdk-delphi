unit AWS.Polly.Transform.PutLexiconRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Polly.Model.PutLexiconRequest, 
  AWS.Internal.DefaultRequest;

type
  IPutLexiconRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutLexiconRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutLexiconRequest>, IPutLexiconRequestMarshaller)
  strict private
    class var FInstance: IPutLexiconRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutLexiconRequest): IRequest; overload;
    class function Instance: IPutLexiconRequestMarshaller; static;
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

class constructor TPutLexiconRequestMarshaller.Create;
begin
  FInstance := TPutLexiconRequestMarshaller.Create;
end;

class function TPutLexiconRequestMarshaller.Instance: IPutLexiconRequestMarshaller;
begin
  Result := FInstance;
end;

end.
