unit AWS.SESv2.Transform.PutConfigurationSetSendingOptionsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutConfigurationSetSendingOptionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IPutConfigurationSetSendingOptionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutConfigurationSetSendingOptionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutConfigurationSetSendingOptionsRequest>, IPutConfigurationSetSendingOptionsRequestMarshaller)
  strict private
    class var FInstance: IPutConfigurationSetSendingOptionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutConfigurationSetSendingOptionsRequest): IRequest; overload;
    class function Instance: IPutConfigurationSetSendingOptionsRequestMarshaller; static;
  end;
  
implementation

{ TPutConfigurationSetSendingOptionsRequestMarshaller }

function TPutConfigurationSetSendingOptionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutConfigurationSetSendingOptionsRequest(AInput));
end;

function TPutConfigurationSetSendingOptionsRequestMarshaller.Marshall(PublicRequest: TPutConfigurationSetSendingOptionsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'PUT';
  if not PublicRequest.IsSetConfigurationSetName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field ConfigurationSetName set');
  Request.AddPathResource('{ConfigurationSetName}', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
  Request.ResourcePath := '/v2/email/configuration-sets/{ConfigurationSetName}/sending';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetSendingEnabled then
        begin
          Context.Writer.WriteName('SendingEnabled');
          Context.Writer.WriteBoolean(PublicRequest.SendingEnabled);
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

class constructor TPutConfigurationSetSendingOptionsRequestMarshaller.Create;
begin
  FInstance := TPutConfigurationSetSendingOptionsRequestMarshaller.Create;
end;

class function TPutConfigurationSetSendingOptionsRequestMarshaller.Instance: IPutConfigurationSetSendingOptionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
