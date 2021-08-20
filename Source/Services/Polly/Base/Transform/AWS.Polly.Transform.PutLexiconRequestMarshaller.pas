unit AWS.Polly.Transform.PutLexiconRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Polly.Model.PutLexiconRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Polly.Exception, 
  AWS.Internal.StringUtils;

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
  Request.Headers['Content-Type'] := 'application/json';
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-06-10');
  Request.HttpMethod := 'PUT';
  if not PublicRequest.IsSetName then
    raise EAmazonPollyException.Create('Request object does not have required field Name set');
  Request.AddPathResource('{LexiconName}', TStringUtils.Fromstring(PublicRequest.Name));
  Request.ResourcePath := '/v1/lexicons/{LexiconName}';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetContent then
        begin
          Context.Writer.WriteName('Content');
          Context.Writer.WriteString(PublicRequest.Content);
        end;
        Writer.WriteEndObject;
        var Snippet: string := Stream.DataString;
        Request.Content := TEncoding.UTF8.GetBytes(Snippet);
      finally
        Context.Free;
      end;
    finally
      Writer.Free;
    end;
  finally
    Stream.Free;
  end;
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
