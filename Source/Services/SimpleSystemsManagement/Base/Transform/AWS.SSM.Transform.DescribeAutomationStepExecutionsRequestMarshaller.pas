unit AWS.SSM.Transform.DescribeAutomationStepExecutionsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DescribeAutomationStepExecutionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.StepExecutionFilterMarshaller;

type
  IDescribeAutomationStepExecutionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeAutomationStepExecutionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeAutomationStepExecutionsRequest>, IDescribeAutomationStepExecutionsRequestMarshaller)
  strict private
    class var FInstance: IDescribeAutomationStepExecutionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeAutomationStepExecutionsRequest): IRequest; overload;
    class function Instance: IDescribeAutomationStepExecutionsRequestMarshaller; static;
  end;
  
implementation

{ TDescribeAutomationStepExecutionsRequestMarshaller }

function TDescribeAutomationStepExecutionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeAutomationStepExecutionsRequest(AInput));
end;

function TDescribeAutomationStepExecutionsRequestMarshaller.Marshall(PublicRequest: TDescribeAutomationStepExecutionsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DescribeAutomationStepExecutions');
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
        if PublicRequest.IsSetFilters then
        begin
          Context.Writer.WriteName('Filters');
          Context.Writer.WriteBeginArray;
          for var PublicRequestFiltersListValue in PublicRequest.Filters do
          begin
            Context.Writer.WriteBeginObject;
            TStepExecutionFilterMarshaller.Instance.Marshall(PublicRequestFiltersListValue, Context);
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
        if PublicRequest.IsSetReverseOrder then
        begin
          Context.Writer.WriteName('ReverseOrder');
          Context.Writer.WriteBoolean(PublicRequest.ReverseOrder);
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

class constructor TDescribeAutomationStepExecutionsRequestMarshaller.Create;
begin
  FInstance := TDescribeAutomationStepExecutionsRequestMarshaller.Create;
end;

class function TDescribeAutomationStepExecutionsRequestMarshaller.Instance: IDescribeAutomationStepExecutionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
