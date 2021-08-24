unit AWS.SESv2.Transform.PutEmailIdentityMailFromAttributesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutEmailIdentityMailFromAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IPutEmailIdentityMailFromAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutEmailIdentityMailFromAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutEmailIdentityMailFromAttributesRequest>, IPutEmailIdentityMailFromAttributesRequestMarshaller)
  strict private
    class var FInstance: IPutEmailIdentityMailFromAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutEmailIdentityMailFromAttributesRequest): IRequest; overload;
    class function Instance: IPutEmailIdentityMailFromAttributesRequestMarshaller; static;
  end;
  
implementation

{ TPutEmailIdentityMailFromAttributesRequestMarshaller }

function TPutEmailIdentityMailFromAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutEmailIdentityMailFromAttributesRequest(AInput));
end;

function TPutEmailIdentityMailFromAttributesRequestMarshaller.Marshall(PublicRequest: TPutEmailIdentityMailFromAttributesRequest): IRequest;
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
  Request.ResourcePath := '/v2/email/identities/{EmailIdentity}/mail-from';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetBehaviorOnMxFailure then
        begin
          Context.Writer.WriteName('BehaviorOnMxFailure');
          Context.Writer.WriteString(PublicRequest.BehaviorOnMxFailure.Value);
        end;
        if PublicRequest.IsSetMailFromDomain then
        begin
          Context.Writer.WriteName('MailFromDomain');
          Context.Writer.WriteString(PublicRequest.MailFromDomain);
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

class constructor TPutEmailIdentityMailFromAttributesRequestMarshaller.Create;
begin
  FInstance := TPutEmailIdentityMailFromAttributesRequestMarshaller.Create;
end;

class function TPutEmailIdentityMailFromAttributesRequestMarshaller.Instance: IPutEmailIdentityMailFromAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
