unit AWS.Transcribe.Transform.CreateVocabularyRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.CreateVocabularyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Transcribe.Transform.TagMarshaller;

type
  ICreateVocabularyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateVocabularyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateVocabularyRequest>, ICreateVocabularyRequestMarshaller)
  strict private
    class var FInstance: ICreateVocabularyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateVocabularyRequest): IRequest; overload;
    class function Instance: ICreateVocabularyRequestMarshaller; static;
  end;
  
implementation

{ TCreateVocabularyRequestMarshaller }

function TCreateVocabularyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateVocabularyRequest(AInput));
end;

function TCreateVocabularyRequestMarshaller.Marshall(PublicRequest: TCreateVocabularyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.CreateVocabulary');
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
        if PublicRequest.IsSetLanguageCode then
        begin
          Context.Writer.WriteName('LanguageCode');
          Context.Writer.WriteString(PublicRequest.LanguageCode.Value);
        end;
        if PublicRequest.IsSetPhrases then
        begin
          Context.Writer.WriteName('Phrases');
          Context.Writer.WriteBeginArray;
          for var PublicRequestPhrasesListValue in PublicRequest.Phrases do
            Context.Writer.WriteString(PublicRequestPhrasesListValue);
          Context.Writer.WriteEndArray;
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
        if PublicRequest.IsSetVocabularyFileUri then
        begin
          Context.Writer.WriteName('VocabularyFileUri');
          Context.Writer.WriteString(PublicRequest.VocabularyFileUri);
        end;
        if PublicRequest.IsSetVocabularyName then
        begin
          Context.Writer.WriteName('VocabularyName');
          Context.Writer.WriteString(PublicRequest.VocabularyName);
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

class constructor TCreateVocabularyRequestMarshaller.Create;
begin
  FInstance := TCreateVocabularyRequestMarshaller.Create;
end;

class function TCreateVocabularyRequestMarshaller.Instance: ICreateVocabularyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
