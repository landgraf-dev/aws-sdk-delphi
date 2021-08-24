unit AWS.SESv2.Transform.PutEmailIdentityDkimSigningAttributesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutEmailIdentityDkimSigningAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.SESv2.Transform.DkimSigningAttributesMarshaller;

type
  IPutEmailIdentityDkimSigningAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutEmailIdentityDkimSigningAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutEmailIdentityDkimSigningAttributesRequest>, IPutEmailIdentityDkimSigningAttributesRequestMarshaller)
  strict private
    class var FInstance: IPutEmailIdentityDkimSigningAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutEmailIdentityDkimSigningAttributesRequest): IRequest; overload;
    class function Instance: IPutEmailIdentityDkimSigningAttributesRequestMarshaller; static;
  end;
  
implementation

{ TPutEmailIdentityDkimSigningAttributesRequestMarshaller }

function TPutEmailIdentityDkimSigningAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutEmailIdentityDkimSigningAttributesRequest(AInput));
end;

function TPutEmailIdentityDkimSigningAttributesRequestMarshaller.Marshall(PublicRequest: TPutEmailIdentityDkimSigningAttributesRequest): IRequest;
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
  Request.ResourcePath := '/v1/email/identities/{EmailIdentity}/dkim/signing';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetSigningAttributes then
        begin
          Context.Writer.WriteName('SigningAttributes');
          Context.Writer.WriteBeginObject;
          TDkimSigningAttributesMarshaller.Instance.Marshall(PublicRequest.SigningAttributes, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetSigningAttributesOrigin then
        begin
          Context.Writer.WriteName('SigningAttributesOrigin');
          Context.Writer.WriteString(PublicRequest.SigningAttributesOrigin.Value);
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

class constructor TPutEmailIdentityDkimSigningAttributesRequestMarshaller.Create;
begin
  FInstance := TPutEmailIdentityDkimSigningAttributesRequestMarshaller.Create;
end;

class function TPutEmailIdentityDkimSigningAttributesRequestMarshaller.Instance: IPutEmailIdentityDkimSigningAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
