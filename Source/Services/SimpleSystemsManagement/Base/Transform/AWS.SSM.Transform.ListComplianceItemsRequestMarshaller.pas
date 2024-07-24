unit AWS.SSM.Transform.ListComplianceItemsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.ListComplianceItemsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.ComplianceStringFilterMarshaller;

type
  IListComplianceItemsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListComplianceItemsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListComplianceItemsRequest>, IListComplianceItemsRequestMarshaller)
  strict private
    class var FInstance: IListComplianceItemsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListComplianceItemsRequest): IRequest; overload;
    class function Instance: IListComplianceItemsRequestMarshaller; static;
  end;
  
implementation

{ TListComplianceItemsRequestMarshaller }

function TListComplianceItemsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListComplianceItemsRequest(AInput));
end;

function TListComplianceItemsRequestMarshaller.Marshall(PublicRequest: TListComplianceItemsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.ListComplianceItems');
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
            TComplianceStringFilterMarshaller.Instance.Marshall(PublicRequestFiltersListValue, Context);
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
        if PublicRequest.IsSetResourceIds then
        begin
          Context.Writer.WriteName('ResourceIds');
          Context.Writer.WriteBeginArray;
          for var PublicRequestResourceIdsListValue in PublicRequest.ResourceIds do
            Context.Writer.WriteString(PublicRequestResourceIdsListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetResourceTypes then
        begin
          Context.Writer.WriteName('ResourceTypes');
          Context.Writer.WriteBeginArray;
          for var PublicRequestResourceTypesListValue in PublicRequest.ResourceTypes do
            Context.Writer.WriteString(PublicRequestResourceTypesListValue);
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

class constructor TListComplianceItemsRequestMarshaller.Create;
begin
  FInstance := TListComplianceItemsRequestMarshaller.Create;
end;

class function TListComplianceItemsRequestMarshaller.Instance: IListComplianceItemsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
