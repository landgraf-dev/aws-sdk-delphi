unit AWS.Translate.Transform.StartTextTranslationJobRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.StartTextTranslationJobRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Translate.Transform.InputDataConfigMarshaller, 
  AWS.Translate.Transform.OutputDataConfigMarshaller, 
  AWS.Translate.Transform.TranslationSettingsMarshaller;

type
  IStartTextTranslationJobRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStartTextTranslationJobRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStartTextTranslationJobRequest>, IStartTextTranslationJobRequestMarshaller)
  strict private
    class var FInstance: IStartTextTranslationJobRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStartTextTranslationJobRequest): IRequest; overload;
    class function Instance: IStartTextTranslationJobRequestMarshaller; static;
  end;
  
implementation

{ TStartTextTranslationJobRequestMarshaller }

function TStartTextTranslationJobRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStartTextTranslationJobRequest(AInput));
end;

function TStartTextTranslationJobRequestMarshaller.Marshall(PublicRequest: TStartTextTranslationJobRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Translate');
  Request.Headers.Add('X-Amz-Target', 'AWSShineFrontendService_20170701.StartTextTranslationJob');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2017-07-01');
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
        if PublicRequest.IsSetDataAccessRoleArn then
        begin
          Context.Writer.WriteName('DataAccessRoleArn');
          Context.Writer.WriteString(PublicRequest.DataAccessRoleArn);
        end;
        if PublicRequest.IsSetInputDataConfig then
        begin
          Context.Writer.WriteName('InputDataConfig');
          Context.Writer.WriteBeginObject;
          TInputDataConfigMarshaller.Instance.Marshall(PublicRequest.InputDataConfig, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetJobName then
        begin
          Context.Writer.WriteName('JobName');
          Context.Writer.WriteString(PublicRequest.JobName);
        end;
        if PublicRequest.IsSetOutputDataConfig then
        begin
          Context.Writer.WriteName('OutputDataConfig');
          Context.Writer.WriteBeginObject;
          TOutputDataConfigMarshaller.Instance.Marshall(PublicRequest.OutputDataConfig, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetParallelDataNames then
        begin
          Context.Writer.WriteName('ParallelDataNames');
          Context.Writer.WriteBeginArray;
          for var PublicRequestParallelDataNamesListValue in PublicRequest.ParallelDataNames do
            Context.Writer.WriteString(PublicRequestParallelDataNamesListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetSettings then
        begin
          Context.Writer.WriteName('Settings');
          Context.Writer.WriteBeginObject;
          TTranslationSettingsMarshaller.Instance.Marshall(PublicRequest.Settings, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetSourceLanguageCode then
        begin
          Context.Writer.WriteName('SourceLanguageCode');
          Context.Writer.WriteString(PublicRequest.SourceLanguageCode);
        end;
        if PublicRequest.IsSetTargetLanguageCodes then
        begin
          Context.Writer.WriteName('TargetLanguageCodes');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTargetLanguageCodesListValue in PublicRequest.TargetLanguageCodes do
            Context.Writer.WriteString(PublicRequestTargetLanguageCodesListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetTerminologyNames then
        begin
          Context.Writer.WriteName('TerminologyNames');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTerminologyNamesListValue in PublicRequest.TerminologyNames do
            Context.Writer.WriteString(PublicRequestTerminologyNamesListValue);
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

class constructor TStartTextTranslationJobRequestMarshaller.Create;
begin
  FInstance := TStartTextTranslationJobRequestMarshaller.Create;
end;

class function TStartTextTranslationJobRequestMarshaller.Instance: IStartTextTranslationJobRequestMarshaller;
begin
  Result := FInstance;
end;

end.
