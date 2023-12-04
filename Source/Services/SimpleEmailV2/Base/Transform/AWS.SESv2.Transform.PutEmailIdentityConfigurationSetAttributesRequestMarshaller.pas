unit AWS.SESv2.Transform.PutEmailIdentityConfigurationSetAttributesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutEmailIdentityConfigurationSetAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Json.Writer;

type
  IPutEmailIdentityConfigurationSetAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutEmailIdentityConfigurationSetAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutEmailIdentityConfigurationSetAttributesRequest>, IPutEmailIdentityConfigurationSetAttributesRequestMarshaller)
  strict private
    class var FInstance: IPutEmailIdentityConfigurationSetAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutEmailIdentityConfigurationSetAttributesRequest): IRequest; overload;
    class function Instance: IPutEmailIdentityConfigurationSetAttributesRequestMarshaller; static;
  end;
  
implementation

{ TPutEmailIdentityConfigurationSetAttributesRequestMarshaller }

function TPutEmailIdentityConfigurationSetAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutEmailIdentityConfigurationSetAttributesRequest(AInput));
end;

function TPutEmailIdentityConfigurationSetAttributesRequestMarshaller.Marshall(PublicRequest: TPutEmailIdentityConfigurationSetAttributesRequest): IRequest;
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
  Request.ResourcePath := '/v2/email/identities/{EmailIdentity}/configuration-set';
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

class constructor TPutEmailIdentityConfigurationSetAttributesRequestMarshaller.Create;
begin
  FInstance := TPutEmailIdentityConfigurationSetAttributesRequestMarshaller.Create;
end;

class function TPutEmailIdentityConfigurationSetAttributesRequestMarshaller.Instance: IPutEmailIdentityConfigurationSetAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
