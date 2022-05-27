unit AWS.Transcribe.Transform.StartTranscriptionJobRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.StartTranscriptionJobRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Transcribe.Transform.ContentRedactionMarshaller, 
  AWS.Transcribe.Transform.JobExecutionSettingsMarshaller, 
  AWS.Transcribe.Transform.LanguageIdSettingsMarshaller, 
  AWS.Transcribe.Transform.MediaMarshaller, 
  AWS.Transcribe.Transform.ModelSettingsMarshaller, 
  AWS.Transcribe.Transform.SettingsMarshaller, 
  AWS.Transcribe.Transform.SubtitlesMarshaller, 
  AWS.Transcribe.Transform.TagMarshaller;

type
  IStartTranscriptionJobRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStartTranscriptionJobRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStartTranscriptionJobRequest>, IStartTranscriptionJobRequestMarshaller)
  strict private
    class var FInstance: IStartTranscriptionJobRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStartTranscriptionJobRequest): IRequest; overload;
    class function Instance: IStartTranscriptionJobRequestMarshaller; static;
  end;
  
implementation

{ TStartTranscriptionJobRequestMarshaller }

function TStartTranscriptionJobRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStartTranscriptionJobRequest(AInput));
end;

function TStartTranscriptionJobRequestMarshaller.Marshall(PublicRequest: TStartTranscriptionJobRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.StartTranscriptionJob');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2017-10-26');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetContentRedaction then
        begin
          Context.Writer.WriteName('ContentRedaction');
          Context.Writer.WriteBeginObject;
          TContentRedactionMarshaller.Instance.Marshall(PublicRequest.ContentRedaction, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetIdentifyLanguage then
        begin
          Context.Writer.WriteName('IdentifyLanguage');
          Context.Writer.WriteBoolean(PublicRequest.IdentifyLanguage);
        end;
        if PublicRequest.IsSetJobExecutionSettings then
        begin
          Context.Writer.WriteName('JobExecutionSettings');
          Context.Writer.WriteBeginObject;
          TJobExecutionSettingsMarshaller.Instance.Marshall(PublicRequest.JobExecutionSettings, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetKMSEncryptionContext then
        begin
          Context.Writer.WriteName('KMSEncryptionContext');
          Context.Writer.WriteBeginObject;
          for var PublicRequestKMSEncryptionContextKvp in PublicRequest.KMSEncryptionContext do
          begin
            Context.Writer.WriteName(PublicRequestKMSEncryptionContextKvp.Key);
            var PublicRequestKMSEncryptionContextValue := PublicRequestKMSEncryptionContextKvp.Value;
            Context.Writer.WriteString(PublicRequestKMSEncryptionContextValue);
          end;
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetLanguageCode then
        begin
          Context.Writer.WriteName('LanguageCode');
          Context.Writer.WriteString(PublicRequest.LanguageCode.Value);
        end;
        if PublicRequest.IsSetLanguageIdSettings then
        begin
          Context.Writer.WriteName('LanguageIdSettings');
          Context.Writer.WriteBeginObject;
          for var PublicRequestLanguageIdSettingsKvp in PublicRequest.LanguageIdSettings do
          begin
            Context.Writer.WriteName(PublicRequestLanguageIdSettingsKvp.Key);
            var PublicRequestLanguageIdSettingsValue := PublicRequestLanguageIdSettingsKvp.Value;
            Context.Writer.WriteBeginObject;
            TLanguageIdSettingsMarshaller.Instance.Marshall(PublicRequestLanguageIdSettingsValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetLanguageOptions then
        begin
          Context.Writer.WriteName('LanguageOptions');
          Context.Writer.WriteBeginArray;
          for var PublicRequestLanguageOptionsListValue in PublicRequest.LanguageOptions do
            Context.Writer.WriteString(PublicRequestLanguageOptionsListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetMedia then
        begin
          Context.Writer.WriteName('Media');
          Context.Writer.WriteBeginObject;
          TMediaMarshaller.Instance.Marshall(PublicRequest.Media, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetMediaFormat then
        begin
          Context.Writer.WriteName('MediaFormat');
          Context.Writer.WriteString(PublicRequest.MediaFormat.Value);
        end;
        if PublicRequest.IsSetMediaSampleRateHertz then
        begin
          Context.Writer.WriteName('MediaSampleRateHertz');
          Context.Writer.WriteInteger(PublicRequest.MediaSampleRateHertz);
        end;
        if PublicRequest.IsSetModelSettings then
        begin
          Context.Writer.WriteName('ModelSettings');
          Context.Writer.WriteBeginObject;
          TModelSettingsMarshaller.Instance.Marshall(PublicRequest.ModelSettings, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetOutputBucketName then
        begin
          Context.Writer.WriteName('OutputBucketName');
          Context.Writer.WriteString(PublicRequest.OutputBucketName);
        end;
        if PublicRequest.IsSetOutputEncryptionKMSKeyId then
        begin
          Context.Writer.WriteName('OutputEncryptionKMSKeyId');
          Context.Writer.WriteString(PublicRequest.OutputEncryptionKMSKeyId);
        end;
        if PublicRequest.IsSetOutputKey then
        begin
          Context.Writer.WriteName('OutputKey');
          Context.Writer.WriteString(PublicRequest.OutputKey);
        end;
        if PublicRequest.IsSetSettings then
        begin
          Context.Writer.WriteName('Settings');
          Context.Writer.WriteBeginObject;
          TSettingsMarshaller.Instance.Marshall(PublicRequest.Settings, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetSubtitles then
        begin
          Context.Writer.WriteName('Subtitles');
          Context.Writer.WriteBeginObject;
          TSubtitlesMarshaller.Instance.Marshall(PublicRequest.Subtitles, Context);
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
        if PublicRequest.IsSetTranscriptionJobName then
        begin
          Context.Writer.WriteName('TranscriptionJobName');
          Context.Writer.WriteString(PublicRequest.TranscriptionJobName);
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

class constructor TStartTranscriptionJobRequestMarshaller.Create;
begin
  FInstance := TStartTranscriptionJobRequestMarshaller.Create;
end;

class function TStartTranscriptionJobRequestMarshaller.Instance: IStartTranscriptionJobRequestMarshaller;
begin
  Result := FInstance;
end;

end.
