unit AWS.SSM.Transform.UpdateResourceDataSyncRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.UpdateResourceDataSyncRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.ResourceDataSyncSourceMarshaller;

type
  IUpdateResourceDataSyncRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateResourceDataSyncRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateResourceDataSyncRequest>, IUpdateResourceDataSyncRequestMarshaller)
  strict private
    class var FInstance: IUpdateResourceDataSyncRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateResourceDataSyncRequest): IRequest; overload;
    class function Instance: IUpdateResourceDataSyncRequestMarshaller; static;
  end;
  
implementation

{ TUpdateResourceDataSyncRequestMarshaller }

function TUpdateResourceDataSyncRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateResourceDataSyncRequest(AInput));
end;

function TUpdateResourceDataSyncRequestMarshaller.Marshall(PublicRequest: TUpdateResourceDataSyncRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.UpdateResourceDataSync');
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
        if PublicRequest.IsSetSyncName then
        begin
          Context.Writer.WriteName('SyncName');
          Context.Writer.WriteString(PublicRequest.SyncName);
        end;
        if PublicRequest.IsSetSyncSource then
        begin
          Context.Writer.WriteName('SyncSource');
          Context.Writer.WriteBeginObject;
          TResourceDataSyncSourceMarshaller.Instance.Marshall(PublicRequest.SyncSource, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetSyncType then
        begin
          Context.Writer.WriteName('SyncType');
          Context.Writer.WriteString(PublicRequest.SyncType);
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

class constructor TUpdateResourceDataSyncRequestMarshaller.Create;
begin
  FInstance := TUpdateResourceDataSyncRequestMarshaller.Create;
end;

class function TUpdateResourceDataSyncRequestMarshaller.Instance: IUpdateResourceDataSyncRequestMarshaller;
begin
  Result := FInstance;
end;

end.
