unit AWS.SSM.Transform.GetInventorySchemaRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetInventorySchemaRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetInventorySchemaRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetInventorySchemaRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetInventorySchemaRequest>, IGetInventorySchemaRequestMarshaller)
  strict private
    class var FInstance: IGetInventorySchemaRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetInventorySchemaRequest): IRequest; overload;
    class function Instance: IGetInventorySchemaRequestMarshaller; static;
  end;
  
implementation

{ TGetInventorySchemaRequestMarshaller }

function TGetInventorySchemaRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetInventorySchemaRequest(AInput));
end;

function TGetInventorySchemaRequestMarshaller.Marshall(PublicRequest: TGetInventorySchemaRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetInventorySchema');
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
        if PublicRequest.IsSetAggregator then
        begin
          Context.Writer.WriteName('Aggregator');
          Context.Writer.WriteBoolean(PublicRequest.Aggregator);
        end;
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
        if PublicRequest.IsSetSubType then
        begin
          Context.Writer.WriteName('SubType');
          Context.Writer.WriteBoolean(PublicRequest.SubType);
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

class constructor TGetInventorySchemaRequestMarshaller.Create;
begin
  FInstance := TGetInventorySchemaRequestMarshaller.Create;
end;

class function TGetInventorySchemaRequestMarshaller.Instance: IGetInventorySchemaRequestMarshaller;
begin
  Result := FInstance;
end;

end.
