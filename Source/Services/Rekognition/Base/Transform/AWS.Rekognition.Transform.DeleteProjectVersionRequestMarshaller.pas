unit AWS.Rekognition.Transform.DeleteProjectVersionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DeleteProjectVersionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IDeleteProjectVersionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteProjectVersionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteProjectVersionRequest>, IDeleteProjectVersionRequestMarshaller)
  strict private
    class var FInstance: IDeleteProjectVersionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteProjectVersionRequest): IRequest; overload;
    class function Instance: IDeleteProjectVersionRequestMarshaller; static;
  end;
  
implementation

{ TDeleteProjectVersionRequestMarshaller }

function TDeleteProjectVersionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteProjectVersionRequest(AInput));
end;

function TDeleteProjectVersionRequestMarshaller.Marshall(PublicRequest: TDeleteProjectVersionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DeleteProjectVersion');
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

class constructor TDeleteProjectVersionRequestMarshaller.Create;
begin
  FInstance := TDeleteProjectVersionRequestMarshaller.Create;
end;

class function TDeleteProjectVersionRequestMarshaller.Instance: IDeleteProjectVersionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
