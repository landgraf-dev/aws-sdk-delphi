unit AWS.Rekognition.Transform.DescribeStreamProcessorRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DescribeStreamProcessorRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDescribeStreamProcessorRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeStreamProcessorRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeStreamProcessorRequest>, IDescribeStreamProcessorRequestMarshaller)
  strict private
    class var FInstance: IDescribeStreamProcessorRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeStreamProcessorRequest): IRequest; overload;
    class function Instance: IDescribeStreamProcessorRequestMarshaller; static;
  end;
  
implementation

{ TDescribeStreamProcessorRequestMarshaller }

function TDescribeStreamProcessorRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeStreamProcessorRequest(AInput));
end;

function TDescribeStreamProcessorRequestMarshaller.Marshall(PublicRequest: TDescribeStreamProcessorRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DescribeStreamProcessor');
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

class constructor TDescribeStreamProcessorRequestMarshaller.Create;
begin
  FInstance := TDescribeStreamProcessorRequestMarshaller.Create;
end;

class function TDescribeStreamProcessorRequestMarshaller.Instance: IDescribeStreamProcessorRequestMarshaller;
begin
  Result := FInstance;
end;

end.
