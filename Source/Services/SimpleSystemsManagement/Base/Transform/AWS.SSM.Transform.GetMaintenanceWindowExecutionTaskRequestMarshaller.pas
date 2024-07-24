unit AWS.SSM.Transform.GetMaintenanceWindowExecutionTaskRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionTaskRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetMaintenanceWindowExecutionTaskRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetMaintenanceWindowExecutionTaskRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetMaintenanceWindowExecutionTaskRequest>, IGetMaintenanceWindowExecutionTaskRequestMarshaller)
  strict private
    class var FInstance: IGetMaintenanceWindowExecutionTaskRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetMaintenanceWindowExecutionTaskRequest): IRequest; overload;
    class function Instance: IGetMaintenanceWindowExecutionTaskRequestMarshaller; static;
  end;
  
implementation

{ TGetMaintenanceWindowExecutionTaskRequestMarshaller }

function TGetMaintenanceWindowExecutionTaskRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetMaintenanceWindowExecutionTaskRequest(AInput));
end;

function TGetMaintenanceWindowExecutionTaskRequestMarshaller.Marshall(PublicRequest: TGetMaintenanceWindowExecutionTaskRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetMaintenanceWindowExecutionTask');
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

class constructor TGetMaintenanceWindowExecutionTaskRequestMarshaller.Create;
begin
  FInstance := TGetMaintenanceWindowExecutionTaskRequestMarshaller.Create;
end;

class function TGetMaintenanceWindowExecutionTaskRequestMarshaller.Instance: IGetMaintenanceWindowExecutionTaskRequestMarshaller;
begin
  Result := FInstance;
end;

end.
