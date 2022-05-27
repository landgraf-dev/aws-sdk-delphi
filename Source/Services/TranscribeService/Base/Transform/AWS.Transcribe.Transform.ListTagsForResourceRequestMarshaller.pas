unit AWS.Transcribe.Transform.ListTagsForResourceRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.ListTagsForResourceRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IListTagsForResourceRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListTagsForResourceRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListTagsForResourceRequest>, IListTagsForResourceRequestMarshaller)
  strict private
    class var FInstance: IListTagsForResourceRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListTagsForResourceRequest): IRequest; overload;
    class function Instance: IListTagsForResourceRequestMarshaller; static;
  end;
  
implementation

{ TListTagsForResourceRequestMarshaller }

function TListTagsForResourceRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListTagsForResourceRequest(AInput));
end;

function TListTagsForResourceRequestMarshaller.Marshall(PublicRequest: TListTagsForResourceRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.ListTagsForResource');
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

class constructor TListTagsForResourceRequestMarshaller.Create;
begin
  FInstance := TListTagsForResourceRequestMarshaller.Create;
end;

class function TListTagsForResourceRequestMarshaller.Instance: IListTagsForResourceRequestMarshaller;
begin
  Result := FInstance;
end;

end.
