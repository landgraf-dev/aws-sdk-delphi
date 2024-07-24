unit AWS.SSM.Transform.SendCommandRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.SendCommandRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.CloudWatchOutputConfigMarshaller, 
  AWS.SSM.Transform.NotificationConfigMarshaller, 
  AWS.SSM.Transform.TargetMarshaller;

type
  ISendCommandRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSendCommandRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSendCommandRequest>, ISendCommandRequestMarshaller)
  strict private
    class var FInstance: ISendCommandRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSendCommandRequest): IRequest; overload;
    class function Instance: ISendCommandRequestMarshaller; static;
  end;
  
implementation

{ TSendCommandRequestMarshaller }

function TSendCommandRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSendCommandRequest(AInput));
end;

function TSendCommandRequestMarshaller.Marshall(PublicRequest: TSendCommandRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.SendCommand');
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
        if PublicRequest.IsSetCloudWatchOutputConfig then
        begin
          Context.Writer.WriteName('CloudWatchOutputConfig');
          Context.Writer.WriteBeginObject;
          TCloudWatchOutputConfigMarshaller.Instance.Marshall(PublicRequest.CloudWatchOutputConfig, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetComment then
        begin
          Context.Writer.WriteName('Comment');
          Context.Writer.WriteString(PublicRequest.Comment);
        end;
        if PublicRequest.IsSetDocumentHash then
        begin
          Context.Writer.WriteName('DocumentHash');
          Context.Writer.WriteString(PublicRequest.DocumentHash);
        end;
        if PublicRequest.IsSetDocumentHashType then
        begin
          Context.Writer.WriteName('DocumentHashType');
          Context.Writer.WriteString(PublicRequest.DocumentHashType.Value);
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
        if PublicRequest.IsSetInstanceIds then
        begin
          Context.Writer.WriteName('InstanceIds');
          Context.Writer.WriteBeginArray;
          for var PublicRequestInstanceIdsListValue in PublicRequest.InstanceIds do
            Context.Writer.WriteString(PublicRequestInstanceIdsListValue);
          Context.Writer.WriteEndArray;
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
        if PublicRequest.IsSetNotificationConfig then
        begin
          Context.Writer.WriteName('NotificationConfig');
          Context.Writer.WriteBeginObject;
          TNotificationConfigMarshaller.Instance.Marshall(PublicRequest.NotificationConfig, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetOutputS3BucketName then
        begin
          Context.Writer.WriteName('OutputS3BucketName');
          Context.Writer.WriteString(PublicRequest.OutputS3BucketName);
        end;
        if PublicRequest.IsSetOutputS3KeyPrefix then
        begin
          Context.Writer.WriteName('OutputS3KeyPrefix');
          Context.Writer.WriteString(PublicRequest.OutputS3KeyPrefix);
        end;
        if PublicRequest.IsSetOutputS3Region then
        begin
          Context.Writer.WriteName('OutputS3Region');
          Context.Writer.WriteString(PublicRequest.OutputS3Region);
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
        if PublicRequest.IsSetTimeoutSeconds then
        begin
          Context.Writer.WriteName('TimeoutSeconds');
          Context.Writer.WriteInteger(PublicRequest.TimeoutSeconds);
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

class constructor TSendCommandRequestMarshaller.Create;
begin
  FInstance := TSendCommandRequestMarshaller.Create;
end;

class function TSendCommandRequestMarshaller.Instance: ISendCommandRequestMarshaller;
begin
  Result := FInstance;
end;

end.
