unit AWS.Transcribe.Transform.StartCallAnalyticsJobRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.StartCallAnalyticsJobRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Transcribe.Transform.ChannelDefinitionMarshaller, 
  AWS.Transcribe.Transform.MediaMarshaller, 
  AWS.Transcribe.Transform.CallAnalyticsJobSettingsMarshaller;

type
  IStartCallAnalyticsJobRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStartCallAnalyticsJobRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStartCallAnalyticsJobRequest>, IStartCallAnalyticsJobRequestMarshaller)
  strict private
    class var FInstance: IStartCallAnalyticsJobRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStartCallAnalyticsJobRequest): IRequest; overload;
    class function Instance: IStartCallAnalyticsJobRequestMarshaller; static;
  end;
  
implementation

{ TStartCallAnalyticsJobRequestMarshaller }

function TStartCallAnalyticsJobRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStartCallAnalyticsJobRequest(AInput));
end;

function TStartCallAnalyticsJobRequestMarshaller.Marshall(PublicRequest: TStartCallAnalyticsJobRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.StartCallAnalyticsJob');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2017-10-26');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetCallAnalyticsJobName then
        begin
          Context.Writer.WriteName('CallAnalyticsJobName');
          Context.Writer.WriteString(PublicRequest.CallAnalyticsJobName);
        end;
        if PublicRequest.IsSetChannelDefinitions then
        begin
          Context.Writer.WriteName('ChannelDefinitions');
          Context.Writer.WriteBeginArray;
          for var PublicRequestChannelDefinitionsListValue in PublicRequest.ChannelDefinitions do
          begin
            Context.Writer.WriteBeginObject;
            TChannelDefinitionMarshaller.Instance.Marshall(PublicRequestChannelDefinitionsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetDataAccessRoleArn then
        begin
          Context.Writer.WriteName('DataAccessRoleArn');
          Context.Writer.WriteString(PublicRequest.DataAccessRoleArn);
        end;
        if PublicRequest.IsSetMedia then
        begin
          Context.Writer.WriteName('Media');
          Context.Writer.WriteBeginObject;
          TMediaMarshaller.Instance.Marshall(PublicRequest.Media, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetOutputEncryptionKMSKeyId then
        begin
          Context.Writer.WriteName('OutputEncryptionKMSKeyId');
          Context.Writer.WriteString(PublicRequest.OutputEncryptionKMSKeyId);
        end;
        if PublicRequest.IsSetOutputLocation then
        begin
          Context.Writer.WriteName('OutputLocation');
          Context.Writer.WriteString(PublicRequest.OutputLocation);
        end;
        if PublicRequest.IsSetSettings then
        begin
          Context.Writer.WriteName('Settings');
          Context.Writer.WriteBeginObject;
          TCallAnalyticsJobSettingsMarshaller.Instance.Marshall(PublicRequest.Settings, Context);
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

class constructor TStartCallAnalyticsJobRequestMarshaller.Create;
begin
  FInstance := TStartCallAnalyticsJobRequestMarshaller.Create;
end;

class function TStartCallAnalyticsJobRequestMarshaller.Instance: IStartCallAnalyticsJobRequestMarshaller;
begin
  Result := FInstance;
end;

end.
