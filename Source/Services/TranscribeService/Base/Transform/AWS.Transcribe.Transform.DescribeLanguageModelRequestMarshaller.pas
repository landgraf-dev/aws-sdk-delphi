unit AWS.Transcribe.Transform.DescribeLanguageModelRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.DescribeLanguageModelRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDescribeLanguageModelRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeLanguageModelRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeLanguageModelRequest>, IDescribeLanguageModelRequestMarshaller)
  strict private
    class var FInstance: IDescribeLanguageModelRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeLanguageModelRequest): IRequest; overload;
    class function Instance: IDescribeLanguageModelRequestMarshaller; static;
  end;
  
implementation

{ TDescribeLanguageModelRequestMarshaller }

function TDescribeLanguageModelRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeLanguageModelRequest(AInput));
end;

function TDescribeLanguageModelRequestMarshaller.Marshall(PublicRequest: TDescribeLanguageModelRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.DescribeLanguageModel');
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
        if PublicRequest.IsSetModelName then
        begin
          Context.Writer.WriteName('ModelName');
          Context.Writer.WriteString(PublicRequest.ModelName);
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

class constructor TDescribeLanguageModelRequestMarshaller.Create;
begin
  FInstance := TDescribeLanguageModelRequestMarshaller.Create;
end;

class function TDescribeLanguageModelRequestMarshaller.Instance: IDescribeLanguageModelRequestMarshaller;
begin
  Result := FInstance;
end;

end.
