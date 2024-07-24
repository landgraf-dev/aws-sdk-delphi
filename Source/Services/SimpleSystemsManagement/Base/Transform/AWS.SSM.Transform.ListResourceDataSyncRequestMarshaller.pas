unit AWS.SSM.Transform.ListResourceDataSyncRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.ListResourceDataSyncRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IListResourceDataSyncRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListResourceDataSyncRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListResourceDataSyncRequest>, IListResourceDataSyncRequestMarshaller)
  strict private
    class var FInstance: IListResourceDataSyncRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListResourceDataSyncRequest): IRequest; overload;
    class function Instance: IListResourceDataSyncRequestMarshaller; static;
  end;
  
implementation

{ TListResourceDataSyncRequestMarshaller }

function TListResourceDataSyncRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListResourceDataSyncRequest(AInput));
end;

function TListResourceDataSyncRequestMarshaller.Marshall(PublicRequest: TListResourceDataSyncRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.ListResourceDataSync');
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
        if PublicRequest.IsSetMaxResults then
        begin
          Context.Writer.WriteName('MaxResults');
          Context.Writer.WriteInteger(PublicRequest.MaxResults);
        end;
        if PublicRequest.IsSetNextToken then
        begin
          Context.Writer.WriteName('NextToken');
          Context.Writer.WriteString(PublicRequest.NextToken);
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

class constructor TListResourceDataSyncRequestMarshaller.Create;
begin
  FInstance := TListResourceDataSyncRequestMarshaller.Create;
end;

class function TListResourceDataSyncRequestMarshaller.Instance: IListResourceDataSyncRequestMarshaller;
begin
  Result := FInstance;
end;

end.
