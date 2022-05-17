unit AWS.Transcribe.Transform.CreateVocabularyFilterRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.CreateVocabularyFilterRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  ICreateVocabularyFilterRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateVocabularyFilterRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateVocabularyFilterRequest>, ICreateVocabularyFilterRequestMarshaller)
  strict private
    class var FInstance: ICreateVocabularyFilterRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateVocabularyFilterRequest): IRequest; overload;
    class function Instance: ICreateVocabularyFilterRequestMarshaller; static;
  end;
  
implementation

{ TCreateVocabularyFilterRequestMarshaller }

function TCreateVocabularyFilterRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateVocabularyFilterRequest(AInput));
end;

function TCreateVocabularyFilterRequestMarshaller.Marshall(PublicRequest: TCreateVocabularyFilterRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.CreateVocabularyFilter');
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
        if PublicRequest.IsSetVocabularyFilterFileUri then
        begin
          Context.Writer.WriteName('VocabularyFilterFileUri');
          Context.Writer.WriteString(PublicRequest.VocabularyFilterFileUri);
        end;
        if PublicRequest.IsSetVocabularyFilterName then
        begin
          Context.Writer.WriteName('VocabularyFilterName');
          Context.Writer.WriteString(PublicRequest.VocabularyFilterName);
        end;
        if PublicRequest.IsSetWords then
        begin
          Context.Writer.WriteName('Words');
          Context.Writer.WriteBeginArray;
          for var PublicRequestWordsListValue in PublicRequest.Words do
            Context.Writer.WriteString(PublicRequestWordsListValue);
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

class constructor TCreateVocabularyFilterRequestMarshaller.Create;
begin
  FInstance := TCreateVocabularyFilterRequestMarshaller.Create;
end;

class function TCreateVocabularyFilterRequestMarshaller.Instance: ICreateVocabularyFilterRequestMarshaller;
begin
  Result := FInstance;
end;

end.
