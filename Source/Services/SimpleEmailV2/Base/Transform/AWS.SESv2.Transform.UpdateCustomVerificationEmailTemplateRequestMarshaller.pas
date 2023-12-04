unit AWS.SESv2.Transform.UpdateCustomVerificationEmailTemplateRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.UpdateCustomVerificationEmailTemplateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Json.Writer;

type
  IUpdateCustomVerificationEmailTemplateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateCustomVerificationEmailTemplateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateCustomVerificationEmailTemplateRequest>, IUpdateCustomVerificationEmailTemplateRequestMarshaller)
  strict private
    class var FInstance: IUpdateCustomVerificationEmailTemplateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateCustomVerificationEmailTemplateRequest): IRequest; overload;
    class function Instance: IUpdateCustomVerificationEmailTemplateRequestMarshaller; static;
  end;
  
implementation

{ TUpdateCustomVerificationEmailTemplateRequestMarshaller }

function TUpdateCustomVerificationEmailTemplateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateCustomVerificationEmailTemplateRequest(AInput));
end;

function TUpdateCustomVerificationEmailTemplateRequestMarshaller.Marshall(PublicRequest: TUpdateCustomVerificationEmailTemplateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'PUT';
  if not PublicRequest.IsSetTemplateName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field TemplateName set');
  Request.AddPathResource('{TemplateName}', TStringUtils.Fromstring(PublicRequest.TemplateName));
  Request.ResourcePath := '/v2/email/custom-verification-email-templates/{TemplateName}';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetFailureRedirectionURL then
        begin
          Context.Writer.WriteName('FailureRedirectionURL');
          Context.Writer.WriteString(PublicRequest.FailureRedirectionURL);
        end;
        if PublicRequest.IsSetFromEmailAddress then
        begin
          Context.Writer.WriteName('FromEmailAddress');
          Context.Writer.WriteString(PublicRequest.FromEmailAddress);
        end;
        if PublicRequest.IsSetSuccessRedirectionURL then
        begin
          Context.Writer.WriteName('SuccessRedirectionURL');
          Context.Writer.WriteString(PublicRequest.SuccessRedirectionURL);
        end;
        if PublicRequest.IsSetTemplateContent then
        begin
          Context.Writer.WriteName('TemplateContent');
          Context.Writer.WriteString(PublicRequest.TemplateContent);
        end;
        if PublicRequest.IsSetTemplateSubject then
        begin
          Context.Writer.WriteName('TemplateSubject');
          Context.Writer.WriteString(PublicRequest.TemplateSubject);
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

class constructor TUpdateCustomVerificationEmailTemplateRequestMarshaller.Create;
begin
  FInstance := TUpdateCustomVerificationEmailTemplateRequestMarshaller.Create;
end;

class function TUpdateCustomVerificationEmailTemplateRequestMarshaller.Instance: IUpdateCustomVerificationEmailTemplateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
