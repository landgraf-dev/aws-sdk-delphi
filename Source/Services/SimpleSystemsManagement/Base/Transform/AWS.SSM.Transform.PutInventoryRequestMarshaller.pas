unit AWS.SSM.Transform.PutInventoryRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.PutInventoryRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.InventoryItemMarshaller;

type
  IPutInventoryRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutInventoryRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutInventoryRequest>, IPutInventoryRequestMarshaller)
  strict private
    class var FInstance: IPutInventoryRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutInventoryRequest): IRequest; overload;
    class function Instance: IPutInventoryRequestMarshaller; static;
  end;
  
implementation

{ TPutInventoryRequestMarshaller }

function TPutInventoryRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutInventoryRequest(AInput));
end;

function TPutInventoryRequestMarshaller.Marshall(PublicRequest: TPutInventoryRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.PutInventory');
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
        if PublicRequest.IsSetInstanceId then
        begin
          Context.Writer.WriteName('InstanceId');
          Context.Writer.WriteString(PublicRequest.InstanceId);
        end;
        if PublicRequest.IsSetItems then
        begin
          Context.Writer.WriteName('Items');
          Context.Writer.WriteBeginArray;
          for var PublicRequestItemsListValue in PublicRequest.Items do
          begin
            Context.Writer.WriteBeginObject;
            TInventoryItemMarshaller.Instance.Marshall(PublicRequestItemsListValue, Context);
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

class constructor TPutInventoryRequestMarshaller.Create;
begin
  FInstance := TPutInventoryRequestMarshaller.Create;
end;

class function TPutInventoryRequestMarshaller.Instance: IPutInventoryRequestMarshaller;
begin
  Result := FInstance;
end;

end.
