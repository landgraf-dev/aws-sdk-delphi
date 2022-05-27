unit AWS.Transcribe.Transform.CreateLanguageModelRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.CreateLanguageModelRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Transcribe.Transform.InputDataConfigMarshaller, 
  AWS.Transcribe.Transform.TagMarshaller;

type
  ICreateLanguageModelRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateLanguageModelRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateLanguageModelRequest>, ICreateLanguageModelRequestMarshaller)
  strict private
    class var FInstance: ICreateLanguageModelRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateLanguageModelRequest): IRequest; overload;
    class function Instance: ICreateLanguageModelRequestMarshaller; static;
  end;
  
implementation

{ TCreateLanguageModelRequestMarshaller }

function TCreateLanguageModelRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateLanguageModelRequest(AInput));
end;

function TCreateLanguageModelRequestMarshaller.Marshall(PublicRequest: TCreateLanguageModelRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.CreateLanguageModel');
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
        if PublicRequest.IsSetBaseModelName then
        begin
          Context.Writer.WriteName('BaseModelName');
          Context.Writer.WriteString(PublicRequest.BaseModelName.Value);
        end;
        if PublicRequest.IsSetInputDataConfig then
        begin
          Context.Writer.WriteName('InputDataConfig');
          Context.Writer.WriteBeginObject;
          TInputDataConfigMarshaller.Instance.Marshall(PublicRequest.InputDataConfig, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetLanguageCode then
        begin
          Context.Writer.WriteName('LanguageCode');
          Context.Writer.WriteString(PublicRequest.LanguageCode.Value);
        end;
        if PublicRequest.IsSetModelName then
        begin
          Context.Writer.WriteName('ModelName');
          Context.Writer.WriteString(PublicRequest.ModelName);
        end;
        if PublicRequest.IsSetTags then
        begin
          Context.Writer.WriteName('Tags');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTagsListValue in PublicRequest.Tags do
          begin
            Context.Writer.WriteBeginObject;
            TTagMarshaller.Instance.Marshall(PublicRequestTagsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
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

class constructor TCreateLanguageModelRequestMarshaller.Create;
begin
  FInstance := TCreateLanguageModelRequestMarshaller.Create;
end;

class function TCreateLanguageModelRequestMarshaller.Instance: ICreateLanguageModelRequestMarshaller;
begin
  Result := FInstance;
end;

end.
