unit AWS.Polly.Transform.DeleteLexiconRequestMarshaller;

interface

uses
  AWS.Polly.Model.DeleteLexiconRequest, 
  AWS.Internal.Request, 
  AWS.Runtime.Model, 
  AWS.Transform.RequestMarshaller, 
  AWS.Internal.DefaultRequest;

type
  IDeleteLexiconRequestMarshaller = interface(, IMarshaller<IRequest, TDeleteLexiconRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  end;
  
  TDeleteLexiconRequestMarshaller = class(TInterfacedObject, IDeleteLexiconRequestMarshaller, IMarshaller<IRequest, TDeleteLexiconRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteLexiconRequest): IRequest; overload;
  end;
  
implementation

{ TDeleteLexiconRequestMarshaller }

function TDeleteLexiconRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteLexiconRequest(AInput));
end;

function TDeleteLexiconRequestMarshaller.Marshall(PublicRequest: TDeleteLexiconRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Polly');
end;

end.
