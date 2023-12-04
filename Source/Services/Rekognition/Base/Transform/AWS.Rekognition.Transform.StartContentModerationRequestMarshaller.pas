unit AWS.Rekognition.Transform.StartContentModerationRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.StartContentModerationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Rekognition.Transform.NotificationChannelMarshaller, 
  AWS.Rekognition.Transform.VideoMarshaller;

type
  IStartContentModerationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStartContentModerationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStartContentModerationRequest>, IStartContentModerationRequestMarshaller)
  strict private
    class var FInstance: IStartContentModerationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStartContentModerationRequest): IRequest; overload;
    class function Instance: IStartContentModerationRequestMarshaller; static;
  end;
  
implementation

{ TStartContentModerationRequestMarshaller }

function TStartContentModerationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStartContentModerationRequest(AInput));
end;

function TStartContentModerationRequestMarshaller.Marshall(PublicRequest: TStartContentModerationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.StartContentModeration');
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
        if PublicRequest.IsSetJobTag then
        begin
          Context.Writer.WriteName('JobTag');
          Context.Writer.WriteString(PublicRequest.JobTag);
        end;
        if PublicRequest.IsSetMinConfidence then
        begin
          Context.Writer.WriteName('MinConfidence');
          Context.Writer.WriteDouble(PublicRequest.MinConfidence);
        end;
        if PublicRequest.IsSetNotificationChannel then
        begin
          Context.Writer.WriteName('NotificationChannel');
          Context.Writer.WriteBeginObject;
          TNotificationChannelMarshaller.Instance.Marshall(PublicRequest.NotificationChannel, Context);
          Context.Writer.WriteEndObject;
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

class constructor TStartContentModerationRequestMarshaller.Create;
begin
  FInstance := TStartContentModerationRequestMarshaller.Create;
end;

class function TStartContentModerationRequestMarshaller.Instance: IStartContentModerationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
