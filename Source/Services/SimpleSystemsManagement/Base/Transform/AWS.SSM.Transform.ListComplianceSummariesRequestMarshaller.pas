unit AWS.SSM.Transform.ListComplianceSummariesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.ListComplianceSummariesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.ComplianceStringFilterMarshaller;

type
  IListComplianceSummariesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListComplianceSummariesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListComplianceSummariesRequest>, IListComplianceSummariesRequestMarshaller)
  strict private
    class var FInstance: IListComplianceSummariesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListComplianceSummariesRequest): IRequest; overload;
    class function Instance: IListComplianceSummariesRequestMarshaller; static;
  end;
  
implementation

{ TListComplianceSummariesRequestMarshaller }

function TListComplianceSummariesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListComplianceSummariesRequest(AInput));
end;

function TListComplianceSummariesRequestMarshaller.Marshall(PublicRequest: TListComplianceSummariesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.ListComplianceSummaries');
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

class constructor TListComplianceSummariesRequestMarshaller.Create;
begin
  FInstance := TListComplianceSummariesRequestMarshaller.Create;
end;

class function TListComplianceSummariesRequestMarshaller.Instance: IListComplianceSummariesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
