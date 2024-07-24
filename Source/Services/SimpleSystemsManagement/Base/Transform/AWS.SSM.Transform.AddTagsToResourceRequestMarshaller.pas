unit AWS.SSM.Transform.AddTagsToResourceRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.AddTagsToResourceRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.TagMarshaller;

type
  IAddTagsToResourceRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TAddTagsToResourceRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TAddTagsToResourceRequest>, IAddTagsToResourceRequestMarshaller)
  strict private
    class var FInstance: IAddTagsToResourceRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TAddTagsToResourceRequest): IRequest; overload;
    class function Instance: IAddTagsToResourceRequestMarshaller; static;
  end;
  
implementation

{ TAddTagsToResourceRequestMarshaller }

function TAddTagsToResourceRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TAddTagsToResourceRequest(AInput));
end;

function TAddTagsToResourceRequestMarshaller.Marshall(PublicRequest: TAddTagsToResourceRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.AddTagsToResource');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2014-11-06');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetResourceId then
        begin
          Context.Writer.WriteName('ResourceId');
          Context.Writer.WriteString(PublicRequest.ResourceId);
        end;
        if PublicRequest.IsSetResourceType then
        begin
          Context.Writer.WriteName('ResourceType');
          Context.Writer.WriteString(PublicRequest.ResourceType.Value);
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

class constructor TAddTagsToResourceRequestMarshaller.Create;
begin
  FInstance := TAddTagsToResourceRequestMarshaller.Create;
end;

class function TAddTagsToResourceRequestMarshaller.Instance: IAddTagsToResourceRequestMarshaller;
begin
  Result := FInstance;
end;

end.
