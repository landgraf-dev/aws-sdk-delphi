unit AWS.Rekognition.Transform.CreateProjectRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.CreateProjectRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  ICreateProjectRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateProjectRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateProjectRequest>, ICreateProjectRequestMarshaller)
  strict private
    class var FInstance: ICreateProjectRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateProjectRequest): IRequest; overload;
    class function Instance: ICreateProjectRequestMarshaller; static;
  end;
  
implementation

{ TCreateProjectRequestMarshaller }

function TCreateProjectRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateProjectRequest(AInput));
end;

function TCreateProjectRequestMarshaller.Marshall(PublicRequest: TCreateProjectRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.CreateProject');
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
        if PublicRequest.IsSetProjectName then
        begin
          Context.Writer.WriteName('ProjectName');
          Context.Writer.WriteString(PublicRequest.ProjectName);
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

class constructor TCreateProjectRequestMarshaller.Create;
begin
  FInstance := TCreateProjectRequestMarshaller.Create;
end;

class function TCreateProjectRequestMarshaller.Instance: ICreateProjectRequestMarshaller;
begin
  Result := FInstance;
end;

end.
