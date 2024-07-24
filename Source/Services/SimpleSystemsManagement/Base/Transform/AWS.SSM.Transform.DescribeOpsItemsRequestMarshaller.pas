unit AWS.SSM.Transform.DescribeOpsItemsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DescribeOpsItemsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.OpsItemFilterMarshaller;

type
  IDescribeOpsItemsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeOpsItemsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeOpsItemsRequest>, IDescribeOpsItemsRequestMarshaller)
  strict private
    class var FInstance: IDescribeOpsItemsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeOpsItemsRequest): IRequest; overload;
    class function Instance: IDescribeOpsItemsRequestMarshaller; static;
  end;
  
implementation

{ TDescribeOpsItemsRequestMarshaller }

function TDescribeOpsItemsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeOpsItemsRequest(AInput));
end;

function TDescribeOpsItemsRequestMarshaller.Marshall(PublicRequest: TDescribeOpsItemsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DescribeOpsItems');
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
        if PublicRequest.IsSetOpsItemFilters then
        begin
          Context.Writer.WriteName('OpsItemFilters');
          Context.Writer.WriteBeginArray;
          for var PublicRequestOpsItemFiltersListValue in PublicRequest.OpsItemFilters do
          begin
            Context.Writer.WriteBeginObject;
            TOpsItemFilterMarshaller.Instance.Marshall(PublicRequestOpsItemFiltersListValue, Context);
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

class constructor TDescribeOpsItemsRequestMarshaller.Create;
begin
  FInstance := TDescribeOpsItemsRequestMarshaller.Create;
end;

class function TDescribeOpsItemsRequestMarshaller.Instance: IDescribeOpsItemsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
