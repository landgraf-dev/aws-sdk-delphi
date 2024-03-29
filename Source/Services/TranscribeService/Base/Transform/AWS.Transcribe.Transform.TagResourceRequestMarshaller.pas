unit AWS.Transcribe.Transform.TagResourceRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.TagResourceRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Transcribe.Transform.TagMarshaller;

type
  ITagResourceRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TTagResourceRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TTagResourceRequest>, ITagResourceRequestMarshaller)
  strict private
    class var FInstance: ITagResourceRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TTagResourceRequest): IRequest; overload;
    class function Instance: ITagResourceRequestMarshaller; static;
  end;
  
implementation

{ TTagResourceRequestMarshaller }

function TTagResourceRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TTagResourceRequest(AInput));
end;

function TTagResourceRequestMarshaller.Marshall(PublicRequest: TTagResourceRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.TagResource');
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
        if PublicRequest.IsSetResourceArn then
        begin
          Context.Writer.WriteName('ResourceArn');
          Context.Writer.WriteString(PublicRequest.ResourceArn);
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

class constructor TTagResourceRequestMarshaller.Create;
begin
  FInstance := TTagResourceRequestMarshaller.Create;
end;

class function TTagResourceRequestMarshaller.Instance: ITagResourceRequestMarshaller;
begin
  Result := FInstance;
end;

end.
