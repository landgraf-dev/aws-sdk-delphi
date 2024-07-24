unit AWS.SSM.Transform.DeleteOpsMetadataRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DeleteOpsMetadataRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeleteOpsMetadataRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteOpsMetadataRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteOpsMetadataRequest>, IDeleteOpsMetadataRequestMarshaller)
  strict private
    class var FInstance: IDeleteOpsMetadataRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteOpsMetadataRequest): IRequest; overload;
    class function Instance: IDeleteOpsMetadataRequestMarshaller; static;
  end;
  
implementation

{ TDeleteOpsMetadataRequestMarshaller }

function TDeleteOpsMetadataRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteOpsMetadataRequest(AInput));
end;

function TDeleteOpsMetadataRequestMarshaller.Marshall(PublicRequest: TDeleteOpsMetadataRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DeleteOpsMetadata');
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

class constructor TDeleteOpsMetadataRequestMarshaller.Create;
begin
  FInstance := TDeleteOpsMetadataRequestMarshaller.Create;
end;

class function TDeleteOpsMetadataRequestMarshaller.Instance: IDeleteOpsMetadataRequestMarshaller;
begin
  Result := FInstance;
end;

end.
