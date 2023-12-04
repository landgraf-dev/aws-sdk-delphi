unit AWS.SESv2.Transform.TestRenderEmailTemplateRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.TestRenderEmailTemplateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Json.Writer;

type
  ITestRenderEmailTemplateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TTestRenderEmailTemplateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TTestRenderEmailTemplateRequest>, ITestRenderEmailTemplateRequestMarshaller)
  strict private
    class var FInstance: ITestRenderEmailTemplateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TTestRenderEmailTemplateRequest): IRequest; overload;
    class function Instance: ITestRenderEmailTemplateRequestMarshaller; static;
  end;
  
implementation

{ TTestRenderEmailTemplateRequestMarshaller }

function TTestRenderEmailTemplateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TTestRenderEmailTemplateRequest(AInput));
end;

function TTestRenderEmailTemplateRequestMarshaller.Marshall(PublicRequest: TTestRenderEmailTemplateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'POST';
  if not PublicRequest.IsSetTemplateName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field TemplateName set');
  Request.AddPathResource('{TemplateName}', TStringUtils.Fromstring(PublicRequest.TemplateName));
  Request.ResourcePath := '/v2/email/templates/{TemplateName}/render';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetTemplateData then
        begin
          Context.Writer.WriteName('TemplateData');
          Context.Writer.WriteString(PublicRequest.TemplateData);
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

class constructor TTestRenderEmailTemplateRequestMarshaller.Create;
begin
  FInstance := TTestRenderEmailTemplateRequestMarshaller.Create;
end;

class function TTestRenderEmailTemplateRequestMarshaller.Instance: ITestRenderEmailTemplateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
