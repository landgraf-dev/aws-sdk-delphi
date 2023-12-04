unit AWS.SESv2.Transform.UpdateEmailIdentityPolicyRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.UpdateEmailIdentityPolicyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Json.Writer;

type
  IUpdateEmailIdentityPolicyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateEmailIdentityPolicyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateEmailIdentityPolicyRequest>, IUpdateEmailIdentityPolicyRequestMarshaller)
  strict private
    class var FInstance: IUpdateEmailIdentityPolicyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateEmailIdentityPolicyRequest): IRequest; overload;
    class function Instance: IUpdateEmailIdentityPolicyRequestMarshaller; static;
  end;
  
implementation

{ TUpdateEmailIdentityPolicyRequestMarshaller }

function TUpdateEmailIdentityPolicyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateEmailIdentityPolicyRequest(AInput));
end;

function TUpdateEmailIdentityPolicyRequestMarshaller.Marshall(PublicRequest: TUpdateEmailIdentityPolicyRequest): IRequest;
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
  if not PublicRequest.IsSetPolicyName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field PolicyName set');
  Request.AddPathResource('{PolicyName}', TStringUtils.Fromstring(PublicRequest.PolicyName));
  Request.ResourcePath := '/v2/email/identities/{EmailIdentity}/policies/{PolicyName}';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetPolicy then
        begin
          Context.Writer.WriteName('Policy');
          Context.Writer.WriteString(PublicRequest.Policy);
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

class constructor TUpdateEmailIdentityPolicyRequestMarshaller.Create;
begin
  FInstance := TUpdateEmailIdentityPolicyRequestMarshaller.Create;
end;

class function TUpdateEmailIdentityPolicyRequestMarshaller.Instance: IUpdateEmailIdentityPolicyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
