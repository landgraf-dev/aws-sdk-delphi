unit AWS.Rekognition.Transform.GetCelebrityInfoRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.GetCelebrityInfoRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IGetCelebrityInfoRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetCelebrityInfoRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetCelebrityInfoRequest>, IGetCelebrityInfoRequestMarshaller)
  strict private
    class var FInstance: IGetCelebrityInfoRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetCelebrityInfoRequest): IRequest; overload;
    class function Instance: IGetCelebrityInfoRequestMarshaller; static;
  end;
  
implementation

{ TGetCelebrityInfoRequestMarshaller }

function TGetCelebrityInfoRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetCelebrityInfoRequest(AInput));
end;

function TGetCelebrityInfoRequestMarshaller.Marshall(PublicRequest: TGetCelebrityInfoRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.GetCelebrityInfo');
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
        if PublicRequest.IsSetId then
        begin
          Context.Writer.WriteName('Id');
          Context.Writer.WriteString(PublicRequest.Id);
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

class constructor TGetCelebrityInfoRequestMarshaller.Create;
begin
  FInstance := TGetCelebrityInfoRequestMarshaller.Create;
end;

class function TGetCelebrityInfoRequestMarshaller.Instance: IGetCelebrityInfoRequestMarshaller;
begin
  Result := FInstance;
end;

end.
