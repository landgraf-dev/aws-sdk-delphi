unit AWS.SSM.Transform.GetMaintenanceWindowExecutionTaskInvocationRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionTaskInvocationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetMaintenanceWindowExecutionTaskInvocationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetMaintenanceWindowExecutionTaskInvocationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetMaintenanceWindowExecutionTaskInvocationRequest>, IGetMaintenanceWindowExecutionTaskInvocationRequestMarshaller)
  strict private
    class var FInstance: IGetMaintenanceWindowExecutionTaskInvocationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetMaintenanceWindowExecutionTaskInvocationRequest): IRequest; overload;
    class function Instance: IGetMaintenanceWindowExecutionTaskInvocationRequestMarshaller; static;
  end;
  
implementation

{ TGetMaintenanceWindowExecutionTaskInvocationRequestMarshaller }

function TGetMaintenanceWindowExecutionTaskInvocationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetMaintenanceWindowExecutionTaskInvocationRequest(AInput));
end;

function TGetMaintenanceWindowExecutionTaskInvocationRequestMarshaller.Marshall(PublicRequest: TGetMaintenanceWindowExecutionTaskInvocationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetMaintenanceWindowExecutionTaskInvocation');
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
        if PublicRequest.IsSetInvocationId then
        begin
          Context.Writer.WriteName('InvocationId');
          Context.Writer.WriteString(PublicRequest.InvocationId);
        end;
        if PublicRequest.IsSetTaskId then
        begin
          Context.Writer.WriteName('TaskId');
          Context.Writer.WriteString(PublicRequest.TaskId);
        end;
        if PublicRequest.IsSetWindowExecutionId then
        begin
          Context.Writer.WriteName('WindowExecutionId');
          Context.Writer.WriteString(PublicRequest.WindowExecutionId);
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

class constructor TGetMaintenanceWindowExecutionTaskInvocationRequestMarshaller.Create;
begin
  FInstance := TGetMaintenanceWindowExecutionTaskInvocationRequestMarshaller.Create;
end;

class function TGetMaintenanceWindowExecutionTaskInvocationRequestMarshaller.Instance: IGetMaintenanceWindowExecutionTaskInvocationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
