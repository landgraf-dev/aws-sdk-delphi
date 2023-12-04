unit AWS.Rekognition.Transform.DeleteProjectRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DeleteProjectRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeleteProjectRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteProjectRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteProjectRequest>, IDeleteProjectRequestMarshaller)
  strict private
    class var FInstance: IDeleteProjectRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteProjectRequest): IRequest; overload;
    class function Instance: IDeleteProjectRequestMarshaller; static;
  end;
  
implementation

{ TDeleteProjectRequestMarshaller }

function TDeleteProjectRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteProjectRequest(AInput));
end;

function TDeleteProjectRequestMarshaller.Marshall(PublicRequest: TDeleteProjectRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DeleteProject');
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
        if PublicRequest.IsSetProjectArn then
        begin
          Context.Writer.WriteName('ProjectArn');
          Context.Writer.WriteString(PublicRequest.ProjectArn);
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

class constructor TDeleteProjectRequestMarshaller.Create;
begin
  FInstance := TDeleteProjectRequestMarshaller.Create;
end;

class function TDeleteProjectRequestMarshaller.Instance: IDeleteProjectRequestMarshaller;
begin
  Result := FInstance;
end;

end.
