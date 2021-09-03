unit AWS.Rekognition.Transform.StartSegmentDetectionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.StartSegmentDetectionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Rekognition.Transform.StartSegmentDetectionFiltersMarshaller, 
  AWS.Rekognition.Transform.NotificationChannelMarshaller, 
  AWS.Rekognition.Transform.VideoMarshaller;

type
  IStartSegmentDetectionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStartSegmentDetectionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStartSegmentDetectionRequest>, IStartSegmentDetectionRequestMarshaller)
  strict private
    class var FInstance: IStartSegmentDetectionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStartSegmentDetectionRequest): IRequest; overload;
    class function Instance: IStartSegmentDetectionRequestMarshaller; static;
  end;
  
implementation

{ TStartSegmentDetectionRequestMarshaller }

function TStartSegmentDetectionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStartSegmentDetectionRequest(AInput));
end;

function TStartSegmentDetectionRequestMarshaller.Marshall(PublicRequest: TStartSegmentDetectionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.StartSegmentDetection');
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
        if PublicRequest.IsSetClientRequestToken then
        begin
          Context.Writer.WriteName('ClientRequestToken');
          Context.Writer.WriteString(PublicRequest.ClientRequestToken);
        end;
        if PublicRequest.IsSetFilters then
        begin
          Context.Writer.WriteName('Filters');
          Context.Writer.WriteBeginObject;
          TStartSegmentDetectionFiltersMarshaller.Instance.Marshall(PublicRequest.Filters, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetJobTag then
        begin
          Context.Writer.WriteName('JobTag');
          Context.Writer.WriteString(PublicRequest.JobTag);
        end;
        if PublicRequest.IsSetNotificationChannel then
        begin
          Context.Writer.WriteName('NotificationChannel');
          Context.Writer.WriteBeginObject;
          TNotificationChannelMarshaller.Instance.Marshall(PublicRequest.NotificationChannel, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetSegmentTypes then
        begin
          Context.Writer.WriteName('SegmentTypes');
          Context.Writer.WriteBeginArray;
          for var PublicRequestSegmentTypesListValue in PublicRequest.SegmentTypes do
            Context.Writer.WriteString(PublicRequestSegmentTypesListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetVideo then
        begin
          Context.Writer.WriteName('Video');
          Context.Writer.WriteBeginObject;
          TVideoMarshaller.Instance.Marshall(PublicRequest.Video, Context);
          Context.Writer.WriteEndObject;
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

class constructor TStartSegmentDetectionRequestMarshaller.Create;
begin
  FInstance := TStartSegmentDetectionRequestMarshaller.Create;
end;

class function TStartSegmentDetectionRequestMarshaller.Instance: IStartSegmentDetectionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
