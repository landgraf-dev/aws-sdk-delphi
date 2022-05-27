unit AWS.Rekognition.Transform.ListDatasetEntriesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.ListDatasetEntriesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IListDatasetEntriesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListDatasetEntriesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListDatasetEntriesRequest>, IListDatasetEntriesRequestMarshaller)
  strict private
    class var FInstance: IListDatasetEntriesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListDatasetEntriesRequest): IRequest; overload;
    class function Instance: IListDatasetEntriesRequestMarshaller; static;
  end;
  
implementation

{ TListDatasetEntriesRequestMarshaller }

function TListDatasetEntriesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListDatasetEntriesRequest(AInput));
end;

function TListDatasetEntriesRequestMarshaller.Marshall(PublicRequest: TListDatasetEntriesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.ListDatasetEntries');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-06-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetContainsLabels then
        begin
          Context.Writer.WriteName('ContainsLabels');
          Context.Writer.WriteBeginArray;
          for var PublicRequestContainsLabelsListValue in PublicRequest.ContainsLabels do
            Context.Writer.WriteString(PublicRequestContainsLabelsListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetDatasetArn then
        begin
          Context.Writer.WriteName('DatasetArn');
          Context.Writer.WriteString(PublicRequest.DatasetArn);
        end;
        if PublicRequest.IsSetHasErrors then
        begin
          Context.Writer.WriteName('HasErrors');
          Context.Writer.WriteBoolean(PublicRequest.HasErrors);
        end;
        if PublicRequest.IsSetLabeled then
        begin
          Context.Writer.WriteName('Labeled');
          Context.Writer.WriteBoolean(PublicRequest.Labeled);
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
        if PublicRequest.IsSetSourceRefContains then
        begin
          Context.Writer.WriteName('SourceRefContains');
          Context.Writer.WriteString(PublicRequest.SourceRefContains);
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

class constructor TListDatasetEntriesRequestMarshaller.Create;
begin
  FInstance := TListDatasetEntriesRequestMarshaller.Create;
end;

class function TListDatasetEntriesRequestMarshaller.Instance: IListDatasetEntriesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
