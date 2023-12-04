unit AWS.Transcribe.Transform.DeleteTranscriptionJobRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.DeleteTranscriptionJobRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeleteTranscriptionJobRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteTranscriptionJobRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteTranscriptionJobRequest>, IDeleteTranscriptionJobRequestMarshaller)
  strict private
    class var FInstance: IDeleteTranscriptionJobRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteTranscriptionJobRequest): IRequest; overload;
    class function Instance: IDeleteTranscriptionJobRequestMarshaller; static;
  end;
  
implementation

{ TDeleteTranscriptionJobRequestMarshaller }

function TDeleteTranscriptionJobRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteTranscriptionJobRequest(AInput));
end;

function TDeleteTranscriptionJobRequestMarshaller.Marshall(PublicRequest: TDeleteTranscriptionJobRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.DeleteTranscriptionJob');
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
        if PublicRequest.IsSetTranscriptionJobName then
        begin
          Context.Writer.WriteName('TranscriptionJobName');
          Context.Writer.WriteString(PublicRequest.TranscriptionJobName);
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

class constructor TDeleteTranscriptionJobRequestMarshaller.Create;
begin
  FInstance := TDeleteTranscriptionJobRequestMarshaller.Create;
end;

class function TDeleteTranscriptionJobRequestMarshaller.Instance: IDeleteTranscriptionJobRequestMarshaller;
begin
  Result := FInstance;
end;

end.
