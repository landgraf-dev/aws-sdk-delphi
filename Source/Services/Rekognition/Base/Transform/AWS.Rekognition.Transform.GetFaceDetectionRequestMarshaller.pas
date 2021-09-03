unit AWS.Rekognition.Transform.GetFaceDetectionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.GetFaceDetectionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IGetFaceDetectionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetFaceDetectionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetFaceDetectionRequest>, IGetFaceDetectionRequestMarshaller)
  strict private
    class var FInstance: IGetFaceDetectionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetFaceDetectionRequest): IRequest; overload;
    class function Instance: IGetFaceDetectionRequestMarshaller; static;
  end;
  
implementation

{ TGetFaceDetectionRequestMarshaller }

function TGetFaceDetectionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetFaceDetectionRequest(AInput));
end;

function TGetFaceDetectionRequestMarshaller.Marshall(PublicRequest: TGetFaceDetectionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.GetFaceDetection');
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

class constructor TGetFaceDetectionRequestMarshaller.Create;
begin
  FInstance := TGetFaceDetectionRequestMarshaller.Create;
end;

class function TGetFaceDetectionRequestMarshaller.Instance: IGetFaceDetectionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
