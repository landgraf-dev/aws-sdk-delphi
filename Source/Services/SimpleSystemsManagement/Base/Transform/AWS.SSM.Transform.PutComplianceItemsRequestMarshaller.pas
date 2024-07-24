unit AWS.SSM.Transform.PutComplianceItemsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.PutComplianceItemsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.ComplianceExecutionSummaryMarshaller, 
  AWS.SSM.Transform.ComplianceItemEntryMarshaller;

type
  IPutComplianceItemsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutComplianceItemsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutComplianceItemsRequest>, IPutComplianceItemsRequestMarshaller)
  strict private
    class var FInstance: IPutComplianceItemsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutComplianceItemsRequest): IRequest; overload;
    class function Instance: IPutComplianceItemsRequestMarshaller; static;
  end;
  
implementation

{ TPutComplianceItemsRequestMarshaller }

function TPutComplianceItemsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutComplianceItemsRequest(AInput));
end;

function TPutComplianceItemsRequestMarshaller.Marshall(PublicRequest: TPutComplianceItemsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.PutComplianceItems');
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
        if PublicRequest.IsSetComplianceType then
        begin
          Context.Writer.WriteName('ComplianceType');
          Context.Writer.WriteString(PublicRequest.ComplianceType);
        end;
        if PublicRequest.IsSetExecutionSummary then
        begin
          Context.Writer.WriteName('ExecutionSummary');
          Context.Writer.WriteBeginObject;
          TComplianceExecutionSummaryMarshaller.Instance.Marshall(PublicRequest.ExecutionSummary, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetItemContentHash then
        begin
          Context.Writer.WriteName('ItemContentHash');
          Context.Writer.WriteString(PublicRequest.ItemContentHash);
        end;
        if PublicRequest.IsSetItems then
        begin
          Context.Writer.WriteName('Items');
          Context.Writer.WriteBeginArray;
          for var PublicRequestItemsListValue in PublicRequest.Items do
          begin
            Context.Writer.WriteBeginObject;
            TComplianceItemEntryMarshaller.Instance.Marshall(PublicRequestItemsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetResourceId then
        begin
          Context.Writer.WriteName('ResourceId');
          Context.Writer.WriteString(PublicRequest.ResourceId);
        end;
        if PublicRequest.IsSetResourceType then
        begin
          Context.Writer.WriteName('ResourceType');
          Context.Writer.WriteString(PublicRequest.ResourceType);
        end;
        if PublicRequest.IsSetUploadType then
        begin
          Context.Writer.WriteName('UploadType');
          Context.Writer.WriteString(PublicRequest.UploadType.Value);
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

class constructor TPutComplianceItemsRequestMarshaller.Create;
begin
  FInstance := TPutComplianceItemsRequestMarshaller.Create;
end;

class function TPutComplianceItemsRequestMarshaller.Instance: IPutComplianceItemsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
