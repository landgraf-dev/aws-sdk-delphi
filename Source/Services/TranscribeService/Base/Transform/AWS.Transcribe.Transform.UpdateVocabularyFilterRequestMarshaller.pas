unit AWS.Transcribe.Transform.UpdateVocabularyFilterRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.UpdateVocabularyFilterRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IUpdateVocabularyFilterRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateVocabularyFilterRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateVocabularyFilterRequest>, IUpdateVocabularyFilterRequestMarshaller)
  strict private
    class var FInstance: IUpdateVocabularyFilterRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateVocabularyFilterRequest): IRequest; overload;
    class function Instance: IUpdateVocabularyFilterRequestMarshaller; static;
  end;
  
implementation

{ TUpdateVocabularyFilterRequestMarshaller }

function TUpdateVocabularyFilterRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateVocabularyFilterRequest(AInput));
end;

function TUpdateVocabularyFilterRequestMarshaller.Marshall(PublicRequest: TUpdateVocabularyFilterRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.UpdateVocabularyFilter');
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

class constructor TUpdateVocabularyFilterRequestMarshaller.Create;
begin
  FInstance := TUpdateVocabularyFilterRequestMarshaller.Create;
end;

class function TUpdateVocabularyFilterRequestMarshaller.Instance: IUpdateVocabularyFilterRequestMarshaller;
begin
  Result := FInstance;
end;

end.
