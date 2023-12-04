unit AWS.Transcribe.Transform.ListMedicalTranscriptionJobsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.ListMedicalTranscriptionJobsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IListMedicalTranscriptionJobsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListMedicalTranscriptionJobsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListMedicalTranscriptionJobsRequest>, IListMedicalTranscriptionJobsRequestMarshaller)
  strict private
    class var FInstance: IListMedicalTranscriptionJobsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListMedicalTranscriptionJobsRequest): IRequest; overload;
    class function Instance: IListMedicalTranscriptionJobsRequestMarshaller; static;
  end;
  
implementation

{ TListMedicalTranscriptionJobsRequestMarshaller }

function TListMedicalTranscriptionJobsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListMedicalTranscriptionJobsRequest(AInput));
end;

function TListMedicalTranscriptionJobsRequestMarshaller.Marshall(PublicRequest: TListMedicalTranscriptionJobsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.ListMedicalTranscriptionJobs');
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
        if PublicRequest.IsSetJobNameContains then
        begin
          Context.Writer.WriteName('JobNameContains');
          Context.Writer.WriteString(PublicRequest.JobNameContains);
        end;
        if PublicRequest.IsSetMaxResults then
        begin
          Context.Writer.WriteName('MaxResults');
          Context.Writer.WriteInteger(PublicRequest.MaxResults);
        end;
        if PublicRequest.IsSetNextToken then
        begin
          Context.Writer.WriteName('NextToken');
          Context.Writer.WriteString(PublicRequest.NextToken);
        end;
        if PublicRequest.IsSetStatus then
        begin
          Context.Writer.WriteName('Status');
          Context.Writer.WriteString(PublicRequest.Status.Value);
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

class constructor TListMedicalTranscriptionJobsRequestMarshaller.Create;
begin
  FInstance := TListMedicalTranscriptionJobsRequestMarshaller.Create;
end;

class function TListMedicalTranscriptionJobsRequestMarshaller.Instance: IListMedicalTranscriptionJobsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
