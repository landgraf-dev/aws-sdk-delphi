unit AWS.Transcribe.Transform.GetTranscriptionJobRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.GetTranscriptionJobRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetTranscriptionJobRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetTranscriptionJobRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetTranscriptionJobRequest>, IGetTranscriptionJobRequestMarshaller)
  strict private
    class var FInstance: IGetTranscriptionJobRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetTranscriptionJobRequest): IRequest; overload;
    class function Instance: IGetTranscriptionJobRequestMarshaller; static;
  end;
  
implementation

{ TGetTranscriptionJobRequestMarshaller }

function TGetTranscriptionJobRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetTranscriptionJobRequest(AInput));
end;

function TGetTranscriptionJobRequestMarshaller.Marshall(PublicRequest: TGetTranscriptionJobRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.GetTranscriptionJob');
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

class constructor TGetTranscriptionJobRequestMarshaller.Create;
begin
  FInstance := TGetTranscriptionJobRequestMarshaller.Create;
end;

class function TGetTranscriptionJobRequestMarshaller.Instance: IGetTranscriptionJobRequestMarshaller;
begin
  Result := FInstance;
end;

end.
