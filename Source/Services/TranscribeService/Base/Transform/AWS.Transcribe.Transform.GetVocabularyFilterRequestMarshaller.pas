unit AWS.Transcribe.Transform.GetVocabularyFilterRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.GetVocabularyFilterRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IGetVocabularyFilterRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetVocabularyFilterRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetVocabularyFilterRequest>, IGetVocabularyFilterRequestMarshaller)
  strict private
    class var FInstance: IGetVocabularyFilterRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetVocabularyFilterRequest): IRequest; overload;
    class function Instance: IGetVocabularyFilterRequestMarshaller; static;
  end;
  
implementation

{ TGetVocabularyFilterRequestMarshaller }

function TGetVocabularyFilterRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetVocabularyFilterRequest(AInput));
end;

function TGetVocabularyFilterRequestMarshaller.Marshall(PublicRequest: TGetVocabularyFilterRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.GetVocabularyFilter');
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
        if PublicRequest.IsSetVocabularyFilterName then
        begin
          Context.Writer.WriteName('VocabularyFilterName');
          Context.Writer.WriteString(PublicRequest.VocabularyFilterName);
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

class constructor TGetVocabularyFilterRequestMarshaller.Create;
begin
  FInstance := TGetVocabularyFilterRequestMarshaller.Create;
end;

class function TGetVocabularyFilterRequestMarshaller.Instance: IGetVocabularyFilterRequestMarshaller;
begin
  Result := FInstance;
end;

end.
