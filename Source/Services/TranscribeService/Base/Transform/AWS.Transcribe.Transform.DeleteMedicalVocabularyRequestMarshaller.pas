unit AWS.Transcribe.Transform.DeleteMedicalVocabularyRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.DeleteMedicalVocabularyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IDeleteMedicalVocabularyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteMedicalVocabularyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteMedicalVocabularyRequest>, IDeleteMedicalVocabularyRequestMarshaller)
  strict private
    class var FInstance: IDeleteMedicalVocabularyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteMedicalVocabularyRequest): IRequest; overload;
    class function Instance: IDeleteMedicalVocabularyRequestMarshaller; static;
  end;
  
implementation

{ TDeleteMedicalVocabularyRequestMarshaller }

function TDeleteMedicalVocabularyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteMedicalVocabularyRequest(AInput));
end;

function TDeleteMedicalVocabularyRequestMarshaller.Marshall(PublicRequest: TDeleteMedicalVocabularyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.DeleteMedicalVocabulary');
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

class constructor TDeleteMedicalVocabularyRequestMarshaller.Create;
begin
  FInstance := TDeleteMedicalVocabularyRequestMarshaller.Create;
end;

class function TDeleteMedicalVocabularyRequestMarshaller.Instance: IDeleteMedicalVocabularyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
