unit AWS.Transcribe.Transform.DeleteVocabularyRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.DeleteVocabularyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeleteVocabularyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteVocabularyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteVocabularyRequest>, IDeleteVocabularyRequestMarshaller)
  strict private
    class var FInstance: IDeleteVocabularyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteVocabularyRequest): IRequest; overload;
    class function Instance: IDeleteVocabularyRequestMarshaller; static;
  end;
  
implementation

{ TDeleteVocabularyRequestMarshaller }

function TDeleteVocabularyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteVocabularyRequest(AInput));
end;

function TDeleteVocabularyRequestMarshaller.Marshall(PublicRequest: TDeleteVocabularyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.DeleteVocabulary');
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

class constructor TDeleteVocabularyRequestMarshaller.Create;
begin
  FInstance := TDeleteVocabularyRequestMarshaller.Create;
end;

class function TDeleteVocabularyRequestMarshaller.Instance: IDeleteVocabularyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
