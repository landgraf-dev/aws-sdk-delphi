unit AWS.Rekognition.Transform.DescribeProjectVersionsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DescribeProjectVersionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDescribeProjectVersionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeProjectVersionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeProjectVersionsRequest>, IDescribeProjectVersionsRequestMarshaller)
  strict private
    class var FInstance: IDescribeProjectVersionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeProjectVersionsRequest): IRequest; overload;
    class function Instance: IDescribeProjectVersionsRequestMarshaller; static;
  end;
  
implementation

{ TDescribeProjectVersionsRequestMarshaller }

function TDescribeProjectVersionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeProjectVersionsRequest(AInput));
end;

function TDescribeProjectVersionsRequestMarshaller.Marshall(PublicRequest: TDescribeProjectVersionsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DescribeProjectVersions');
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
        if PublicRequest.IsSetProjectArn then
        begin
          Context.Writer.WriteName('ProjectArn');
          Context.Writer.WriteString(PublicRequest.ProjectArn);
        end;
        if PublicRequest.IsSetVersionNames then
        begin
          Context.Writer.WriteName('VersionNames');
          Context.Writer.WriteBeginArray;
          for var PublicRequestVersionNamesListValue in PublicRequest.VersionNames do
            Context.Writer.WriteString(PublicRequestVersionNamesListValue);
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

class constructor TDescribeProjectVersionsRequestMarshaller.Create;
begin
  FInstance := TDescribeProjectVersionsRequestMarshaller.Create;
end;

class function TDescribeProjectVersionsRequestMarshaller.Instance: IDescribeProjectVersionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
