unit AWS.Rekognition.Transform.CreateStreamProcessorRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.CreateStreamProcessorRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Rekognition.Transform.StreamProcessorDataSharingPreferenceMarshaller, 
  AWS.Rekognition.Transform.StreamProcessorInputMarshaller, 
  AWS.Rekognition.Transform.StreamProcessorNotificationChannelMarshaller, 
  AWS.Rekognition.Transform.StreamProcessorOutputMarshaller, 
  AWS.Rekognition.Transform.RegionOfInterestMarshaller, 
  AWS.Rekognition.Transform.StreamProcessorSettingsMarshaller;

type
  ICreateStreamProcessorRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateStreamProcessorRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateStreamProcessorRequest>, ICreateStreamProcessorRequestMarshaller)
  strict private
    class var FInstance: ICreateStreamProcessorRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateStreamProcessorRequest): IRequest; overload;
    class function Instance: ICreateStreamProcessorRequestMarshaller; static;
  end;
  
implementation

{ TCreateStreamProcessorRequestMarshaller }

function TCreateStreamProcessorRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateStreamProcessorRequest(AInput));
end;

function TCreateStreamProcessorRequestMarshaller.Marshall(PublicRequest: TCreateStreamProcessorRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.CreateStreamProcessor');
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
        if PublicRequest.IsSetDataSharingPreference then
        begin
          Context.Writer.WriteName('DataSharingPreference');
          Context.Writer.WriteBeginObject;
          TStreamProcessorDataSharingPreferenceMarshaller.Instance.Marshall(PublicRequest.DataSharingPreference, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetInput then
        begin
          Context.Writer.WriteName('Input');
          Context.Writer.WriteBeginObject;
          TStreamProcessorInputMarshaller.Instance.Marshall(PublicRequest.Input, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetKmsKeyId then
        begin
          Context.Writer.WriteName('KmsKeyId');
          Context.Writer.WriteString(PublicRequest.KmsKeyId);
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
        end;
        if PublicRequest.IsSetNotificationChannel then
        begin
          Context.Writer.WriteName('NotificationChannel');
          Context.Writer.WriteBeginObject;
          TStreamProcessorNotificationChannelMarshaller.Instance.Marshall(PublicRequest.NotificationChannel, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetOutput then
        begin
          Context.Writer.WriteName('Output');
          Context.Writer.WriteBeginObject;
          TStreamProcessorOutputMarshaller.Instance.Marshall(PublicRequest.Output, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetRegionsOfInterest then
        begin
          Context.Writer.WriteName('RegionsOfInterest');
          Context.Writer.WriteBeginArray;
          for var PublicRequestRegionsOfInterestListValue in PublicRequest.RegionsOfInterest do
          begin
            Context.Writer.WriteBeginObject;
            TRegionOfInterestMarshaller.Instance.Marshall(PublicRequestRegionsOfInterestListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetRoleArn then
        begin
          Context.Writer.WriteName('RoleArn');
          Context.Writer.WriteString(PublicRequest.RoleArn);
        end;
        if PublicRequest.IsSetSettings then
        begin
          Context.Writer.WriteName('Settings');
          Context.Writer.WriteBeginObject;
          TStreamProcessorSettingsMarshaller.Instance.Marshall(PublicRequest.Settings, Context);
          Context.Writer.WriteEndObject;
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

class constructor TCreateStreamProcessorRequestMarshaller.Create;
begin
  FInstance := TCreateStreamProcessorRequestMarshaller.Create;
end;

class function TCreateStreamProcessorRequestMarshaller.Instance: ICreateStreamProcessorRequestMarshaller;
begin
  Result := FInstance;
end;

end.
