unit AWS.Polly.Transform.GetLexiconRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Polly.Model.GetLexiconRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IGetLexiconRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetLexiconRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetLexiconRequest>, IGetLexiconRequestMarshaller)
  strict private
    class var FInstance: IGetLexiconRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetLexiconRequest): IRequest; overload;
    class function Instance: IGetLexiconRequestMarshaller; static;
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
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-06-10');
  Request.HttpMethod := 'GET';
  Result := Request;
end;

class constructor TGetLexiconRequestMarshaller.Create;
begin
  FInstance := TGetLexiconRequestMarshaller.Create;
end;

class function TGetLexiconRequestMarshaller.Instance: IGetLexiconRequestMarshaller;
begin
  Result := FInstance;
end;

end.
