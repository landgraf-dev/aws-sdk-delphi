unit AWS.Textract.Transform.GetExpenseAnalysisRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Textract.Model.GetExpenseAnalysisRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetExpenseAnalysisRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetExpenseAnalysisRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetExpenseAnalysisRequest>, IGetExpenseAnalysisRequestMarshaller)
  strict private
    class var FInstance: IGetExpenseAnalysisRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetExpenseAnalysisRequest): IRequest; overload;
    class function Instance: IGetExpenseAnalysisRequestMarshaller; static;
  end;
  
implementation

{ TGetExpenseAnalysisRequestMarshaller }

function TGetExpenseAnalysisRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetExpenseAnalysisRequest(AInput));
end;

function TGetExpenseAnalysisRequestMarshaller.Marshall(PublicRequest: TGetExpenseAnalysisRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Textract');
  Request.Headers.Add('X-Amz-Target', 'Textract.GetExpenseAnalysis');
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

class constructor TGetExpenseAnalysisRequestMarshaller.Create;
begin
  FInstance := TGetExpenseAnalysisRequestMarshaller.Create;
end;

class function TGetExpenseAnalysisRequestMarshaller.Instance: IGetExpenseAnalysisRequestMarshaller;
begin
  Result := FInstance;
end;

end.
