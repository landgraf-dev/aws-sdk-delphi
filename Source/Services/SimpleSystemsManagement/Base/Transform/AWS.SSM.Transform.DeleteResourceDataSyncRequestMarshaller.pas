unit AWS.SSM.Transform.DeleteResourceDataSyncRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DeleteResourceDataSyncRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeleteResourceDataSyncRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteResourceDataSyncRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteResourceDataSyncRequest>, IDeleteResourceDataSyncRequestMarshaller)
  strict private
    class var FInstance: IDeleteResourceDataSyncRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteResourceDataSyncRequest): IRequest; overload;
    class function Instance: IDeleteResourceDataSyncRequestMarshaller; static;
  end;
  
implementation

{ TDeleteResourceDataSyncRequestMarshaller }

function TDeleteResourceDataSyncRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteResourceDataSyncRequest(AInput));
end;

function TDeleteResourceDataSyncRequestMarshaller.Marshall(PublicRequest: TDeleteResourceDataSyncRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DeleteResourceDataSync');
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

class constructor TDeleteResourceDataSyncRequestMarshaller.Create;
begin
  FInstance := TDeleteResourceDataSyncRequestMarshaller.Create;
end;

class function TDeleteResourceDataSyncRequestMarshaller.Instance: IDeleteResourceDataSyncRequestMarshaller;
begin
  Result := FInstance;
end;

end.
