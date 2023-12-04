unit AWS.Rekognition.Transform.DetectLabelsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DetectLabelsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Rekognition.Transform.ImageMarshaller;

type
  IDetectLabelsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDetectLabelsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDetectLabelsRequest>, IDetectLabelsRequestMarshaller)
  strict private
    class var FInstance: IDetectLabelsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDetectLabelsRequest): IRequest; overload;
    class function Instance: IDetectLabelsRequestMarshaller; static;
  end;
  
implementation

{ TDetectLabelsRequestMarshaller }

function TDetectLabelsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDetectLabelsRequest(AInput));
end;

function TDetectLabelsRequestMarshaller.Marshall(PublicRequest: TDetectLabelsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DetectLabels');
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
        if PublicRequest.IsSetImage then
        begin
          Context.Writer.WriteName('Image');
          Context.Writer.WriteBeginObject;
          TImageMarshaller.Instance.Marshall(PublicRequest.Image, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetMaxLabels then
        begin
          Context.Writer.WriteName('MaxLabels');
          Context.Writer.WriteInteger(PublicRequest.MaxLabels);
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

class constructor TDetectLabelsRequestMarshaller.Create;
begin
  FInstance := TDetectLabelsRequestMarshaller.Create;
end;

class function TDetectLabelsRequestMarshaller.Instance: IDetectLabelsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
