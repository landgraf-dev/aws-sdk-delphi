unit AWS.Rekognition.Transform.SearchFacesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.SearchFacesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  ISearchFacesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSearchFacesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSearchFacesRequest>, ISearchFacesRequestMarshaller)
  strict private
    class var FInstance: ISearchFacesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSearchFacesRequest): IRequest; overload;
    class function Instance: ISearchFacesRequestMarshaller; static;
  end;
  
implementation

{ TSearchFacesRequestMarshaller }

function TSearchFacesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSearchFacesRequest(AInput));
end;

function TSearchFacesRequestMarshaller.Marshall(PublicRequest: TSearchFacesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.SearchFaces');
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
        if PublicRequest.IsSetFaceId then
        begin
          Context.Writer.WriteName('FaceId');
          Context.Writer.WriteString(PublicRequest.FaceId);
        end;
        if PublicRequest.IsSetFaceMatchThreshold then
        begin
          Context.Writer.WriteName('FaceMatchThreshold');
          Context.Writer.WriteDouble(PublicRequest.FaceMatchThreshold);
        end;
        if PublicRequest.IsSetMaxFaces then
        begin
          Context.Writer.WriteName('MaxFaces');
          Context.Writer.WriteInteger(PublicRequest.MaxFaces);
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

class constructor TSearchFacesRequestMarshaller.Create;
begin
  FInstance := TSearchFacesRequestMarshaller.Create;
end;

class function TSearchFacesRequestMarshaller.Instance: ISearchFacesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
