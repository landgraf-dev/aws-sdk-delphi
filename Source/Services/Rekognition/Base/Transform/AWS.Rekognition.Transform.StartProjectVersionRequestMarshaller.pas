unit AWS.Rekognition.Transform.StartProjectVersionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.StartProjectVersionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IStartProjectVersionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStartProjectVersionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStartProjectVersionRequest>, IStartProjectVersionRequestMarshaller)
  strict private
    class var FInstance: IStartProjectVersionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStartProjectVersionRequest): IRequest; overload;
    class function Instance: IStartProjectVersionRequestMarshaller; static;
  end;
  
implementation

{ TStartProjectVersionRequestMarshaller }

function TStartProjectVersionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStartProjectVersionRequest(AInput));
end;

function TStartProjectVersionRequestMarshaller.Marshall(PublicRequest: TStartProjectVersionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.StartProjectVersion');
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
        if PublicRequest.IsSetMinInferenceUnits then
        begin
          Context.Writer.WriteName('MinInferenceUnits');
          Context.Writer.WriteInteger(PublicRequest.MinInferenceUnits);
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

class constructor TStartProjectVersionRequestMarshaller.Create;
begin
  FInstance := TStartProjectVersionRequestMarshaller.Create;
end;

class function TStartProjectVersionRequestMarshaller.Instance: IStartProjectVersionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
