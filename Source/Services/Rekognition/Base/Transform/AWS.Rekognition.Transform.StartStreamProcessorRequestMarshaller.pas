unit AWS.Rekognition.Transform.StartStreamProcessorRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.StartStreamProcessorRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Rekognition.Transform.StreamProcessingStartSelectorMarshaller, 
  AWS.Rekognition.Transform.StreamProcessingStopSelectorMarshaller;

type
  IStartStreamProcessorRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStartStreamProcessorRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStartStreamProcessorRequest>, IStartStreamProcessorRequestMarshaller)
  strict private
    class var FInstance: IStartStreamProcessorRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStartStreamProcessorRequest): IRequest; overload;
    class function Instance: IStartStreamProcessorRequestMarshaller; static;
  end;
  
implementation

{ TStartStreamProcessorRequestMarshaller }

function TStartStreamProcessorRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStartStreamProcessorRequest(AInput));
end;

function TStartStreamProcessorRequestMarshaller.Marshall(PublicRequest: TStartStreamProcessorRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.StartStreamProcessor');
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
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
        end;
        if PublicRequest.IsSetStartSelector then
        begin
          Context.Writer.WriteName('StartSelector');
          Context.Writer.WriteBeginObject;
          TStreamProcessingStartSelectorMarshaller.Instance.Marshall(PublicRequest.StartSelector, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetStopSelector then
        begin
          Context.Writer.WriteName('StopSelector');
          Context.Writer.WriteBeginObject;
          TStreamProcessingStopSelectorMarshaller.Instance.Marshall(PublicRequest.StopSelector, Context);
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

class constructor TStartStreamProcessorRequestMarshaller.Create;
begin
  FInstance := TStartStreamProcessorRequestMarshaller.Create;
end;

class function TStartStreamProcessorRequestMarshaller.Instance: IStartStreamProcessorRequestMarshaller;
begin
  Result := FInstance;
end;

end.
