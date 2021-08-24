unit AWS.SESv2.Transform.ListImportJobsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.ListImportJobsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Internal.StringUtils;

type
  IListImportJobsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListImportJobsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListImportJobsRequest>, IListImportJobsRequestMarshaller)
  strict private
    class var FInstance: IListImportJobsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListImportJobsRequest): IRequest; overload;
    class function Instance: IListImportJobsRequestMarshaller; static;
  end;
  
implementation

{ TListImportJobsRequestMarshaller }

function TListImportJobsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListImportJobsRequest(AInput));
end;

function TListImportJobsRequestMarshaller.Marshall(PublicRequest: TListImportJobsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetNextToken then
    Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
  if PublicRequest.IsSetPageSize then
    Request.Parameters.Add('PageSize', TStringUtils.FromInteger(PublicRequest.PageSize));
  Request.ResourcePath := '/v2/email/import-jobs';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetImportDestinationType then
        begin
          Context.Writer.WriteName('ImportDestinationType');
          Context.Writer.WriteString(PublicRequest.ImportDestinationType.Value);
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
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListImportJobsRequestMarshaller.Create;
begin
  FInstance := TListImportJobsRequestMarshaller.Create;
end;

class function TListImportJobsRequestMarshaller.Instance: IListImportJobsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
