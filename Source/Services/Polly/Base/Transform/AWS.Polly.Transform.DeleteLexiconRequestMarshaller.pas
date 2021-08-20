unit AWS.Polly.Transform.DeleteLexiconRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Polly.Model.DeleteLexiconRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Polly.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteLexiconRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteLexiconRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteLexiconRequest>, IDeleteLexiconRequestMarshaller)
  strict private
    class var FInstance: IDeleteLexiconRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteLexiconRequest): IRequest; overload;
    class function Instance: IDeleteLexiconRequestMarshaller; static;
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
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-06-10');
  Request.HttpMethod := 'DELETE';
  if not PublicRequest.IsSetName then
    raise EAmazonPollyException.Create('Request object does not have required field Name set');
  Request.AddPathResource('{LexiconName}', TStringUtils.Fromstring(PublicRequest.Name));
  Request.ResourcePath := '/v1/lexicons/{LexiconName}';
  Result := Request;
end;

class constructor TDeleteLexiconRequestMarshaller.Create;
begin
  FInstance := TDeleteLexiconRequestMarshaller.Create;
end;

class function TDeleteLexiconRequestMarshaller.Instance: IDeleteLexiconRequestMarshaller;
begin
  Result := FInstance;
end;

end.
