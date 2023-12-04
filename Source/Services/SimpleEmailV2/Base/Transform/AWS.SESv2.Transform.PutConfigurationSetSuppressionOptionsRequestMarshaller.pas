unit AWS.SESv2.Transform.PutConfigurationSetSuppressionOptionsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutConfigurationSetSuppressionOptionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Json.Writer;

type
  IPutConfigurationSetSuppressionOptionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutConfigurationSetSuppressionOptionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutConfigurationSetSuppressionOptionsRequest>, IPutConfigurationSetSuppressionOptionsRequestMarshaller)
  strict private
    class var FInstance: IPutConfigurationSetSuppressionOptionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutConfigurationSetSuppressionOptionsRequest): IRequest; overload;
    class function Instance: IPutConfigurationSetSuppressionOptionsRequestMarshaller; static;
  end;
  
implementation

{ TPutConfigurationSetSuppressionOptionsRequestMarshaller }

function TPutConfigurationSetSuppressionOptionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutConfigurationSetSuppressionOptionsRequest(AInput));
end;

function TPutConfigurationSetSuppressionOptionsRequestMarshaller.Marshall(PublicRequest: TPutConfigurationSetSuppressionOptionsRequest): IRequest;
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
  Request.ResourcePath := '/v2/email/configuration-sets/{ConfigurationSetName}/suppression-options';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetSuppressedReasons then
        begin
          Context.Writer.WriteName('SuppressedReasons');
          Context.Writer.WriteBeginArray;
          for var PublicRequestSuppressedReasonsListValue in PublicRequest.SuppressedReasons do
            Context.Writer.WriteString(PublicRequestSuppressedReasonsListValue);
          Context.Writer.WriteEndArray;
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

class constructor TPutConfigurationSetSuppressionOptionsRequestMarshaller.Create;
begin
  FInstance := TPutConfigurationSetSuppressionOptionsRequestMarshaller.Create;
end;

class function TPutConfigurationSetSuppressionOptionsRequestMarshaller.Instance: IPutConfigurationSetSuppressionOptionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
