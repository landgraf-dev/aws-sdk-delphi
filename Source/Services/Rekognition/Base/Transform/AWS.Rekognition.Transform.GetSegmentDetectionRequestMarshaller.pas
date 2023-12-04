unit AWS.Rekognition.Transform.GetSegmentDetectionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.GetSegmentDetectionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetSegmentDetectionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetSegmentDetectionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetSegmentDetectionRequest>, IGetSegmentDetectionRequestMarshaller)
  strict private
    class var FInstance: IGetSegmentDetectionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetSegmentDetectionRequest): IRequest; overload;
    class function Instance: IGetSegmentDetectionRequestMarshaller; static;
  end;
  
implementation

{ TGetSegmentDetectionRequestMarshaller }

function TGetSegmentDetectionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetSegmentDetectionRequest(AInput));
end;

function TGetSegmentDetectionRequestMarshaller.Marshall(PublicRequest: TGetSegmentDetectionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.GetSegmentDetection');
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

class constructor TGetSegmentDetectionRequestMarshaller.Create;
begin
  FInstance := TGetSegmentDetectionRequestMarshaller.Create;
end;

class function TGetSegmentDetectionRequestMarshaller.Instance: IGetSegmentDetectionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
