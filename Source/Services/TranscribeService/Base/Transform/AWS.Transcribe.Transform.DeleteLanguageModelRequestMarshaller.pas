unit AWS.Transcribe.Transform.DeleteLanguageModelRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.DeleteLanguageModelRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IDeleteLanguageModelRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteLanguageModelRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteLanguageModelRequest>, IDeleteLanguageModelRequestMarshaller)
  strict private
    class var FInstance: IDeleteLanguageModelRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteLanguageModelRequest): IRequest; overload;
    class function Instance: IDeleteLanguageModelRequestMarshaller; static;
  end;
  
implementation

{ TDeleteLanguageModelRequestMarshaller }

function TDeleteLanguageModelRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteLanguageModelRequest(AInput));
end;

function TDeleteLanguageModelRequestMarshaller.Marshall(PublicRequest: TDeleteLanguageModelRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.DeleteLanguageModel');
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

class constructor TDeleteLanguageModelRequestMarshaller.Create;
begin
  FInstance := TDeleteLanguageModelRequestMarshaller.Create;
end;

class function TDeleteLanguageModelRequestMarshaller.Instance: IDeleteLanguageModelRequestMarshaller;
begin
  Result := FInstance;
end;

end.
