unit AWS.Rekognition.Transform.DetectCustomLabelsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DetectCustomLabelsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Rekognition.Transform.ImageMarshaller;

type
  IDetectCustomLabelsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDetectCustomLabelsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDetectCustomLabelsRequest>, IDetectCustomLabelsRequestMarshaller)
  strict private
    class var FInstance: IDetectCustomLabelsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDetectCustomLabelsRequest): IRequest; overload;
    class function Instance: IDetectCustomLabelsRequestMarshaller; static;
  end;
  
implementation

{ TDetectCustomLabelsRequestMarshaller }

function TDetectCustomLabelsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDetectCustomLabelsRequest(AInput));
end;

function TDetectCustomLabelsRequestMarshaller.Marshall(PublicRequest: TDetectCustomLabelsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DetectCustomLabels');
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
        if PublicRequest.IsSetMaxResults then
        begin
          Context.Writer.WriteName('MaxResults');
          Context.Writer.WriteInteger(PublicRequest.MaxResults);
        end;
        if PublicRequest.IsSetMinConfidence then
        begin
          Context.Writer.WriteName('MinConfidence');
          Context.Writer.WriteDouble(PublicRequest.MinConfidence);
        end;
        if PublicRequest.IsSetProjectVersionArn then
        begin
          Context.Writer.WriteName('ProjectVersionArn');
          Context.Writer.WriteString(PublicRequest.ProjectVersionArn);
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

class constructor TDetectCustomLabelsRequestMarshaller.Create;
begin
  FInstance := TDetectCustomLabelsRequestMarshaller.Create;
end;

class function TDetectCustomLabelsRequestMarshaller.Instance: IDetectCustomLabelsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
