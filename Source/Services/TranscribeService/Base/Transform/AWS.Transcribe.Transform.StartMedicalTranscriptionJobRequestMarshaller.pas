unit AWS.Transcribe.Transform.StartMedicalTranscriptionJobRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.StartMedicalTranscriptionJobRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Transcribe.Transform.MediaMarshaller, 
  AWS.Transcribe.Transform.MedicalTranscriptionSettingMarshaller, 
  AWS.Transcribe.Transform.TagMarshaller;

type
  IStartMedicalTranscriptionJobRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStartMedicalTranscriptionJobRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStartMedicalTranscriptionJobRequest>, IStartMedicalTranscriptionJobRequestMarshaller)
  strict private
    class var FInstance: IStartMedicalTranscriptionJobRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStartMedicalTranscriptionJobRequest): IRequest; overload;
    class function Instance: IStartMedicalTranscriptionJobRequestMarshaller; static;
  end;
  
implementation

{ TStartMedicalTranscriptionJobRequestMarshaller }

function TStartMedicalTranscriptionJobRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStartMedicalTranscriptionJobRequest(AInput));
end;

function TStartMedicalTranscriptionJobRequestMarshaller.Marshall(PublicRequest: TStartMedicalTranscriptionJobRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.StartMedicalTranscriptionJob');
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
        if PublicRequest.IsSetContentIdentificationType then
        begin
          Context.Writer.WriteName('ContentIdentificationType');
          Context.Writer.WriteString(PublicRequest.ContentIdentificationType.Value);
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
        if PublicRequest.IsSetMedicalTranscriptionJobName then
        begin
          Context.Writer.WriteName('MedicalTranscriptionJobName');
          Context.Writer.WriteString(PublicRequest.MedicalTranscriptionJobName);
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
          TMedicalTranscriptionSettingMarshaller.Instance.Marshall(PublicRequest.Settings, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetSpecialty then
        begin
          Context.Writer.WriteName('Specialty');
          Context.Writer.WriteString(PublicRequest.Specialty.Value);
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
        if PublicRequest.IsSetType then
        begin
          Context.Writer.WriteName('Type');
          Context.Writer.WriteString(PublicRequest.&Type.Value);
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

class constructor TStartMedicalTranscriptionJobRequestMarshaller.Create;
begin
  FInstance := TStartMedicalTranscriptionJobRequestMarshaller.Create;
end;

class function TStartMedicalTranscriptionJobRequestMarshaller.Instance: IStartMedicalTranscriptionJobRequestMarshaller;
begin
  Result := FInstance;
end;

end.
