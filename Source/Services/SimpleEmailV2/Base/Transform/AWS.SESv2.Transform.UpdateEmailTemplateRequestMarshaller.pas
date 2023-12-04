unit AWS.SESv2.Transform.UpdateEmailTemplateRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.UpdateEmailTemplateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Json.Writer, 
  AWS.SESv2.Transform.EmailTemplateContentMarshaller;

type
  IUpdateEmailTemplateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateEmailTemplateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateEmailTemplateRequest>, IUpdateEmailTemplateRequestMarshaller)
  strict private
    class var FInstance: IUpdateEmailTemplateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateEmailTemplateRequest): IRequest; overload;
    class function Instance: IUpdateEmailTemplateRequestMarshaller; static;
  end;
  
implementation

{ TUpdateEmailTemplateRequestMarshaller }

function TUpdateEmailTemplateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateEmailTemplateRequest(AInput));
end;

function TUpdateEmailTemplateRequestMarshaller.Marshall(PublicRequest: TUpdateEmailTemplateRequest): IRequest;
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
  Request.ResourcePath := '/v2/email/templates/{TemplateName}';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetTemplateContent then
        begin
          Context.Writer.WriteName('TemplateContent');
          Context.Writer.WriteBeginObject;
          TEmailTemplateContentMarshaller.Instance.Marshall(PublicRequest.TemplateContent, Context);
          Context.Writer.WriteEndObject;
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

class constructor TUpdateEmailTemplateRequestMarshaller.Create;
begin
  FInstance := TUpdateEmailTemplateRequestMarshaller.Create;
end;

class function TUpdateEmailTemplateRequestMarshaller.Instance: IUpdateEmailTemplateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
