unit AWS.SESv2.Transform.PutDedicatedIpInPoolRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutDedicatedIpInPoolRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.Json.Writer;

type
  IPutDedicatedIpInPoolRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutDedicatedIpInPoolRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutDedicatedIpInPoolRequest>, IPutDedicatedIpInPoolRequestMarshaller)
  strict private
    class var FInstance: IPutDedicatedIpInPoolRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutDedicatedIpInPoolRequest): IRequest; overload;
    class function Instance: IPutDedicatedIpInPoolRequestMarshaller; static;
  end;
  
implementation

{ TPutDedicatedIpInPoolRequestMarshaller }

function TPutDedicatedIpInPoolRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutDedicatedIpInPoolRequest(AInput));
end;

function TPutDedicatedIpInPoolRequestMarshaller.Marshall(PublicRequest: TPutDedicatedIpInPoolRequest): IRequest;
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
  Request.ResourcePath := '/v2/email/dedicated-ips/{IP}/pool';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetDestinationPoolName then
        begin
          Context.Writer.WriteName('DestinationPoolName');
          Context.Writer.WriteString(PublicRequest.DestinationPoolName);
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

class constructor TPutDedicatedIpInPoolRequestMarshaller.Create;
begin
  FInstance := TPutDedicatedIpInPoolRequestMarshaller.Create;
end;

class function TPutDedicatedIpInPoolRequestMarshaller.Instance: IPutDedicatedIpInPoolRequestMarshaller;
begin
  Result := FInstance;
end;

end.
