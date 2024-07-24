unit AWS.SSM.Transform.ListInventoryEntriesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.ListInventoryEntriesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.InventoryFilterMarshaller;

type
  IListInventoryEntriesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListInventoryEntriesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListInventoryEntriesRequest>, IListInventoryEntriesRequestMarshaller)
  strict private
    class var FInstance: IListInventoryEntriesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListInventoryEntriesRequest): IRequest; overload;
    class function Instance: IListInventoryEntriesRequestMarshaller; static;
  end;
  
implementation

{ TListInventoryEntriesRequestMarshaller }

function TListInventoryEntriesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListInventoryEntriesRequest(AInput));
end;

function TListInventoryEntriesRequestMarshaller.Marshall(PublicRequest: TListInventoryEntriesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.ListInventoryEntries');
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
        if PublicRequest.IsSetFilters then
        begin
          Context.Writer.WriteName('Filters');
          Context.Writer.WriteBeginArray;
          for var PublicRequestFiltersListValue in PublicRequest.Filters do
          begin
            Context.Writer.WriteBeginObject;
            TInventoryFilterMarshaller.Instance.Marshall(PublicRequestFiltersListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetInstanceId then
        begin
          Context.Writer.WriteName('InstanceId');
          Context.Writer.WriteString(PublicRequest.InstanceId);
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

class constructor TListInventoryEntriesRequestMarshaller.Create;
begin
  FInstance := TListInventoryEntriesRequestMarshaller.Create;
end;

class function TListInventoryEntriesRequestMarshaller.Instance: IListInventoryEntriesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
