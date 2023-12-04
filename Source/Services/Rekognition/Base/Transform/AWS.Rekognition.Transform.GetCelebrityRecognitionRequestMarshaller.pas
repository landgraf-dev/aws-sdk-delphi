unit AWS.Rekognition.Transform.GetCelebrityRecognitionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.GetCelebrityRecognitionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetCelebrityRecognitionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetCelebrityRecognitionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetCelebrityRecognitionRequest>, IGetCelebrityRecognitionRequestMarshaller)
  strict private
    class var FInstance: IGetCelebrityRecognitionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetCelebrityRecognitionRequest): IRequest; overload;
    class function Instance: IGetCelebrityRecognitionRequestMarshaller; static;
  end;
  
implementation

{ TGetCelebrityRecognitionRequestMarshaller }

function TGetCelebrityRecognitionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetCelebrityRecognitionRequest(AInput));
end;

function TGetCelebrityRecognitionRequestMarshaller.Marshall(PublicRequest: TGetCelebrityRecognitionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.GetCelebrityRecognition');
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
        if PublicRequest.IsSetJobId then
        begin
          Context.Writer.WriteName('JobId');
          Context.Writer.WriteString(PublicRequest.JobId);
        end;
        if PublicRequest.IsSetMaxResults then
        begin
          Context.Writer.WriteName('MaxResults');
          Context.Writer.WriteInteger(PublicRequest.MaxResults);
        end;
        if PublicRequest.IsSetNextToken then
        begin
          Context.Writer.WriteName('NextToken');
          Context.Writer.WriteString(PublicRequest.NextToken);
        end;
        if PublicRequest.IsSetSortBy then
        begin
          Context.Writer.WriteName('SortBy');
          Context.Writer.WriteString(PublicRequest.SortBy.Value);
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

class constructor TGetCelebrityRecognitionRequestMarshaller.Create;
begin
  FInstance := TGetCelebrityRecognitionRequestMarshaller.Create;
end;

class function TGetCelebrityRecognitionRequestMarshaller.Instance: IGetCelebrityRecognitionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
