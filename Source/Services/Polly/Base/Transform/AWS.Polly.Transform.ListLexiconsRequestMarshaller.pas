unit AWS.Polly.Transform.ListLexiconsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Polly.Model.ListLexiconsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Internal.StringUtils;

type
  IListLexiconsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListLexiconsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListLexiconsRequest>, IListLexiconsRequestMarshaller)
  strict private
    class var FInstance: IListLexiconsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListLexiconsRequest): IRequest; overload;
    class function Instance: IListLexiconsRequestMarshaller; static;
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
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-06-10');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetNextToken then
    Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  Request.ResourcePath := '/v1/lexicons';
  Request.UseQueryString := True;
end;

class constructor TListLexiconsRequestMarshaller.Create;
begin
  FInstance := TListLexiconsRequestMarshaller.Create;
end;

class function TListLexiconsRequestMarshaller.Instance: IListLexiconsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
