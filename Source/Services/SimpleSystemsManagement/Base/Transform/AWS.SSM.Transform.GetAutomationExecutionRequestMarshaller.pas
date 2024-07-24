unit AWS.SSM.Transform.GetAutomationExecutionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetAutomationExecutionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetAutomationExecutionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetAutomationExecutionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetAutomationExecutionRequest>, IGetAutomationExecutionRequestMarshaller)
  strict private
    class var FInstance: IGetAutomationExecutionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetAutomationExecutionRequest): IRequest; overload;
    class function Instance: IGetAutomationExecutionRequestMarshaller; static;
  end;
  
implementation

{ TGetAutomationExecutionRequestMarshaller }

function TGetAutomationExecutionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetAutomationExecutionRequest(AInput));
end;

function TGetAutomationExecutionRequestMarshaller.Marshall(PublicRequest: TGetAutomationExecutionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetAutomationExecution');
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

class constructor TGetAutomationExecutionRequestMarshaller.Create;
begin
  FInstance := TGetAutomationExecutionRequestMarshaller.Create;
end;

class function TGetAutomationExecutionRequestMarshaller.Instance: IGetAutomationExecutionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
