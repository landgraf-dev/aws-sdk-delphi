unit AWS.Rekognition.Transform.SearchFacesByImageRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.SearchFacesByImageRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Rekognition.Transform.ImageMarshaller;

type
  ISearchFacesByImageRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSearchFacesByImageRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSearchFacesByImageRequest>, ISearchFacesByImageRequestMarshaller)
  strict private
    class var FInstance: ISearchFacesByImageRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSearchFacesByImageRequest): IRequest; overload;
    class function Instance: ISearchFacesByImageRequestMarshaller; static;
  end;
  
implementation

{ TSearchFacesByImageRequestMarshaller }

function TSearchFacesByImageRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSearchFacesByImageRequest(AInput));
end;

function TSearchFacesByImageRequestMarshaller.Marshall(PublicRequest: TSearchFacesByImageRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.SearchFacesByImage');
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
        if PublicRequest.IsSetCollectionId then
        begin
          Context.Writer.WriteName('CollectionId');
          Context.Writer.WriteString(PublicRequest.CollectionId);
        end;
        if PublicRequest.IsSetFaceMatchThreshold then
        begin
          Context.Writer.WriteName('FaceMatchThreshold');
          Context.Writer.WriteDouble(PublicRequest.FaceMatchThreshold);
        end;
        if PublicRequest.IsSetImage then
        begin
          Context.Writer.WriteName('Image');
          Context.Writer.WriteBeginObject;
          TImageMarshaller.Instance.Marshall(PublicRequest.Image, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetMaxFaces then
        begin
          Context.Writer.WriteName('MaxFaces');
          Context.Writer.WriteInteger(PublicRequest.MaxFaces);
        end;
        if PublicRequest.IsSetQualityFilter then
        begin
          Context.Writer.WriteName('QualityFilter');
          Context.Writer.WriteString(PublicRequest.QualityFilter.Value);
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

class constructor TSearchFacesByImageRequestMarshaller.Create;
begin
  FInstance := TSearchFacesByImageRequestMarshaller.Create;
end;

class function TSearchFacesByImageRequestMarshaller.Instance: ISearchFacesByImageRequestMarshaller;
begin
  Result := FInstance;
end;

end.
