unit AWS.SSM.Transform.DescribeMaintenanceWindowExecutionTaskInvocationsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionTaskInvocationsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.MaintenanceWindowFilterMarshaller;

type
  IDescribeMaintenanceWindowExecutionTaskInvocationsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeMaintenanceWindowExecutionTaskInvocationsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeMaintenanceWindowExecutionTaskInvocationsRequest>, IDescribeMaintenanceWindowExecutionTaskInvocationsRequestMarshaller)
  strict private
    class var FInstance: IDescribeMaintenanceWindowExecutionTaskInvocationsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeMaintenanceWindowExecutionTaskInvocationsRequest): IRequest; overload;
    class function Instance: IDescribeMaintenanceWindowExecutionTaskInvocationsRequestMarshaller; static;
  end;
  
implementation

{ TDescribeMaintenanceWindowExecutionTaskInvocationsRequestMarshaller }

function TDescribeMaintenanceWindowExecutionTaskInvocationsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeMaintenanceWindowExecutionTaskInvocationsRequest(AInput));
end;

function TDescribeMaintenanceWindowExecutionTaskInvocationsRequestMarshaller.Marshall(PublicRequest: TDescribeMaintenanceWindowExecutionTaskInvocationsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DescribeMaintenanceWindowExecutionTaskInvocations');
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
        if PublicRequest.IsSetFilters then
        begin
          Context.Writer.WriteName('Filters');
          Context.Writer.WriteBeginArray;
          for var PublicRequestFiltersListValue in PublicRequest.Filters do
          begin
            Context.Writer.WriteBeginObject;
            TMaintenanceWindowFilterMarshaller.Instance.Marshall(PublicRequestFiltersListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetMaxResults then
        begin
          Context.Writer.WriteName('MaxResults');
          Context.Writer.WriteInteger(PublicRequest.MaxResults);
        end;
        if PublicRequest.IsSetNextToken then
        begin
          Context.Writer.WriteName('NextToken');
          Context.Writer.WriteString(PublicRequest.NextToken);
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

class constructor TDescribeMaintenanceWindowExecutionTaskInvocationsRequestMarshaller.Create;
begin
  FInstance := TDescribeMaintenanceWindowExecutionTaskInvocationsRequestMarshaller.Create;
end;

class function TDescribeMaintenanceWindowExecutionTaskInvocationsRequestMarshaller.Instance: IDescribeMaintenanceWindowExecutionTaskInvocationsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
