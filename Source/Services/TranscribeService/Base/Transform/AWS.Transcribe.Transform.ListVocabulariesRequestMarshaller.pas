unit AWS.Transcribe.Transform.ListVocabulariesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.ListVocabulariesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IListVocabulariesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListVocabulariesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListVocabulariesRequest>, IListVocabulariesRequestMarshaller)
  strict private
    class var FInstance: IListVocabulariesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListVocabulariesRequest): IRequest; overload;
    class function Instance: IListVocabulariesRequestMarshaller; static;
  end;
  
implementation

{ TListVocabulariesRequestMarshaller }

function TListVocabulariesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListVocabulariesRequest(AInput));
end;

function TListVocabulariesRequestMarshaller.Marshall(PublicRequest: TListVocabulariesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.ListVocabularies');
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
        if PublicRequest.IsSetStateEquals then
        begin
          Context.Writer.WriteName('StateEquals');
          Context.Writer.WriteString(PublicRequest.StateEquals.Value);
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

class constructor TListVocabulariesRequestMarshaller.Create;
begin
  FInstance := TListVocabulariesRequestMarshaller.Create;
end;

class function TListVocabulariesRequestMarshaller.Instance: IListVocabulariesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
