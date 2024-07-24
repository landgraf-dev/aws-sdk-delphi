unit AWS.SSM.Transform.GetInventoryRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetInventoryRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.InventoryAggregatorMarshaller, 
  AWS.SSM.Transform.InventoryFilterMarshaller, 
  AWS.SSM.Transform.ResultAttributeMarshaller;

type
  IGetInventoryRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetInventoryRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetInventoryRequest>, IGetInventoryRequestMarshaller)
  strict private
    class var FInstance: IGetInventoryRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetInventoryRequest): IRequest; overload;
    class function Instance: IGetInventoryRequestMarshaller; static;
  end;
  
implementation

{ TGetInventoryRequestMarshaller }

function TGetInventoryRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetInventoryRequest(AInput));
end;

function TGetInventoryRequestMarshaller.Marshall(PublicRequest: TGetInventoryRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetInventory');
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
        if PublicRequest.IsSetAggregators then
        begin
          Context.Writer.WriteName('Aggregators');
          Context.Writer.WriteBeginArray;
          for var PublicRequestAggregatorsListValue in PublicRequest.Aggregators do
          begin
            Context.Writer.WriteBeginObject;
            TInventoryAggregatorMarshaller.Instance.Marshall(PublicRequestAggregatorsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
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
        if PublicRequest.IsSetResultAttributes then
        begin
          Context.Writer.WriteName('ResultAttributes');
          Context.Writer.WriteBeginArray;
          for var PublicRequestResultAttributesListValue in PublicRequest.ResultAttributes do
          begin
            Context.Writer.WriteBeginObject;
            TResultAttributeMarshaller.Instance.Marshall(PublicRequestResultAttributesListValue, Context);
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

class constructor TGetInventoryRequestMarshaller.Create;
begin
  FInstance := TGetInventoryRequestMarshaller.Create;
end;

class function TGetInventoryRequestMarshaller.Instance: IGetInventoryRequestMarshaller;
begin
  Result := FInstance;
end;

end.
