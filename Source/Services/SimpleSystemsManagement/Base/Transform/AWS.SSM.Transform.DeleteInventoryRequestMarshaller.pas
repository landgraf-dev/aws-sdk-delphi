unit AWS.SSM.Transform.DeleteInventoryRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DeleteInventoryRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeleteInventoryRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteInventoryRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteInventoryRequest>, IDeleteInventoryRequestMarshaller)
  strict private
    class var FInstance: IDeleteInventoryRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteInventoryRequest): IRequest; overload;
    class function Instance: IDeleteInventoryRequestMarshaller; static;
  end;
  
implementation

{ TDeleteInventoryRequestMarshaller }

function TDeleteInventoryRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteInventoryRequest(AInput));
end;

function TDeleteInventoryRequestMarshaller.Marshall(PublicRequest: TDeleteInventoryRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DeleteInventory');
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
        if PublicRequest.IsSetClientToken then
        begin
          Context.Writer.WriteName('ClientToken');
          Context.Writer.WriteString(PublicRequest.ClientToken);
        end
        else
          if not PublicRequest.IsSetClientToken then
          begin
            Context.Writer.WriteName('ClientToken');
            Context.Writer.WriteString(Copy(TGuid.NewGuid.ToString, 2, 36));
          end;
        if PublicRequest.IsSetDryRun then
        begin
          Context.Writer.WriteName('DryRun');
          Context.Writer.WriteBoolean(PublicRequest.DryRun);
        end;
        if PublicRequest.IsSetSchemaDeleteOption then
        begin
          Context.Writer.WriteName('SchemaDeleteOption');
          Context.Writer.WriteString(PublicRequest.SchemaDeleteOption.Value);
        end;
        if PublicRequest.IsSetTypeName then
        begin
          Context.Writer.WriteName('TypeName');
          Context.Writer.WriteString(PublicRequest.TypeName);
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

class constructor TDeleteInventoryRequestMarshaller.Create;
begin
  FInstance := TDeleteInventoryRequestMarshaller.Create;
end;

class function TDeleteInventoryRequestMarshaller.Instance: IDeleteInventoryRequestMarshaller;
begin
  Result := FInstance;
end;

end.
