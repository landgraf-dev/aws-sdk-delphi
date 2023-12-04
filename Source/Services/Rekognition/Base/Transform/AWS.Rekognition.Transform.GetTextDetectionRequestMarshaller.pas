unit AWS.Rekognition.Transform.GetTextDetectionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.GetTextDetectionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetTextDetectionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetTextDetectionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetTextDetectionRequest>, IGetTextDetectionRequestMarshaller)
  strict private
    class var FInstance: IGetTextDetectionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetTextDetectionRequest): IRequest; overload;
    class function Instance: IGetTextDetectionRequestMarshaller; static;
  end;
  
implementation

{ TGetTextDetectionRequestMarshaller }

function TGetTextDetectionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetTextDetectionRequest(AInput));
end;

function TGetTextDetectionRequestMarshaller.Marshall(PublicRequest: TGetTextDetectionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.GetTextDetection');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-06-27');
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

class constructor TGetTextDetectionRequestMarshaller.Create;
begin
  FInstance := TGetTextDetectionRequestMarshaller.Create;
end;

class function TGetTextDetectionRequestMarshaller.Instance: IGetTextDetectionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
