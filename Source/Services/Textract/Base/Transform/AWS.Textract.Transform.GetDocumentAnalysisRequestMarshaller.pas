unit AWS.Textract.Transform.GetDocumentAnalysisRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Textract.Model.GetDocumentAnalysisRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IGetDocumentAnalysisRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetDocumentAnalysisRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetDocumentAnalysisRequest>, IGetDocumentAnalysisRequestMarshaller)
  strict private
    class var FInstance: IGetDocumentAnalysisRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetDocumentAnalysisRequest): IRequest; overload;
    class function Instance: IGetDocumentAnalysisRequestMarshaller; static;
  end;
  
implementation

{ TGetDocumentAnalysisRequestMarshaller }

function TGetDocumentAnalysisRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetDocumentAnalysisRequest(AInput));
end;

function TGetDocumentAnalysisRequestMarshaller.Marshall(PublicRequest: TGetDocumentAnalysisRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Textract');
  Request.Headers.Add('X-Amz-Target', 'Textract.GetDocumentAnalysis');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2018-06-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetJobId then
        begin
          Context.Writer.WriteName('JobId');
          Context.Writer.WriteString(PublicRequest.JobId);
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

class constructor TGetDocumentAnalysisRequestMarshaller.Create;
begin
  FInstance := TGetDocumentAnalysisRequestMarshaller.Create;
end;

class function TGetDocumentAnalysisRequestMarshaller.Instance: IGetDocumentAnalysisRequestMarshaller;
begin
  Result := FInstance;
end;

end.
