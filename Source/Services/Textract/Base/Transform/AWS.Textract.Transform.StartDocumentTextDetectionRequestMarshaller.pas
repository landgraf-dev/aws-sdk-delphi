unit AWS.Textract.Transform.StartDocumentTextDetectionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Textract.Model.StartDocumentTextDetectionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Textract.Transform.DocumentLocationMarshaller, 
  AWS.Textract.Transform.NotificationChannelMarshaller, 
  AWS.Textract.Transform.OutputConfigMarshaller;

type
  IStartDocumentTextDetectionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStartDocumentTextDetectionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStartDocumentTextDetectionRequest>, IStartDocumentTextDetectionRequestMarshaller)
  strict private
    class var FInstance: IStartDocumentTextDetectionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStartDocumentTextDetectionRequest): IRequest; overload;
    class function Instance: IStartDocumentTextDetectionRequestMarshaller; static;
  end;
  
implementation

{ TStartDocumentTextDetectionRequestMarshaller }

function TStartDocumentTextDetectionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStartDocumentTextDetectionRequest(AInput));
end;

function TStartDocumentTextDetectionRequestMarshaller.Marshall(PublicRequest: TStartDocumentTextDetectionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Textract');
  Request.Headers.Add('X-Amz-Target', 'Textract.StartDocumentTextDetection');
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
        if PublicRequest.IsSetClientRequestToken then
        begin
          Context.Writer.WriteName('ClientRequestToken');
          Context.Writer.WriteString(PublicRequest.ClientRequestToken);
        end;
        if PublicRequest.IsSetDocumentLocation then
        begin
          Context.Writer.WriteName('DocumentLocation');
          Context.Writer.WriteBeginObject;
          TDocumentLocationMarshaller.Instance.Marshall(PublicRequest.DocumentLocation, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetJobTag then
        begin
          Context.Writer.WriteName('JobTag');
          Context.Writer.WriteString(PublicRequest.JobTag);
        end;
        if PublicRequest.IsSetKMSKeyId then
        begin
          Context.Writer.WriteName('KMSKeyId');
          Context.Writer.WriteString(PublicRequest.KMSKeyId);
        end;
        if PublicRequest.IsSetNotificationChannel then
        begin
          Context.Writer.WriteName('NotificationChannel');
          Context.Writer.WriteBeginObject;
          TNotificationChannelMarshaller.Instance.Marshall(PublicRequest.NotificationChannel, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetOutputConfig then
        begin
          Context.Writer.WriteName('OutputConfig');
          Context.Writer.WriteBeginObject;
          TOutputConfigMarshaller.Instance.Marshall(PublicRequest.OutputConfig, Context);
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

class constructor TStartDocumentTextDetectionRequestMarshaller.Create;
begin
  FInstance := TStartDocumentTextDetectionRequestMarshaller.Create;
end;

class function TStartDocumentTextDetectionRequestMarshaller.Instance: IStartDocumentTextDetectionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
