unit AWS.Rekognition.Transform.DetectFacesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DetectFacesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Rekognition.Transform.ImageMarshaller;

type
  IDetectFacesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDetectFacesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDetectFacesRequest>, IDetectFacesRequestMarshaller)
  strict private
    class var FInstance: IDetectFacesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDetectFacesRequest): IRequest; overload;
    class function Instance: IDetectFacesRequestMarshaller; static;
  end;
  
implementation

{ TDetectFacesRequestMarshaller }

function TDetectFacesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDetectFacesRequest(AInput));
end;

function TDetectFacesRequestMarshaller.Marshall(PublicRequest: TDetectFacesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DetectFaces');
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
        if PublicRequest.IsSetAttributes then
        begin
          Context.Writer.WriteName('Attributes');
          Context.Writer.WriteBeginArray;
          for var PublicRequestAttributesListValue in PublicRequest.Attributes do
            Context.Writer.WriteString(PublicRequestAttributesListValue);
          Context.Writer.WriteEndArray;
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

class constructor TDetectFacesRequestMarshaller.Create;
begin
  FInstance := TDetectFacesRequestMarshaller.Create;
end;

class function TDetectFacesRequestMarshaller.Instance: IDetectFacesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
