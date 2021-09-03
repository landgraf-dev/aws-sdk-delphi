unit AWS.Rekognition.Transform.DetectTextRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DetectTextRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Rekognition.Transform.DetectTextFiltersMarshaller, 
  AWS.Rekognition.Transform.ImageMarshaller;

type
  IDetectTextRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDetectTextRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDetectTextRequest>, IDetectTextRequestMarshaller)
  strict private
    class var FInstance: IDetectTextRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDetectTextRequest): IRequest; overload;
    class function Instance: IDetectTextRequestMarshaller; static;
  end;
  
implementation

{ TDetectTextRequestMarshaller }

function TDetectTextRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDetectTextRequest(AInput));
end;

function TDetectTextRequestMarshaller.Marshall(PublicRequest: TDetectTextRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DetectText');
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
        if PublicRequest.IsSetFilters then
        begin
          Context.Writer.WriteName('Filters');
          Context.Writer.WriteBeginObject;
          TDetectTextFiltersMarshaller.Instance.Marshall(PublicRequest.Filters, Context);
          Context.Writer.WriteEndObject;
        end;
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

class constructor TDetectTextRequestMarshaller.Create;
begin
  FInstance := TDetectTextRequestMarshaller.Create;
end;

class function TDetectTextRequestMarshaller.Instance: IDetectTextRequestMarshaller;
begin
  Result := FInstance;
end;

end.
