unit AWS.Rekognition.Transform.StopProjectVersionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.StopProjectVersionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IStopProjectVersionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStopProjectVersionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStopProjectVersionRequest>, IStopProjectVersionRequestMarshaller)
  strict private
    class var FInstance: IStopProjectVersionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStopProjectVersionRequest): IRequest; overload;
    class function Instance: IStopProjectVersionRequestMarshaller; static;
  end;
  
implementation

{ TStopProjectVersionRequestMarshaller }

function TStopProjectVersionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStopProjectVersionRequest(AInput));
end;

function TStopProjectVersionRequestMarshaller.Marshall(PublicRequest: TStopProjectVersionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.StopProjectVersion');
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

class constructor TStopProjectVersionRequestMarshaller.Create;
begin
  FInstance := TStopProjectVersionRequestMarshaller.Create;
end;

class function TStopProjectVersionRequestMarshaller.Instance: IStopProjectVersionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
