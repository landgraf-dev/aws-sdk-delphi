unit AWS.Transcribe.Transform.GetMedicalVocabularyRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.GetMedicalVocabularyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IGetMedicalVocabularyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetMedicalVocabularyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetMedicalVocabularyRequest>, IGetMedicalVocabularyRequestMarshaller)
  strict private
    class var FInstance: IGetMedicalVocabularyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetMedicalVocabularyRequest): IRequest; overload;
    class function Instance: IGetMedicalVocabularyRequestMarshaller; static;
  end;
  
implementation

{ TGetMedicalVocabularyRequestMarshaller }

function TGetMedicalVocabularyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetMedicalVocabularyRequest(AInput));
end;

function TGetMedicalVocabularyRequestMarshaller.Marshall(PublicRequest: TGetMedicalVocabularyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.GetMedicalVocabulary');
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

class constructor TGetMedicalVocabularyRequestMarshaller.Create;
begin
  FInstance := TGetMedicalVocabularyRequestMarshaller.Create;
end;

class function TGetMedicalVocabularyRequestMarshaller.Instance: IGetMedicalVocabularyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
