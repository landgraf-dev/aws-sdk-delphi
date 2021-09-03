unit AWS.Rekognition.Transform.DetectModerationLabelsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DetectModerationLabelsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Rekognition.Transform.HumanLoopConfigMarshaller, 
  AWS.Rekognition.Transform.ImageMarshaller;

type
  IDetectModerationLabelsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDetectModerationLabelsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDetectModerationLabelsRequest>, IDetectModerationLabelsRequestMarshaller)
  strict private
    class var FInstance: IDetectModerationLabelsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDetectModerationLabelsRequest): IRequest; overload;
    class function Instance: IDetectModerationLabelsRequestMarshaller; static;
  end;
  
implementation

{ TDetectModerationLabelsRequestMarshaller }

function TDetectModerationLabelsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDetectModerationLabelsRequest(AInput));
end;

function TDetectModerationLabelsRequestMarshaller.Marshall(PublicRequest: TDetectModerationLabelsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DetectModerationLabels');
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
        if PublicRequest.IsSetHumanLoopConfig then
        begin
          Context.Writer.WriteName('HumanLoopConfig');
          Context.Writer.WriteBeginObject;
          THumanLoopConfigMarshaller.Instance.Marshall(PublicRequest.HumanLoopConfig, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetImage then
        begin
          Context.Writer.WriteName('Image');
          Context.Writer.WriteBeginObject;
          TImageMarshaller.Instance.Marshall(PublicRequest.Image, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetMinConfidence then
        begin
          Context.Writer.WriteName('MinConfidence');
          Context.Writer.WriteDouble(PublicRequest.MinConfidence);
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

class constructor TDetectModerationLabelsRequestMarshaller.Create;
begin
  FInstance := TDetectModerationLabelsRequestMarshaller.Create;
end;

class function TDetectModerationLabelsRequestMarshaller.Instance: IDetectModerationLabelsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
