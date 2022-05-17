unit AWS.Transcribe.Transform.ListLanguageModelsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.ListLanguageModelsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IListLanguageModelsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListLanguageModelsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListLanguageModelsRequest>, IListLanguageModelsRequestMarshaller)
  strict private
    class var FInstance: IListLanguageModelsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListLanguageModelsRequest): IRequest; overload;
    class function Instance: IListLanguageModelsRequestMarshaller; static;
  end;
  
implementation

{ TListLanguageModelsRequestMarshaller }

function TListLanguageModelsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListLanguageModelsRequest(AInput));
end;

function TListLanguageModelsRequestMarshaller.Marshall(PublicRequest: TListLanguageModelsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.ListLanguageModels');
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
        if PublicRequest.IsSetMaxResults then
        begin
          Context.Writer.WriteName('MaxResults');
          Context.Writer.WriteInteger(PublicRequest.MaxResults);
        end;
        if PublicRequest.IsSetNameContains then
        begin
          Context.Writer.WriteName('NameContains');
          Context.Writer.WriteString(PublicRequest.NameContains);
        end;
        if PublicRequest.IsSetNextToken then
        begin
          Context.Writer.WriteName('NextToken');
          Context.Writer.WriteString(PublicRequest.NextToken);
        end;
        if PublicRequest.IsSetStatusEquals then
        begin
          Context.Writer.WriteName('StatusEquals');
          Context.Writer.WriteString(PublicRequest.StatusEquals.Value);
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

class constructor TListLanguageModelsRequestMarshaller.Create;
begin
  FInstance := TListLanguageModelsRequestMarshaller.Create;
end;

class function TListLanguageModelsRequestMarshaller.Instance: IListLanguageModelsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
