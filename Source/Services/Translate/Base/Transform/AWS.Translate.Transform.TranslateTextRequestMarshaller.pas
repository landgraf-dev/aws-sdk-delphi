unit AWS.Translate.Transform.TranslateTextRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.TranslateTextRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Translate.Transform.TranslationSettingsMarshaller;

type
  ITranslateTextRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TTranslateTextRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TTranslateTextRequest>, ITranslateTextRequestMarshaller)
  strict private
    class var FInstance: ITranslateTextRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TTranslateTextRequest): IRequest; overload;
    class function Instance: ITranslateTextRequestMarshaller; static;
  end;
  
implementation

{ TTranslateTextRequestMarshaller }

function TTranslateTextRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TTranslateTextRequest(AInput));
end;

function TTranslateTextRequestMarshaller.Marshall(PublicRequest: TTranslateTextRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Translate');
  Request.Headers.Add('X-Amz-Target', 'AWSShineFrontendService_20170701.TranslateText');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2017-07-01');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetSettings then
        begin
          Context.Writer.WriteName('Settings');
          Context.Writer.WriteBeginObject;
          TTranslationSettingsMarshaller.Instance.Marshall(PublicRequest.Settings, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetSourceLanguageCode then
        begin
          Context.Writer.WriteName('SourceLanguageCode');
          Context.Writer.WriteString(PublicRequest.SourceLanguageCode);
        end;
        if PublicRequest.IsSetTargetLanguageCode then
        begin
          Context.Writer.WriteName('TargetLanguageCode');
          Context.Writer.WriteString(PublicRequest.TargetLanguageCode);
        end;
        if PublicRequest.IsSetTerminologyNames then
        begin
          Context.Writer.WriteName('TerminologyNames');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTerminologyNamesListValue in PublicRequest.TerminologyNames do
            Context.Writer.WriteString(PublicRequestTerminologyNamesListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetText then
        begin
          Context.Writer.WriteName('Text');
          Context.Writer.WriteString(PublicRequest.Text);
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

class constructor TTranslateTextRequestMarshaller.Create;
begin
  FInstance := TTranslateTextRequestMarshaller.Create;
end;

class function TTranslateTextRequestMarshaller.Instance: ITranslateTextRequestMarshaller;
begin
  Result := FInstance;
end;

end.
