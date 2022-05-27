unit AWS.Rekognition.Transform.ListDatasetLabelsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.ListDatasetLabelsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IListDatasetLabelsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListDatasetLabelsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListDatasetLabelsRequest>, IListDatasetLabelsRequestMarshaller)
  strict private
    class var FInstance: IListDatasetLabelsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListDatasetLabelsRequest): IRequest; overload;
    class function Instance: IListDatasetLabelsRequestMarshaller; static;
  end;
  
implementation

{ TListDatasetLabelsRequestMarshaller }

function TListDatasetLabelsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListDatasetLabelsRequest(AInput));
end;

function TListDatasetLabelsRequestMarshaller.Marshall(PublicRequest: TListDatasetLabelsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.ListDatasetLabels');
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
        if PublicRequest.IsSetDatasetArn then
        begin
          Context.Writer.WriteName('DatasetArn');
          Context.Writer.WriteString(PublicRequest.DatasetArn);
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

class constructor TListDatasetLabelsRequestMarshaller.Create;
begin
  FInstance := TListDatasetLabelsRequestMarshaller.Create;
end;

class function TListDatasetLabelsRequestMarshaller.Instance: IListDatasetLabelsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
