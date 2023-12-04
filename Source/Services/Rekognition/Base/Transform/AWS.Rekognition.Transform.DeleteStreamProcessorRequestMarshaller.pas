unit AWS.Rekognition.Transform.DeleteStreamProcessorRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DeleteStreamProcessorRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeleteStreamProcessorRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteStreamProcessorRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteStreamProcessorRequest>, IDeleteStreamProcessorRequestMarshaller)
  strict private
    class var FInstance: IDeleteStreamProcessorRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteStreamProcessorRequest): IRequest; overload;
    class function Instance: IDeleteStreamProcessorRequestMarshaller; static;
  end;
  
implementation

{ TDeleteStreamProcessorRequestMarshaller }

function TDeleteStreamProcessorRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteStreamProcessorRequest(AInput));
end;

function TDeleteStreamProcessorRequestMarshaller.Marshall(PublicRequest: TDeleteStreamProcessorRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DeleteStreamProcessor');
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

class constructor TDeleteStreamProcessorRequestMarshaller.Create;
begin
  FInstance := TDeleteStreamProcessorRequestMarshaller.Create;
end;

class function TDeleteStreamProcessorRequestMarshaller.Instance: IDeleteStreamProcessorRequestMarshaller;
begin
  Result := FInstance;
end;

end.
