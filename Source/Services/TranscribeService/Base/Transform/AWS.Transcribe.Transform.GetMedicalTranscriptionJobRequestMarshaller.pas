unit AWS.Transcribe.Transform.GetMedicalTranscriptionJobRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.GetMedicalTranscriptionJobRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IGetMedicalTranscriptionJobRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetMedicalTranscriptionJobRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetMedicalTranscriptionJobRequest>, IGetMedicalTranscriptionJobRequestMarshaller)
  strict private
    class var FInstance: IGetMedicalTranscriptionJobRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetMedicalTranscriptionJobRequest): IRequest; overload;
    class function Instance: IGetMedicalTranscriptionJobRequestMarshaller; static;
  end;
  
implementation

{ TGetMedicalTranscriptionJobRequestMarshaller }

function TGetMedicalTranscriptionJobRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetMedicalTranscriptionJobRequest(AInput));
end;

function TGetMedicalTranscriptionJobRequestMarshaller.Marshall(PublicRequest: TGetMedicalTranscriptionJobRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.GetMedicalTranscriptionJob');
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
        if PublicRequest.IsSetMedicalTranscriptionJobName then
        begin
          Context.Writer.WriteName('MedicalTranscriptionJobName');
          Context.Writer.WriteString(PublicRequest.MedicalTranscriptionJobName);
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

class constructor TGetMedicalTranscriptionJobRequestMarshaller.Create;
begin
  FInstance := TGetMedicalTranscriptionJobRequestMarshaller.Create;
end;

class function TGetMedicalTranscriptionJobRequestMarshaller.Instance: IGetMedicalTranscriptionJobRequestMarshaller;
begin
  Result := FInstance;
end;

end.
