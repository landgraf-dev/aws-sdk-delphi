unit AWS.Rekognition.Transform.CreateProjectVersionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.CreateProjectVersionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Rekognition.Transform.OutputConfigMarshaller, 
  AWS.Rekognition.Transform.TestingDataMarshaller, 
  AWS.Rekognition.Transform.TrainingDataMarshaller;

type
  ICreateProjectVersionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateProjectVersionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateProjectVersionRequest>, ICreateProjectVersionRequestMarshaller)
  strict private
    class var FInstance: ICreateProjectVersionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateProjectVersionRequest): IRequest; overload;
    class function Instance: ICreateProjectVersionRequestMarshaller; static;
  end;
  
implementation

{ TCreateProjectVersionRequestMarshaller }

function TCreateProjectVersionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateProjectVersionRequest(AInput));
end;

function TCreateProjectVersionRequestMarshaller.Marshall(PublicRequest: TCreateProjectVersionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.CreateProjectVersion');
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
        if PublicRequest.IsSetKmsKeyId then
        begin
          Context.Writer.WriteName('KmsKeyId');
          Context.Writer.WriteString(PublicRequest.KmsKeyId);
        end;
        if PublicRequest.IsSetOutputConfig then
        begin
          Context.Writer.WriteName('OutputConfig');
          Context.Writer.WriteBeginObject;
          TOutputConfigMarshaller.Instance.Marshall(PublicRequest.OutputConfig, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetProjectArn then
        begin
          Context.Writer.WriteName('ProjectArn');
          Context.Writer.WriteString(PublicRequest.ProjectArn);
        end;
        if PublicRequest.IsSetTags then
        begin
          Context.Writer.WriteName('Tags');
          Context.Writer.WriteBeginObject;
          for var PublicRequestTagsKvp in PublicRequest.Tags do
          begin
            Context.Writer.WriteName(PublicRequestTagsKvp.Key);
            var PublicRequestTagsValue := PublicRequestTagsKvp.Value;
            Context.Writer.WriteString(PublicRequestTagsValue);
          end;
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetTestingData then
        begin
          Context.Writer.WriteName('TestingData');
          Context.Writer.WriteBeginObject;
          TTestingDataMarshaller.Instance.Marshall(PublicRequest.TestingData, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetTrainingData then
        begin
          Context.Writer.WriteName('TrainingData');
          Context.Writer.WriteBeginObject;
          TTrainingDataMarshaller.Instance.Marshall(PublicRequest.TrainingData, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetVersionName then
        begin
          Context.Writer.WriteName('VersionName');
          Context.Writer.WriteString(PublicRequest.VersionName);
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

class constructor TCreateProjectVersionRequestMarshaller.Create;
begin
  FInstance := TCreateProjectVersionRequestMarshaller.Create;
end;

class function TCreateProjectVersionRequestMarshaller.Instance: ICreateProjectVersionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
