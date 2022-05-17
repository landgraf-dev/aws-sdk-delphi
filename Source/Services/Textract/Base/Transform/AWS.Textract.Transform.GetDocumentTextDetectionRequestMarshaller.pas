unit AWS.Textract.Transform.GetDocumentTextDetectionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Textract.Model.GetDocumentTextDetectionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IGetDocumentTextDetectionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetDocumentTextDetectionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetDocumentTextDetectionRequest>, IGetDocumentTextDetectionRequestMarshaller)
  strict private
    class var FInstance: IGetDocumentTextDetectionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetDocumentTextDetectionRequest): IRequest; overload;
    class function Instance: IGetDocumentTextDetectionRequestMarshaller; static;
  end;
  
implementation

{ TGetDocumentTextDetectionRequestMarshaller }

function TGetDocumentTextDetectionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetDocumentTextDetectionRequest(AInput));
end;

function TGetDocumentTextDetectionRequestMarshaller.Marshall(PublicRequest: TGetDocumentTextDetectionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Textract');
  Request.Headers.Add('X-Amz-Target', 'Textract.GetDocumentTextDetection');
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

class constructor TGetDocumentTextDetectionRequestMarshaller.Create;
begin
  FInstance := TGetDocumentTextDetectionRequestMarshaller.Create;
end;

class function TGetDocumentTextDetectionRequestMarshaller.Instance: IGetDocumentTextDetectionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
