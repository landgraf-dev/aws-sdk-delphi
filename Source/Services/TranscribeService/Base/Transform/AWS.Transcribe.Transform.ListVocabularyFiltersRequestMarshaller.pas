unit AWS.Transcribe.Transform.ListVocabularyFiltersRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.ListVocabularyFiltersRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IListVocabularyFiltersRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListVocabularyFiltersRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListVocabularyFiltersRequest>, IListVocabularyFiltersRequestMarshaller)
  strict private
    class var FInstance: IListVocabularyFiltersRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListVocabularyFiltersRequest): IRequest; overload;
    class function Instance: IListVocabularyFiltersRequestMarshaller; static;
  end;
  
implementation

{ TListVocabularyFiltersRequestMarshaller }

function TListVocabularyFiltersRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListVocabularyFiltersRequest(AInput));
end;

function TListVocabularyFiltersRequestMarshaller.Marshall(PublicRequest: TListVocabularyFiltersRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.ListVocabularyFilters');
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

class constructor TListVocabularyFiltersRequestMarshaller.Create;
begin
  FInstance := TListVocabularyFiltersRequestMarshaller.Create;
end;

class function TListVocabularyFiltersRequestMarshaller.Instance: IListVocabularyFiltersRequestMarshaller;
begin
  Result := FInstance;
end;

end.
