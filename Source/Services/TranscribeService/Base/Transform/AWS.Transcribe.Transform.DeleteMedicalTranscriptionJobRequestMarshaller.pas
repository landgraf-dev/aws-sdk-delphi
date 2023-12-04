unit AWS.Transcribe.Transform.DeleteMedicalTranscriptionJobRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.DeleteMedicalTranscriptionJobRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeleteMedicalTranscriptionJobRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteMedicalTranscriptionJobRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteMedicalTranscriptionJobRequest>, IDeleteMedicalTranscriptionJobRequestMarshaller)
  strict private
    class var FInstance: IDeleteMedicalTranscriptionJobRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteMedicalTranscriptionJobRequest): IRequest; overload;
    class function Instance: IDeleteMedicalTranscriptionJobRequestMarshaller; static;
  end;
  
implementation

{ TDeleteMedicalTranscriptionJobRequestMarshaller }

function TDeleteMedicalTranscriptionJobRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteMedicalTranscriptionJobRequest(AInput));
end;

function TDeleteMedicalTranscriptionJobRequestMarshaller.Marshall(PublicRequest: TDeleteMedicalTranscriptionJobRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.DeleteMedicalTranscriptionJob');
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

class constructor TDeleteMedicalTranscriptionJobRequestMarshaller.Create;
begin
  FInstance := TDeleteMedicalTranscriptionJobRequestMarshaller.Create;
end;

class function TDeleteMedicalTranscriptionJobRequestMarshaller.Instance: IDeleteMedicalTranscriptionJobRequestMarshaller;
begin
  Result := FInstance;
end;

end.
