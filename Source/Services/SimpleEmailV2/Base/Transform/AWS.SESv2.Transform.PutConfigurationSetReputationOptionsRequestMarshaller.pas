unit AWS.SESv2.Transform.PutConfigurationSetReputationOptionsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutConfigurationSetReputationOptionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IPutConfigurationSetReputationOptionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutConfigurationSetReputationOptionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutConfigurationSetReputationOptionsRequest>, IPutConfigurationSetReputationOptionsRequestMarshaller)
  strict private
    class var FInstance: IPutConfigurationSetReputationOptionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutConfigurationSetReputationOptionsRequest): IRequest; overload;
    class function Instance: IPutConfigurationSetReputationOptionsRequestMarshaller; static;
  end;
  
implementation

{ TPutConfigurationSetReputationOptionsRequestMarshaller }

function TPutConfigurationSetReputationOptionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutConfigurationSetReputationOptionsRequest(AInput));
end;

function TPutConfigurationSetReputationOptionsRequestMarshaller.Marshall(PublicRequest: TPutConfigurationSetReputationOptionsRequest): IRequest;
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
  Request.ResourcePath := '/v2/email/configuration-sets/{ConfigurationSetName}/reputation-options';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetReputationMetricsEnabled then
        begin
          Context.Writer.WriteName('ReputationMetricsEnabled');
          Context.Writer.WriteBoolean(PublicRequest.ReputationMetricsEnabled);
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

class constructor TPutConfigurationSetReputationOptionsRequestMarshaller.Create;
begin
  FInstance := TPutConfigurationSetReputationOptionsRequestMarshaller.Create;
end;

class function TPutConfigurationSetReputationOptionsRequestMarshaller.Instance: IPutConfigurationSetReputationOptionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
