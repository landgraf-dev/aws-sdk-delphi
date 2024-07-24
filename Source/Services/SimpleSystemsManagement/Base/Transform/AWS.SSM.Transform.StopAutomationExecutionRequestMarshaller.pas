unit AWS.SSM.Transform.StopAutomationExecutionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.StopAutomationExecutionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IStopAutomationExecutionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStopAutomationExecutionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStopAutomationExecutionRequest>, IStopAutomationExecutionRequestMarshaller)
  strict private
    class var FInstance: IStopAutomationExecutionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStopAutomationExecutionRequest): IRequest; overload;
    class function Instance: IStopAutomationExecutionRequestMarshaller; static;
  end;
  
implementation

{ TStopAutomationExecutionRequestMarshaller }

function TStopAutomationExecutionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStopAutomationExecutionRequest(AInput));
end;

function TStopAutomationExecutionRequestMarshaller.Marshall(PublicRequest: TStopAutomationExecutionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.StopAutomationExecution');
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
        if PublicRequest.IsSetType then
        begin
          Context.Writer.WriteName('Type');
          Context.Writer.WriteString(PublicRequest.&Type.Value);
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

class constructor TStopAutomationExecutionRequestMarshaller.Create;
begin
  FInstance := TStopAutomationExecutionRequestMarshaller.Create;
end;

class function TStopAutomationExecutionRequestMarshaller.Instance: IStopAutomationExecutionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
