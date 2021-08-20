unit AWS.Polly.Transform.SynthesizeSpeechRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Polly.Model.SynthesizeSpeechRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  ISynthesizeSpeechRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSynthesizeSpeechRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSynthesizeSpeechRequest>, ISynthesizeSpeechRequestMarshaller)
  strict private
    class var FInstance: ISynthesizeSpeechRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSynthesizeSpeechRequest): IRequest; overload;
    class function Instance: ISynthesizeSpeechRequestMarshaller; static;
  end;
  
implementation

{ TSynthesizeSpeechRequestMarshaller }

function TSynthesizeSpeechRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSynthesizeSpeechRequest(AInput));
end;

function TSynthesizeSpeechRequestMarshaller.Marshall(PublicRequest: TSynthesizeSpeechRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Polly');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-06-10');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/v1/speech';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetEngine then
        begin
          Context.Writer.WriteName('Engine');
          Context.Writer.WriteString(PublicRequest.Engine.Value);
        end;
        if PublicRequest.IsSetLanguageCode then
        begin
          Context.Writer.WriteName('LanguageCode');
          Context.Writer.WriteString(PublicRequest.LanguageCode.Value);
        end;
        if PublicRequest.IsSetLexiconNames then
        begin
          Context.Writer.WriteName('LexiconNames');
          Context.Writer.WriteBeginArray;
          for var PublicRequestLexiconNamesListValue in PublicRequest.LexiconNames do
            Context.Writer.WriteString(PublicRequestLexiconNamesListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetOutputFormat then
        begin
          Context.Writer.WriteName('OutputFormat');
          Context.Writer.WriteString(PublicRequest.OutputFormat.Value);
        end;
        if PublicRequest.IsSetSampleRate then
        begin
          Context.Writer.WriteName('SampleRate');
          Context.Writer.WriteString(PublicRequest.SampleRate);
        end;
        if PublicRequest.IsSetSpeechMarkTypes then
        begin
          Context.Writer.WriteName('SpeechMarkTypes');
          Context.Writer.WriteBeginArray;
          for var PublicRequestSpeechMarkTypesListValue in PublicRequest.SpeechMarkTypes do
            Context.Writer.WriteString(PublicRequestSpeechMarkTypesListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetText then
        begin
          Context.Writer.WriteName('Text');
          Context.Writer.WriteString(PublicRequest.Text);
        end;
        if PublicRequest.IsSetTextType then
        begin
          Context.Writer.WriteName('TextType');
          Context.Writer.WriteString(PublicRequest.TextType.Value);
        end;
        if PublicRequest.IsSetVoiceId then
        begin
          Context.Writer.WriteName('VoiceId');
          Context.Writer.WriteString(PublicRequest.VoiceId.Value);
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

class constructor TSynthesizeSpeechRequestMarshaller.Create;
begin
  FInstance := TSynthesizeSpeechRequestMarshaller.Create;
end;

class function TSynthesizeSpeechRequestMarshaller.Instance: ISynthesizeSpeechRequestMarshaller;
begin
  Result := FInstance;
end;

end.
