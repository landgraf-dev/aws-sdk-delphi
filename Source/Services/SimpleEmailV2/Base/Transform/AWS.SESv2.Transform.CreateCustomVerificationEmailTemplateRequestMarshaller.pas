unit AWS.SESv2.Transform.CreateCustomVerificationEmailTemplateRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.CreateCustomVerificationEmailTemplateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  ICreateCustomVerificationEmailTemplateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateCustomVerificationEmailTemplateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateCustomVerificationEmailTemplateRequest>, ICreateCustomVerificationEmailTemplateRequestMarshaller)
  strict private
    class var FInstance: ICreateCustomVerificationEmailTemplateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateCustomVerificationEmailTemplateRequest): IRequest; overload;
    class function Instance: ICreateCustomVerificationEmailTemplateRequestMarshaller; static;
  end;
  
implementation

{ TCreateCustomVerificationEmailTemplateRequestMarshaller }

function TCreateCustomVerificationEmailTemplateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateCustomVerificationEmailTemplateRequest(AInput));
end;

function TCreateCustomVerificationEmailTemplateRequestMarshaller.Marshall(PublicRequest: TCreateCustomVerificationEmailTemplateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/v2/email/custom-verification-email-templates';
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
        if PublicRequest.IsSetTemplateName then
        begin
          Context.Writer.WriteName('TemplateName');
          Context.Writer.WriteString(PublicRequest.TemplateName);
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

class constructor TCreateCustomVerificationEmailTemplateRequestMarshaller.Create;
begin
  FInstance := TCreateCustomVerificationEmailTemplateRequestMarshaller.Create;
end;

class function TCreateCustomVerificationEmailTemplateRequestMarshaller.Instance: ICreateCustomVerificationEmailTemplateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
