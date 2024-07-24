unit AWS.SSM.Transform.RemoveTagsFromResourceRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.RemoveTagsFromResourceRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IRemoveTagsFromResourceRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TRemoveTagsFromResourceRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TRemoveTagsFromResourceRequest>, IRemoveTagsFromResourceRequestMarshaller)
  strict private
    class var FInstance: IRemoveTagsFromResourceRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TRemoveTagsFromResourceRequest): IRequest; overload;
    class function Instance: IRemoveTagsFromResourceRequestMarshaller; static;
  end;
  
implementation

{ TRemoveTagsFromResourceRequestMarshaller }

function TRemoveTagsFromResourceRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TRemoveTagsFromResourceRequest(AInput));
end;

function TRemoveTagsFromResourceRequestMarshaller.Marshall(PublicRequest: TRemoveTagsFromResourceRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.RemoveTagsFromResource');
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
        if PublicRequest.IsSetTagKeys then
        begin
          Context.Writer.WriteName('TagKeys');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTagKeysListValue in PublicRequest.TagKeys do
            Context.Writer.WriteString(PublicRequestTagKeysListValue);
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

class constructor TRemoveTagsFromResourceRequestMarshaller.Create;
begin
  FInstance := TRemoveTagsFromResourceRequestMarshaller.Create;
end;

class function TRemoveTagsFromResourceRequestMarshaller.Instance: IRemoveTagsFromResourceRequestMarshaller;
begin
  Result := FInstance;
end;

end.
