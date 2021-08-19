unit AWS.Polly.Transform.ListLexiconsRequestMarshaller;

interface

uses
  AWS.Polly.Model.ListLexiconsRequest, 
  AWS.Internal.Request, 
  AWS.Runtime.Model, 
  AWS.Transform.RequestMarshaller, 
  AWS.Internal.DefaultRequest;

type
  IListLexiconsRequestMarshaller = interface(, IMarshaller<IRequest, TListLexiconsRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  end;
  
  TListLexiconsRequestMarshaller = class(TInterfacedObject, IListLexiconsRequestMarshaller, IMarshaller<IRequest, TListLexiconsRequest>, IMarshaller<IRequest, TAmazonWebServiceRequest>)
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListLexiconsRequest): IRequest; overload;
  end;
  
implementation

{ TListLexiconsRequestMarshaller }

function TListLexiconsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListLexiconsRequest(AInput));
end;

function TListLexiconsRequestMarshaller.Marshall(PublicRequest: TListLexiconsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Polly');
end;

end.
