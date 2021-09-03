unit AWS.Rekognition.Transform.IndexFacesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.IndexFacesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Rekognition.Transform.ImageMarshaller;

type
  IIndexFacesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TIndexFacesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TIndexFacesRequest>, IIndexFacesRequestMarshaller)
  strict private
    class var FInstance: IIndexFacesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TIndexFacesRequest): IRequest; overload;
    class function Instance: IIndexFacesRequestMarshaller; static;
  end;
  
implementation

{ TIndexFacesRequestMarshaller }

function TIndexFacesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TIndexFacesRequest(AInput));
end;

function TIndexFacesRequestMarshaller.Marshall(PublicRequest: TIndexFacesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.IndexFaces');
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
        if PublicRequest.IsSetDetectionAttributes then
        begin
          Context.Writer.WriteName('DetectionAttributes');
          Context.Writer.WriteBeginArray;
          for var PublicRequestDetectionAttributesListValue in PublicRequest.DetectionAttributes do
            Context.Writer.WriteString(PublicRequestDetectionAttributesListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetExternalImageId then
        begin
          Context.Writer.WriteName('ExternalImageId');
          Context.Writer.WriteString(PublicRequest.ExternalImageId);
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

class constructor TIndexFacesRequestMarshaller.Create;
begin
  FInstance := TIndexFacesRequestMarshaller.Create;
end;

class function TIndexFacesRequestMarshaller.Instance: IIndexFacesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
