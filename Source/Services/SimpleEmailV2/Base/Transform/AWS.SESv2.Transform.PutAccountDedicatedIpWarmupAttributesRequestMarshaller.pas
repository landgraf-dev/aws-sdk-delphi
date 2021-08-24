unit AWS.SESv2.Transform.PutAccountDedicatedIpWarmupAttributesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutAccountDedicatedIpWarmupAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IPutAccountDedicatedIpWarmupAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutAccountDedicatedIpWarmupAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutAccountDedicatedIpWarmupAttributesRequest>, IPutAccountDedicatedIpWarmupAttributesRequestMarshaller)
  strict private
    class var FInstance: IPutAccountDedicatedIpWarmupAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutAccountDedicatedIpWarmupAttributesRequest): IRequest; overload;
    class function Instance: IPutAccountDedicatedIpWarmupAttributesRequestMarshaller; static;
  end;
  
implementation

{ TPutAccountDedicatedIpWarmupAttributesRequestMarshaller }

function TPutAccountDedicatedIpWarmupAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutAccountDedicatedIpWarmupAttributesRequest(AInput));
end;

function TPutAccountDedicatedIpWarmupAttributesRequestMarshaller.Marshall(PublicRequest: TPutAccountDedicatedIpWarmupAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'PUT';
  Request.ResourcePath := '/v2/email/account/dedicated-ips/warmup';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetAutoWarmupEnabled then
        begin
          Context.Writer.WriteName('AutoWarmupEnabled');
          Context.Writer.WriteBoolean(PublicRequest.AutoWarmupEnabled);
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

class constructor TPutAccountDedicatedIpWarmupAttributesRequestMarshaller.Create;
begin
  FInstance := TPutAccountDedicatedIpWarmupAttributesRequestMarshaller.Create;
end;

class function TPutAccountDedicatedIpWarmupAttributesRequestMarshaller.Instance: IPutAccountDedicatedIpWarmupAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
