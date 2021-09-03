unit AWS.Rekognition.Transform.DescribeProjectsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DescribeProjectsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IDescribeProjectsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeProjectsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeProjectsRequest>, IDescribeProjectsRequestMarshaller)
  strict private
    class var FInstance: IDescribeProjectsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeProjectsRequest): IRequest; overload;
    class function Instance: IDescribeProjectsRequestMarshaller; static;
  end;
  
implementation

{ TDescribeProjectsRequestMarshaller }

function TDescribeProjectsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeProjectsRequest(AInput));
end;

function TDescribeProjectsRequestMarshaller.Marshall(PublicRequest: TDescribeProjectsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DescribeProjects');
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

class constructor TDescribeProjectsRequestMarshaller.Create;
begin
  FInstance := TDescribeProjectsRequestMarshaller.Create;
end;

class function TDescribeProjectsRequestMarshaller.Instance: IDescribeProjectsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
