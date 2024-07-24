unit AWS.SSM.Transform.CreateResourceDataSyncRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.CreateResourceDataSyncRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.ResourceDataSyncS3DestinationMarshaller, 
  AWS.SSM.Transform.ResourceDataSyncSourceMarshaller;

type
  ICreateResourceDataSyncRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateResourceDataSyncRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateResourceDataSyncRequest>, ICreateResourceDataSyncRequestMarshaller)
  strict private
    class var FInstance: ICreateResourceDataSyncRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateResourceDataSyncRequest): IRequest; overload;
    class function Instance: ICreateResourceDataSyncRequestMarshaller; static;
  end;
  
implementation

{ TCreateResourceDataSyncRequestMarshaller }

function TCreateResourceDataSyncRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateResourceDataSyncRequest(AInput));
end;

function TCreateResourceDataSyncRequestMarshaller.Marshall(PublicRequest: TCreateResourceDataSyncRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.CreateResourceDataSync');
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
        if PublicRequest.IsSetS3Destination then
        begin
          Context.Writer.WriteName('S3Destination');
          Context.Writer.WriteBeginObject;
          TResourceDataSyncS3DestinationMarshaller.Instance.Marshall(PublicRequest.S3Destination, Context);
          Context.Writer.WriteEndObject;
        end;
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

class constructor TCreateResourceDataSyncRequestMarshaller.Create;
begin
  FInstance := TCreateResourceDataSyncRequestMarshaller.Create;
end;

class function TCreateResourceDataSyncRequestMarshaller.Instance: ICreateResourceDataSyncRequestMarshaller;
begin
  Result := FInstance;
end;

end.
