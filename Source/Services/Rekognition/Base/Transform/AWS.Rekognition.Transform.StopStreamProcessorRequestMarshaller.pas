unit AWS.Rekognition.Transform.StopStreamProcessorRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.StopStreamProcessorRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IStopStreamProcessorRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStopStreamProcessorRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStopStreamProcessorRequest>, IStopStreamProcessorRequestMarshaller)
  strict private
    class var FInstance: IStopStreamProcessorRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStopStreamProcessorRequest): IRequest; overload;
    class function Instance: IStopStreamProcessorRequestMarshaller; static;
  end;
  
implementation

{ TStopStreamProcessorRequestMarshaller }

function TStopStreamProcessorRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStopStreamProcessorRequest(AInput));
end;

function TStopStreamProcessorRequestMarshaller.Marshall(PublicRequest: TStopStreamProcessorRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.StopStreamProcessor');
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

class constructor TStopStreamProcessorRequestMarshaller.Create;
begin
  FInstance := TStopStreamProcessorRequestMarshaller.Create;
end;

class function TStopStreamProcessorRequestMarshaller.Instance: IStopStreamProcessorRequestMarshaller;
begin
  Result := FInstance;
end;

end.
