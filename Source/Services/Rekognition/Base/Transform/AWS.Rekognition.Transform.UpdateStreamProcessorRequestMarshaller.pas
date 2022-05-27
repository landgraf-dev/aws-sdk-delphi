unit AWS.Rekognition.Transform.UpdateStreamProcessorRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.UpdateStreamProcessorRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Rekognition.Transform.StreamProcessorDataSharingPreferenceMarshaller, 
  AWS.Rekognition.Transform.RegionOfInterestMarshaller, 
  AWS.Rekognition.Transform.StreamProcessorSettingsForUpdateMarshaller;

type
  IUpdateStreamProcessorRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateStreamProcessorRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateStreamProcessorRequest>, IUpdateStreamProcessorRequestMarshaller)
  strict private
    class var FInstance: IUpdateStreamProcessorRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateStreamProcessorRequest): IRequest; overload;
    class function Instance: IUpdateStreamProcessorRequestMarshaller; static;
  end;
  
implementation

{ TUpdateStreamProcessorRequestMarshaller }

function TUpdateStreamProcessorRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateStreamProcessorRequest(AInput));
end;

function TUpdateStreamProcessorRequestMarshaller.Marshall(PublicRequest: TUpdateStreamProcessorRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.UpdateStreamProcessor');
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
        if PublicRequest.IsSetDataSharingPreferenceForUpdate then
        begin
          Context.Writer.WriteName('DataSharingPreferenceForUpdate');
          Context.Writer.WriteBeginObject;
          TStreamProcessorDataSharingPreferenceMarshaller.Instance.Marshall(PublicRequest.DataSharingPreferenceForUpdate, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
        end;
        if PublicRequest.IsSetParametersToDelete then
        begin
          Context.Writer.WriteName('ParametersToDelete');
          Context.Writer.WriteBeginArray;
          for var PublicRequestParametersToDeleteListValue in PublicRequest.ParametersToDelete do
            Context.Writer.WriteString(PublicRequestParametersToDeleteListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetRegionsOfInterestForUpdate then
        begin
          Context.Writer.WriteName('RegionsOfInterestForUpdate');
          Context.Writer.WriteBeginArray;
          for var PublicRequestRegionsOfInterestForUpdateListValue in PublicRequest.RegionsOfInterestForUpdate do
          begin
            Context.Writer.WriteBeginObject;
            TRegionOfInterestMarshaller.Instance.Marshall(PublicRequestRegionsOfInterestForUpdateListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetSettingsForUpdate then
        begin
          Context.Writer.WriteName('SettingsForUpdate');
          Context.Writer.WriteBeginObject;
          TStreamProcessorSettingsForUpdateMarshaller.Instance.Marshall(PublicRequest.SettingsForUpdate, Context);
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

class constructor TUpdateStreamProcessorRequestMarshaller.Create;
begin
  FInstance := TUpdateStreamProcessorRequestMarshaller.Create;
end;

class function TUpdateStreamProcessorRequestMarshaller.Instance: IUpdateStreamProcessorRequestMarshaller;
begin
  Result := FInstance;
end;

end.
