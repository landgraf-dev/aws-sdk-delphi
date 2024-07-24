unit AWS.SSM.Transform.StartAutomationExecutionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.StartAutomationExecutionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.TagMarshaller, 
  AWS.SSM.Transform.TargetLocationMarshaller, 
  AWS.SSM.Transform.TargetMarshaller;

type
  IStartAutomationExecutionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStartAutomationExecutionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStartAutomationExecutionRequest>, IStartAutomationExecutionRequestMarshaller)
  strict private
    class var FInstance: IStartAutomationExecutionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStartAutomationExecutionRequest): IRequest; overload;
    class function Instance: IStartAutomationExecutionRequestMarshaller; static;
  end;
  
implementation

{ TStartAutomationExecutionRequestMarshaller }

function TStartAutomationExecutionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStartAutomationExecutionRequest(AInput));
end;

function TStartAutomationExecutionRequestMarshaller.Marshall(PublicRequest: TStartAutomationExecutionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.StartAutomationExecution');
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
        if PublicRequest.IsSetMode then
        begin
          Context.Writer.WriteName('Mode');
          Context.Writer.WriteString(PublicRequest.Mode.Value);
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
        if PublicRequest.IsSetTargetLocations then
        begin
          Context.Writer.WriteName('TargetLocations');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTargetLocationsListValue in PublicRequest.TargetLocations do
          begin
            Context.Writer.WriteBeginObject;
            TTargetLocationMarshaller.Instance.Marshall(PublicRequestTargetLocationsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetTargetMaps then
        begin
          Context.Writer.WriteName('TargetMaps');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTargetMapsListValue in PublicRequest.TargetMaps do
          begin
            Context.Writer.WriteBeginObject;
            for var PublicRequestTargetMapsListValueKvp in PublicRequestTargetMapsListValue do
            begin
              Context.Writer.WriteName(PublicRequestTargetMapsListValueKvp.Key);
              var PublicRequestTargetMapsListValueValue := PublicRequestTargetMapsListValueKvp.Value;
              Context.Writer.WriteBeginArray;
              for var PublicRequestTargetMapsListValueValueListValue in PublicRequestTargetMapsListValueValue do
                Context.Writer.WriteString(PublicRequestTargetMapsListValueValueListValue);
              Context.Writer.WriteEndArray;
            end;
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetTargetParameterName then
        begin
          Context.Writer.WriteName('TargetParameterName');
          Context.Writer.WriteString(PublicRequest.TargetParameterName);
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

class constructor TStartAutomationExecutionRequestMarshaller.Create;
begin
  FInstance := TStartAutomationExecutionRequestMarshaller.Create;
end;

class function TStartAutomationExecutionRequestMarshaller.Instance: IStartAutomationExecutionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
