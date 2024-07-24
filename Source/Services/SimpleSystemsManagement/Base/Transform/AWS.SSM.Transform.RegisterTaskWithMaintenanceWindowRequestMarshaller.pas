unit AWS.SSM.Transform.RegisterTaskWithMaintenanceWindowRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.RegisterTaskWithMaintenanceWindowRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.LoggingInfoMarshaller, 
  AWS.SSM.Transform.TargetMarshaller, 
  AWS.SSM.Transform.MaintenanceWindowTaskInvocationParametersMarshaller, 
  AWS.SSM.Transform.MaintenanceWindowTaskParameterValueExpressionMarshaller;

type
  IRegisterTaskWithMaintenanceWindowRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TRegisterTaskWithMaintenanceWindowRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TRegisterTaskWithMaintenanceWindowRequest>, IRegisterTaskWithMaintenanceWindowRequestMarshaller)
  strict private
    class var FInstance: IRegisterTaskWithMaintenanceWindowRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TRegisterTaskWithMaintenanceWindowRequest): IRequest; overload;
    class function Instance: IRegisterTaskWithMaintenanceWindowRequestMarshaller; static;
  end;
  
implementation

{ TRegisterTaskWithMaintenanceWindowRequestMarshaller }

function TRegisterTaskWithMaintenanceWindowRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TRegisterTaskWithMaintenanceWindowRequest(AInput));
end;

function TRegisterTaskWithMaintenanceWindowRequestMarshaller.Marshall(PublicRequest: TRegisterTaskWithMaintenanceWindowRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.RegisterTaskWithMaintenanceWindow');
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
        if PublicRequest.IsSetClientToken then
        begin
          Context.Writer.WriteName('ClientToken');
          Context.Writer.WriteString(PublicRequest.ClientToken);
        end
        else
          if not PublicRequest.IsSetClientToken then
          begin
            Context.Writer.WriteName('ClientToken');
            Context.Writer.WriteString(Copy(TGuid.NewGuid.ToString, 2, 36));
          end;
        if PublicRequest.IsSetCutoffBehavior then
        begin
          Context.Writer.WriteName('CutoffBehavior');
          Context.Writer.WriteString(PublicRequest.CutoffBehavior.Value);
        end;
        if PublicRequest.IsSetDescription then
        begin
          Context.Writer.WriteName('Description');
          Context.Writer.WriteString(PublicRequest.Description);
        end;
        if PublicRequest.IsSetLoggingInfo then
        begin
          Context.Writer.WriteName('LoggingInfo');
          Context.Writer.WriteBeginObject;
          TLoggingInfoMarshaller.Instance.Marshall(PublicRequest.LoggingInfo, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetMaxConcurrency then
        begin
          Context.Writer.WriteName('MaxConcurrency');
          Context.Writer.WriteString(PublicRequest.MaxConcurrency);
        end;
        if PublicRequest.IsSetMaxErrors then
        begin
          Context.Writer.WriteName('MaxErrors');
          Context.Writer.WriteString(PublicRequest.MaxErrors);
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
        end;
        if PublicRequest.IsSetPriority then
        begin
          Context.Writer.WriteName('Priority');
          Context.Writer.WriteInteger(PublicRequest.Priority);
        end;
        if PublicRequest.IsSetServiceRoleArn then
        begin
          Context.Writer.WriteName('ServiceRoleArn');
          Context.Writer.WriteString(PublicRequest.ServiceRoleArn);
        end;
        if PublicRequest.IsSetTargets then
        begin
          Context.Writer.WriteName('Targets');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTargetsListValue in PublicRequest.Targets do
          begin
            Context.Writer.WriteBeginObject;
            TTargetMarshaller.Instance.Marshall(PublicRequestTargetsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetTaskArn then
        begin
          Context.Writer.WriteName('TaskArn');
          Context.Writer.WriteString(PublicRequest.TaskArn);
        end;
        if PublicRequest.IsSetTaskInvocationParameters then
        begin
          Context.Writer.WriteName('TaskInvocationParameters');
          Context.Writer.WriteBeginObject;
          TMaintenanceWindowTaskInvocationParametersMarshaller.Instance.Marshall(PublicRequest.TaskInvocationParameters, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetTaskParameters then
        begin
          Context.Writer.WriteName('TaskParameters');
          Context.Writer.WriteBeginObject;
          for var PublicRequestTaskParametersKvp in PublicRequest.TaskParameters do
          begin
            Context.Writer.WriteName(PublicRequestTaskParametersKvp.Key);
            var PublicRequestTaskParametersValue := PublicRequestTaskParametersKvp.Value;
            Context.Writer.WriteBeginObject;
            TMaintenanceWindowTaskParameterValueExpressionMarshaller.Instance.Marshall(PublicRequestTaskParametersValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetTaskType then
        begin
          Context.Writer.WriteName('TaskType');
          Context.Writer.WriteString(PublicRequest.TaskType.Value);
        end;
        if PublicRequest.IsSetWindowId then
        begin
          Context.Writer.WriteName('WindowId');
          Context.Writer.WriteString(PublicRequest.WindowId);
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

class constructor TRegisterTaskWithMaintenanceWindowRequestMarshaller.Create;
begin
  FInstance := TRegisterTaskWithMaintenanceWindowRequestMarshaller.Create;
end;

class function TRegisterTaskWithMaintenanceWindowRequestMarshaller.Instance: IRegisterTaskWithMaintenanceWindowRequestMarshaller;
begin
  Result := FInstance;
end;

end.
