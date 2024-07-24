unit AWS.SSM.Transform.SendAutomationSignalRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.SendAutomationSignalRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  ISendAutomationSignalRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSendAutomationSignalRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSendAutomationSignalRequest>, ISendAutomationSignalRequestMarshaller)
  strict private
    class var FInstance: ISendAutomationSignalRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSendAutomationSignalRequest): IRequest; overload;
    class function Instance: ISendAutomationSignalRequestMarshaller; static;
  end;
  
implementation

{ TSendAutomationSignalRequestMarshaller }

function TSendAutomationSignalRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSendAutomationSignalRequest(AInput));
end;

function TSendAutomationSignalRequestMarshaller.Marshall(PublicRequest: TSendAutomationSignalRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.SendAutomationSignal');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2014-11-06');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetAutomationExecutionId then
        begin
          Context.Writer.WriteName('AutomationExecutionId');
          Context.Writer.WriteString(PublicRequest.AutomationExecutionId);
        end;
        if PublicRequest.IsSetPayload then
        begin
          Context.Writer.WriteName('Payload');
          Context.Writer.WriteBeginObject;
          for var PublicRequestPayloadKvp in PublicRequest.Payload do
          begin
            Context.Writer.WriteName(PublicRequestPayloadKvp.Key);
            var PublicRequestPayloadValue := PublicRequestPayloadKvp.Value;
            Context.Writer.WriteBeginArray;
            for var PublicRequestPayloadValueListValue in PublicRequestPayloadValue do
              Context.Writer.WriteString(PublicRequestPayloadValueListValue);
            Context.Writer.WriteEndArray;
          end;
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetSignalType then
        begin
          Context.Writer.WriteName('SignalType');
          Context.Writer.WriteString(PublicRequest.SignalType.Value);
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

class constructor TSendAutomationSignalRequestMarshaller.Create;
begin
  FInstance := TSendAutomationSignalRequestMarshaller.Create;
end;

class function TSendAutomationSignalRequestMarshaller.Instance: ISendAutomationSignalRequestMarshaller;
begin
  Result := FInstance;
end;

end.
