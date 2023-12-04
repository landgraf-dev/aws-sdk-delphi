unit AWS.Transcribe.Transform.GetVocabularyRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.GetVocabularyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetVocabularyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetVocabularyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetVocabularyRequest>, IGetVocabularyRequestMarshaller)
  strict private
    class var FInstance: IGetVocabularyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetVocabularyRequest): IRequest; overload;
    class function Instance: IGetVocabularyRequestMarshaller; static;
  end;
  
implementation

{ TGetVocabularyRequestMarshaller }

function TGetVocabularyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetVocabularyRequest(AInput));
end;

function TGetVocabularyRequestMarshaller.Marshall(PublicRequest: TGetVocabularyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.GetVocabulary');
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

class constructor TGetVocabularyRequestMarshaller.Create;
begin
  FInstance := TGetVocabularyRequestMarshaller.Create;
end;

class function TGetVocabularyRequestMarshaller.Instance: IGetVocabularyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
