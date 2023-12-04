unit AWS.SESv2.Transform.PutEmailIdentityFeedbackAttributesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutEmailIdentityFeedbackAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Json.Writer;

type
  IPutEmailIdentityFeedbackAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutEmailIdentityFeedbackAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutEmailIdentityFeedbackAttributesRequest>, IPutEmailIdentityFeedbackAttributesRequestMarshaller)
  strict private
    class var FInstance: IPutEmailIdentityFeedbackAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutEmailIdentityFeedbackAttributesRequest): IRequest; overload;
    class function Instance: IPutEmailIdentityFeedbackAttributesRequestMarshaller; static;
  end;
  
implementation

{ TPutEmailIdentityFeedbackAttributesRequestMarshaller }

function TPutEmailIdentityFeedbackAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutEmailIdentityFeedbackAttributesRequest(AInput));
end;

function TPutEmailIdentityFeedbackAttributesRequestMarshaller.Marshall(PublicRequest: TPutEmailIdentityFeedbackAttributesRequest): IRequest;
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
  Request.ResourcePath := '/v2/email/identities/{EmailIdentity}/feedback';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetEmailForwardingEnabled then
        begin
          Context.Writer.WriteName('EmailForwardingEnabled');
          Context.Writer.WriteBoolean(PublicRequest.EmailForwardingEnabled);
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

class constructor TPutEmailIdentityFeedbackAttributesRequestMarshaller.Create;
begin
  FInstance := TPutEmailIdentityFeedbackAttributesRequestMarshaller.Create;
end;

class function TPutEmailIdentityFeedbackAttributesRequestMarshaller.Instance: IPutEmailIdentityFeedbackAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
