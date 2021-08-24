unit AWS.SESv2.Transform.CreateEmailTemplateRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.CreateEmailTemplateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Transform.EmailTemplateContentMarshaller;

type
  ICreateEmailTemplateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateEmailTemplateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateEmailTemplateRequest>, ICreateEmailTemplateRequestMarshaller)
  strict private
    class var FInstance: ICreateEmailTemplateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateEmailTemplateRequest): IRequest; overload;
    class function Instance: ICreateEmailTemplateRequestMarshaller; static;
  end;
  
implementation

{ TCreateEmailTemplateRequestMarshaller }

function TCreateEmailTemplateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateEmailTemplateRequest(AInput));
end;

function TCreateEmailTemplateRequestMarshaller.Marshall(PublicRequest: TCreateEmailTemplateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/v2/email/templates';
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
        if PublicRequest.IsSetTemplateName then
        begin
          Context.Writer.WriteName('TemplateName');
          Context.Writer.WriteString(PublicRequest.TemplateName);
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

class constructor TCreateEmailTemplateRequestMarshaller.Create;
begin
  FInstance := TCreateEmailTemplateRequestMarshaller.Create;
end;

class function TCreateEmailTemplateRequestMarshaller.Instance: ICreateEmailTemplateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
