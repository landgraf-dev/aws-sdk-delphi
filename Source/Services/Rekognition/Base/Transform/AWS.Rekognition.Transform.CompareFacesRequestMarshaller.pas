unit AWS.Rekognition.Transform.CompareFacesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.CompareFacesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Rekognition.Transform.ImageMarshaller;

type
  ICompareFacesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCompareFacesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCompareFacesRequest>, ICompareFacesRequestMarshaller)
  strict private
    class var FInstance: ICompareFacesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCompareFacesRequest): IRequest; overload;
    class function Instance: ICompareFacesRequestMarshaller; static;
  end;
  
implementation

{ TCompareFacesRequestMarshaller }

function TCompareFacesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCompareFacesRequest(AInput));
end;

function TCompareFacesRequestMarshaller.Marshall(PublicRequest: TCompareFacesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.CompareFaces');
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
        if PublicRequest.IsSetQualityFilter then
        begin
          Context.Writer.WriteName('QualityFilter');
          Context.Writer.WriteString(PublicRequest.QualityFilter.Value);
        end;
        if PublicRequest.IsSetSimilarityThreshold then
        begin
          Context.Writer.WriteName('SimilarityThreshold');
          Context.Writer.WriteDouble(PublicRequest.SimilarityThreshold);
        end;
        if PublicRequest.IsSetSourceImage then
        begin
          Context.Writer.WriteName('SourceImage');
          Context.Writer.WriteBeginObject;
          TImageMarshaller.Instance.Marshall(PublicRequest.SourceImage, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetTargetImage then
        begin
          Context.Writer.WriteName('TargetImage');
          Context.Writer.WriteBeginObject;
          TImageMarshaller.Instance.Marshall(PublicRequest.TargetImage, Context);
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

class constructor TCompareFacesRequestMarshaller.Create;
begin
  FInstance := TCompareFacesRequestMarshaller.Create;
end;

class function TCompareFacesRequestMarshaller.Instance: ICompareFacesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
