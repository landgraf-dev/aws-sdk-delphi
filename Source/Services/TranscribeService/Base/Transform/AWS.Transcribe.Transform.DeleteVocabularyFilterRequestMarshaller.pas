unit AWS.Transcribe.Transform.DeleteVocabularyFilterRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.DeleteVocabularyFilterRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeleteVocabularyFilterRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteVocabularyFilterRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteVocabularyFilterRequest>, IDeleteVocabularyFilterRequestMarshaller)
  strict private
    class var FInstance: IDeleteVocabularyFilterRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteVocabularyFilterRequest): IRequest; overload;
    class function Instance: IDeleteVocabularyFilterRequestMarshaller; static;
  end;
  
implementation

{ TDeleteVocabularyFilterRequestMarshaller }

function TDeleteVocabularyFilterRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteVocabularyFilterRequest(AInput));
end;

function TDeleteVocabularyFilterRequestMarshaller.Marshall(PublicRequest: TDeleteVocabularyFilterRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.DeleteVocabularyFilter');
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

class constructor TDeleteVocabularyFilterRequestMarshaller.Create;
begin
  FInstance := TDeleteVocabularyFilterRequestMarshaller.Create;
end;

class function TDeleteVocabularyFilterRequestMarshaller.Instance: IDeleteVocabularyFilterRequestMarshaller;
begin
  Result := FInstance;
end;

end.
