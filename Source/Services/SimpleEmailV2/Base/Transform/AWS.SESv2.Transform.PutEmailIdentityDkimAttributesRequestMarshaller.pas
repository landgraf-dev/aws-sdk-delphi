unit AWS.SESv2.Transform.PutEmailIdentityDkimAttributesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutEmailIdentityDkimAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IPutEmailIdentityDkimAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutEmailIdentityDkimAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutEmailIdentityDkimAttributesRequest>, IPutEmailIdentityDkimAttributesRequestMarshaller)
  strict private
    class var FInstance: IPutEmailIdentityDkimAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutEmailIdentityDkimAttributesRequest): IRequest; overload;
    class function Instance: IPutEmailIdentityDkimAttributesRequestMarshaller; static;
  end;
  
implementation

{ TPutEmailIdentityDkimAttributesRequestMarshaller }

function TPutEmailIdentityDkimAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutEmailIdentityDkimAttributesRequest(AInput));
end;

function TPutEmailIdentityDkimAttributesRequestMarshaller.Marshall(PublicRequest: TPutEmailIdentityDkimAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'PUT';
  if not PublicRequest.IsSetEmailIdentity then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field EmailIdentity set');
  Request.AddPathResource('{EmailIdentity}', TStringUtils.Fromstring(PublicRequest.EmailIdentity));
  Request.ResourcePath := '/v2/email/identities/{EmailIdentity}/dkim';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetSigningEnabled then
        begin
          Context.Writer.WriteName('SigningEnabled');
          Context.Writer.WriteBoolean(PublicRequest.SigningEnabled);
        end;
        Writer.WriteEndObject;
        Writer.Flush;
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
  Result := Request;
end;

class constructor TPutEmailIdentityDkimAttributesRequestMarshaller.Create;
begin
  FInstance := TPutEmailIdentityDkimAttributesRequestMarshaller.Create;
end;

class function TPutEmailIdentityDkimAttributesRequestMarshaller.Instance: IPutEmailIdentityDkimAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
