unit AWS.Transcribe.Transform.CreateMedicalVocabularyRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.CreateMedicalVocabularyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  ICreateMedicalVocabularyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateMedicalVocabularyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateMedicalVocabularyRequest>, ICreateMedicalVocabularyRequestMarshaller)
  strict private
    class var FInstance: ICreateMedicalVocabularyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateMedicalVocabularyRequest): IRequest; overload;
    class function Instance: ICreateMedicalVocabularyRequestMarshaller; static;
  end;
  
implementation

{ TCreateMedicalVocabularyRequestMarshaller }

function TCreateMedicalVocabularyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateMedicalVocabularyRequest(AInput));
end;

function TCreateMedicalVocabularyRequestMarshaller.Marshall(PublicRequest: TCreateMedicalVocabularyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.CreateMedicalVocabulary');
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

class constructor TCreateMedicalVocabularyRequestMarshaller.Create;
begin
  FInstance := TCreateMedicalVocabularyRequestMarshaller.Create;
end;

class function TCreateMedicalVocabularyRequestMarshaller.Instance: ICreateMedicalVocabularyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
