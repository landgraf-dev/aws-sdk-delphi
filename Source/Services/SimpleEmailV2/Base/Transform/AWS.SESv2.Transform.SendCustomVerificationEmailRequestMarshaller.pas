unit AWS.SESv2.Transform.SendCustomVerificationEmailRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.SendCustomVerificationEmailRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  ISendCustomVerificationEmailRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSendCustomVerificationEmailRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSendCustomVerificationEmailRequest>, ISendCustomVerificationEmailRequestMarshaller)
  strict private
    class var FInstance: ISendCustomVerificationEmailRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSendCustomVerificationEmailRequest): IRequest; overload;
    class function Instance: ISendCustomVerificationEmailRequestMarshaller; static;
  end;
  
implementation

{ TSendCustomVerificationEmailRequestMarshaller }

function TSendCustomVerificationEmailRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSendCustomVerificationEmailRequest(AInput));
end;

function TSendCustomVerificationEmailRequestMarshaller.Marshall(PublicRequest: TSendCustomVerificationEmailRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/v2/email/outbound-custom-verification-emails';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetConfigurationSetName then
        begin
          Context.Writer.WriteName('ConfigurationSetName');
          Context.Writer.WriteString(PublicRequest.ConfigurationSetName);
        end;
        if PublicRequest.IsSetEmailAddress then
        begin
          Context.Writer.WriteName('EmailAddress');
          Context.Writer.WriteString(PublicRequest.EmailAddress);
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

class constructor TSendCustomVerificationEmailRequestMarshaller.Create;
begin
  FInstance := TSendCustomVerificationEmailRequestMarshaller.Create;
end;

class function TSendCustomVerificationEmailRequestMarshaller.Instance: ISendCustomVerificationEmailRequestMarshaller;
begin
  Result := FInstance;
end;

end.
