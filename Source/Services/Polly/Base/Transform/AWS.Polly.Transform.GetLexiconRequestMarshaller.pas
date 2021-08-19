unit AWS.Polly.Transform.GetLexiconRequestMarshaller;

interface

uses
  AWS.Polly.Model.GetLexiconRequest, 
  AWS.Internal.Request, 
  AWS.Runtime.Model, 
  AWS.Transform.RequestMarshaller, 
  AWS.Internal.DefaultRequest;

type
  IGetLexiconRequestMarshaller = interface(, IMarshaller<IRequest, TGetLexiconRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  end;
  
  TGetLexiconRequestMarshaller = class(TInterfacedObject, IGetLexiconRequestMarshaller, IMarshaller<IRequest, TGetLexiconRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetLexiconRequest): IRequest; overload;
  end;
  
implementation

{ TGetLexiconRequestMarshaller }

function TGetLexiconRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetLexiconRequest(AInput));
end;

function TGetLexiconRequestMarshaller.Marshall(PublicRequest: TGetLexiconRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Polly');
end;

end.
