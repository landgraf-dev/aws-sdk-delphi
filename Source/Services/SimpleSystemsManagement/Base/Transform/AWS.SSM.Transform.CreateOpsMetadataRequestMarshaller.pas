unit AWS.SSM.Transform.CreateOpsMetadataRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.CreateOpsMetadataRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.MetadataValueMarshaller, 
  AWS.SSM.Transform.TagMarshaller;

type
  ICreateOpsMetadataRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateOpsMetadataRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateOpsMetadataRequest>, ICreateOpsMetadataRequestMarshaller)
  strict private
    class var FInstance: ICreateOpsMetadataRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateOpsMetadataRequest): IRequest; overload;
    class function Instance: ICreateOpsMetadataRequestMarshaller; static;
  end;
  
implementation

{ TCreateOpsMetadataRequestMarshaller }

function TCreateOpsMetadataRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateOpsMetadataRequest(AInput));
end;

function TCreateOpsMetadataRequestMarshaller.Marshall(PublicRequest: TCreateOpsMetadataRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.CreateOpsMetadata');
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
        if PublicRequest.IsSetMetadata then
        begin
          Context.Writer.WriteName('Metadata');
          Context.Writer.WriteBeginObject;
          for var PublicRequestMetadataKvp in PublicRequest.Metadata do
          begin
            Context.Writer.WriteName(PublicRequestMetadataKvp.Key);
            var PublicRequestMetadataValue := PublicRequestMetadataKvp.Value;
            Context.Writer.WriteBeginObject;
            TMetadataValueMarshaller.Instance.Marshall(PublicRequestMetadataValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetResourceId then
        begin
          Context.Writer.WriteName('ResourceId');
          Context.Writer.WriteString(PublicRequest.ResourceId);
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

class constructor TCreateOpsMetadataRequestMarshaller.Create;
begin
  FInstance := TCreateOpsMetadataRequestMarshaller.Create;
end;

class function TCreateOpsMetadataRequestMarshaller.Instance: ICreateOpsMetadataRequestMarshaller;
begin
  Result := FInstance;
end;

end.
