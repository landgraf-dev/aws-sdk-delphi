unit AWS.SSM.Transform.StartChangeRequestExecutionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  System.DateUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.StartChangeRequestExecutionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.RunbookMarshaller, 
  AWS.SSM.Transform.TagMarshaller;

type
  IStartChangeRequestExecutionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStartChangeRequestExecutionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStartChangeRequestExecutionRequest>, IStartChangeRequestExecutionRequestMarshaller)
  strict private
    class var FInstance: IStartChangeRequestExecutionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStartChangeRequestExecutionRequest): IRequest; overload;
    class function Instance: IStartChangeRequestExecutionRequestMarshaller; static;
  end;
  
implementation

{ TStartChangeRequestExecutionRequestMarshaller }

function TStartChangeRequestExecutionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStartChangeRequestExecutionRequest(AInput));
end;

function TStartChangeRequestExecutionRequestMarshaller.Marshall(PublicRequest: TStartChangeRequestExecutionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.StartChangeRequestExecution');
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
        if PublicRequest.IsSetAutoApprove then
        begin
          Context.Writer.WriteName('AutoApprove');
          Context.Writer.WriteBoolean(PublicRequest.AutoApprove);
        end;
        if PublicRequest.IsSetChangeDetails then
        begin
          Context.Writer.WriteName('ChangeDetails');
          Context.Writer.WriteString(PublicRequest.ChangeDetails);
        end;
        if PublicRequest.IsSetChangeRequestName then
        begin
          Context.Writer.WriteName('ChangeRequestName');
          Context.Writer.WriteString(PublicRequest.ChangeRequestName);
        end;
        if PublicRequest.IsSetClientToken then
        begin
          Context.Writer.WriteName('ClientToken');
          Context.Writer.WriteString(PublicRequest.ClientToken);
        end;
        if PublicRequest.IsSetDocumentName then
        begin
          Context.Writer.WriteName('DocumentName');
          Context.Writer.WriteString(PublicRequest.DocumentName);
        end;
        if PublicRequest.IsSetDocumentVersion then
        begin
          Context.Writer.WriteName('DocumentVersion');
          Context.Writer.WriteString(PublicRequest.DocumentVersion);
        end;
        if PublicRequest.IsSetParameters then
        begin
          Context.Writer.WriteName('Parameters');
          Context.Writer.WriteBeginObject;
          for var PublicRequestParametersKvp in PublicRequest.Parameters do
          begin
            Context.Writer.WriteName(PublicRequestParametersKvp.Key);
            var PublicRequestParametersValue := PublicRequestParametersKvp.Value;
            Context.Writer.WriteBeginArray;
            for var PublicRequestParametersValueListValue in PublicRequestParametersValue do
              Context.Writer.WriteString(PublicRequestParametersValueListValue);
            Context.Writer.WriteEndArray;
          end;
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetRunbooks then
        begin
          Context.Writer.WriteName('Runbooks');
          Context.Writer.WriteBeginArray;
          for var PublicRequestRunbooksListValue in PublicRequest.Runbooks do
          begin
            Context.Writer.WriteBeginObject;
            TRunbookMarshaller.Instance.Marshall(PublicRequestRunbooksListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetScheduledEndTime then
        begin
          Context.Writer.WriteName('ScheduledEndTime');
          Context.Writer.WriteInteger(DateTimeToUnix(PublicRequest.ScheduledEndTime, False));
        end;
        if PublicRequest.IsSetScheduledTime then
        begin
          Context.Writer.WriteName('ScheduledTime');
          Context.Writer.WriteInteger(DateTimeToUnix(PublicRequest.ScheduledTime, False));
        end;
        if PublicRequest.IsSetTags then
        begin
          Context.Writer.WriteName('Tags');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTagsListValue in PublicRequest.Tags do
          begin
            Context.Writer.WriteBeginObject;
            TTagMarshaller.Instance.Marshall(PublicRequestTagsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
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

class constructor TStartChangeRequestExecutionRequestMarshaller.Create;
begin
  FInstance := TStartChangeRequestExecutionRequestMarshaller.Create;
end;

class function TStartChangeRequestExecutionRequestMarshaller.Instance: IStartChangeRequestExecutionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
