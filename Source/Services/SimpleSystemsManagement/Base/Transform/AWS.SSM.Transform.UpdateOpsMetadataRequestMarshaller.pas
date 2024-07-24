unit AWS.SSM.Transform.UpdateOpsMetadataRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.UpdateOpsMetadataRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.MetadataValueMarshaller;

type
  IUpdateOpsMetadataRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateOpsMetadataRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateOpsMetadataRequest>, IUpdateOpsMetadataRequestMarshaller)
  strict private
    class var FInstance: IUpdateOpsMetadataRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateOpsMetadataRequest): IRequest; overload;
    class function Instance: IUpdateOpsMetadataRequestMarshaller; static;
  end;
  
implementation

{ TUpdateOpsMetadataRequestMarshaller }

function TUpdateOpsMetadataRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateOpsMetadataRequest(AInput));
end;

function TUpdateOpsMetadataRequestMarshaller.Marshall(PublicRequest: TUpdateOpsMetadataRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.UpdateOpsMetadata');
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
        if PublicRequest.IsSetKeysToDelete then
        begin
          Context.Writer.WriteName('KeysToDelete');
          Context.Writer.WriteBeginArray;
          for var PublicRequestKeysToDeleteListValue in PublicRequest.KeysToDelete do
            Context.Writer.WriteString(PublicRequestKeysToDeleteListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetMetadataToUpdate then
        begin
          Context.Writer.WriteName('MetadataToUpdate');
          Context.Writer.WriteBeginObject;
          for var PublicRequestMetadataToUpdateKvp in PublicRequest.MetadataToUpdate do
          begin
            Context.Writer.WriteName(PublicRequestMetadataToUpdateKvp.Key);
            var PublicRequestMetadataToUpdateValue := PublicRequestMetadataToUpdateKvp.Value;
            Context.Writer.WriteBeginObject;
            TMetadataValueMarshaller.Instance.Marshall(PublicRequestMetadataToUpdateValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetOpsMetadataArn then
        begin
          Context.Writer.WriteName('OpsMetadataArn');
          Context.Writer.WriteString(PublicRequest.OpsMetadataArn);
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

class constructor TUpdateOpsMetadataRequestMarshaller.Create;
begin
  FInstance := TUpdateOpsMetadataRequestMarshaller.Create;
end;

class function TUpdateOpsMetadataRequestMarshaller.Instance: IUpdateOpsMetadataRequestMarshaller;
begin
  Result := FInstance;
end;

end.
