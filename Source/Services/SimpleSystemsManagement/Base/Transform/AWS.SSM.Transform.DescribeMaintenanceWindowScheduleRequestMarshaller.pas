unit AWS.SSM.Transform.DescribeMaintenanceWindowScheduleRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DescribeMaintenanceWindowScheduleRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.PatchOrchestratorFilterMarshaller, 
  AWS.SSM.Transform.TargetMarshaller;

type
  IDescribeMaintenanceWindowScheduleRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeMaintenanceWindowScheduleRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeMaintenanceWindowScheduleRequest>, IDescribeMaintenanceWindowScheduleRequestMarshaller)
  strict private
    class var FInstance: IDescribeMaintenanceWindowScheduleRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeMaintenanceWindowScheduleRequest): IRequest; overload;
    class function Instance: IDescribeMaintenanceWindowScheduleRequestMarshaller; static;
  end;
  
implementation

{ TDescribeMaintenanceWindowScheduleRequestMarshaller }

function TDescribeMaintenanceWindowScheduleRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeMaintenanceWindowScheduleRequest(AInput));
end;

function TDescribeMaintenanceWindowScheduleRequestMarshaller.Marshall(PublicRequest: TDescribeMaintenanceWindowScheduleRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DescribeMaintenanceWindowSchedule');
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
            TPatchOrchestratorFilterMarshaller.Instance.Marshall(PublicRequestFiltersListValue, Context);
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
        if PublicRequest.IsSetResourceType then
        begin
          Context.Writer.WriteName('ResourceType');
          Context.Writer.WriteString(PublicRequest.ResourceType.Value);
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

class constructor TDescribeMaintenanceWindowScheduleRequestMarshaller.Create;
begin
  FInstance := TDescribeMaintenanceWindowScheduleRequestMarshaller.Create;
end;

class function TDescribeMaintenanceWindowScheduleRequestMarshaller.Instance: IDescribeMaintenanceWindowScheduleRequestMarshaller;
begin
  Result := FInstance;
end;

end.
