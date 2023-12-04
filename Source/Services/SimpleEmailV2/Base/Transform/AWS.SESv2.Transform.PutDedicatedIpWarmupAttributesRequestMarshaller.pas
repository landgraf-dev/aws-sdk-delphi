unit AWS.SESv2.Transform.PutDedicatedIpWarmupAttributesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutDedicatedIpWarmupAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Json.Writer;

type
  IPutDedicatedIpWarmupAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutDedicatedIpWarmupAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutDedicatedIpWarmupAttributesRequest>, IPutDedicatedIpWarmupAttributesRequestMarshaller)
  strict private
    class var FInstance: IPutDedicatedIpWarmupAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutDedicatedIpWarmupAttributesRequest): IRequest; overload;
    class function Instance: IPutDedicatedIpWarmupAttributesRequestMarshaller; static;
  end;
  
implementation

{ TPutDedicatedIpWarmupAttributesRequestMarshaller }

function TPutDedicatedIpWarmupAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutDedicatedIpWarmupAttributesRequest(AInput));
end;

function TPutDedicatedIpWarmupAttributesRequestMarshaller.Marshall(PublicRequest: TPutDedicatedIpWarmupAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'PUT';
  if not PublicRequest.IsSetIp then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field Ip set');
  Request.AddPathResource('{IP}', TStringUtils.Fromstring(PublicRequest.Ip));
  Request.ResourcePath := '/v2/email/dedicated-ips/{IP}/warmup';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetWarmupPercentage then
        begin
          Context.Writer.WriteName('WarmupPercentage');
          Context.Writer.WriteInteger(PublicRequest.WarmupPercentage);
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

class constructor TPutDedicatedIpWarmupAttributesRequestMarshaller.Create;
begin
  FInstance := TPutDedicatedIpWarmupAttributesRequestMarshaller.Create;
end;

class function TPutDedicatedIpWarmupAttributesRequestMarshaller.Instance: IPutDedicatedIpWarmupAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
