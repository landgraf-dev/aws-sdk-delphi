unit AWS.Transcribe.Transform.ListCallAnalyticsJobsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.ListCallAnalyticsJobsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IListCallAnalyticsJobsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListCallAnalyticsJobsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListCallAnalyticsJobsRequest>, IListCallAnalyticsJobsRequestMarshaller)
  strict private
    class var FInstance: IListCallAnalyticsJobsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListCallAnalyticsJobsRequest): IRequest; overload;
    class function Instance: IListCallAnalyticsJobsRequestMarshaller; static;
  end;
  
implementation

{ TListCallAnalyticsJobsRequestMarshaller }

function TListCallAnalyticsJobsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListCallAnalyticsJobsRequest(AInput));
end;

function TListCallAnalyticsJobsRequestMarshaller.Marshall(PublicRequest: TListCallAnalyticsJobsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.ListCallAnalyticsJobs');
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

class constructor TListCallAnalyticsJobsRequestMarshaller.Create;
begin
  FInstance := TListCallAnalyticsJobsRequestMarshaller.Create;
end;

class function TListCallAnalyticsJobsRequestMarshaller.Instance: IListCallAnalyticsJobsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
