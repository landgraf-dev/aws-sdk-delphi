unit AWS.Translate.Transform.ListTextTranslationJobsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.ListTextTranslationJobsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Translate.Transform.TextTranslationJobFilterMarshaller;

type
  IListTextTranslationJobsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListTextTranslationJobsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListTextTranslationJobsRequest>, IListTextTranslationJobsRequestMarshaller)
  strict private
    class var FInstance: IListTextTranslationJobsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListTextTranslationJobsRequest): IRequest; overload;
    class function Instance: IListTextTranslationJobsRequestMarshaller; static;
  end;
  
implementation

{ TListTextTranslationJobsRequestMarshaller }

function TListTextTranslationJobsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListTextTranslationJobsRequest(AInput));
end;

function TListTextTranslationJobsRequestMarshaller.Marshall(PublicRequest: TListTextTranslationJobsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Translate');
  Request.Headers.Add('X-Amz-Target', 'AWSShineFrontendService_20170701.ListTextTranslationJobs');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2017-07-01');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetFilter then
        begin
          Context.Writer.WriteName('Filter');
          Context.Writer.WriteBeginObject;
          TTextTranslationJobFilterMarshaller.Instance.Marshall(PublicRequest.Filter, Context);
          Context.Writer.WriteEndObject;
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

class constructor TListTextTranslationJobsRequestMarshaller.Create;
begin
  FInstance := TListTextTranslationJobsRequestMarshaller.Create;
end;

class function TListTextTranslationJobsRequestMarshaller.Instance: IListTextTranslationJobsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
