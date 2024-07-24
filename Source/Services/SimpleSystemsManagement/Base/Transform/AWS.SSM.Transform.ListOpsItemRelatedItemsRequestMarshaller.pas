unit AWS.SSM.Transform.ListOpsItemRelatedItemsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.ListOpsItemRelatedItemsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.OpsItemRelatedItemsFilterMarshaller;

type
  IListOpsItemRelatedItemsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListOpsItemRelatedItemsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListOpsItemRelatedItemsRequest>, IListOpsItemRelatedItemsRequestMarshaller)
  strict private
    class var FInstance: IListOpsItemRelatedItemsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListOpsItemRelatedItemsRequest): IRequest; overload;
    class function Instance: IListOpsItemRelatedItemsRequestMarshaller; static;
  end;
  
implementation

{ TListOpsItemRelatedItemsRequestMarshaller }

function TListOpsItemRelatedItemsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListOpsItemRelatedItemsRequest(AInput));
end;

function TListOpsItemRelatedItemsRequestMarshaller.Marshall(PublicRequest: TListOpsItemRelatedItemsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.ListOpsItemRelatedItems');
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
            TOpsItemRelatedItemsFilterMarshaller.Instance.Marshall(PublicRequestFiltersListValue, Context);
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
        if PublicRequest.IsSetOpsItemId then
        begin
          Context.Writer.WriteName('OpsItemId');
          Context.Writer.WriteString(PublicRequest.OpsItemId);
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

class constructor TListOpsItemRelatedItemsRequestMarshaller.Create;
begin
  FInstance := TListOpsItemRelatedItemsRequestMarshaller.Create;
end;

class function TListOpsItemRelatedItemsRequestMarshaller.Instance: IListOpsItemRelatedItemsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
