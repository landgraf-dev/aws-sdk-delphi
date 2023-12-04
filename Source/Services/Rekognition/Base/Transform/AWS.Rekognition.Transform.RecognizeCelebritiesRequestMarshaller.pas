unit AWS.Rekognition.Transform.RecognizeCelebritiesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.RecognizeCelebritiesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Rekognition.Transform.ImageMarshaller;

type
  IRecognizeCelebritiesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TRecognizeCelebritiesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TRecognizeCelebritiesRequest>, IRecognizeCelebritiesRequestMarshaller)
  strict private
    class var FInstance: IRecognizeCelebritiesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TRecognizeCelebritiesRequest): IRequest; overload;
    class function Instance: IRecognizeCelebritiesRequestMarshaller; static;
  end;
  
implementation

{ TRecognizeCelebritiesRequestMarshaller }

function TRecognizeCelebritiesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TRecognizeCelebritiesRequest(AInput));
end;

function TRecognizeCelebritiesRequestMarshaller.Marshall(PublicRequest: TRecognizeCelebritiesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.RecognizeCelebrities');
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

class constructor TRecognizeCelebritiesRequestMarshaller.Create;
begin
  FInstance := TRecognizeCelebritiesRequestMarshaller.Create;
end;

class function TRecognizeCelebritiesRequestMarshaller.Instance: IRecognizeCelebritiesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
