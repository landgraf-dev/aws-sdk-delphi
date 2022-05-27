unit AWS.Rekognition.Transform.DescribeDatasetRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DescribeDatasetRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IDescribeDatasetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeDatasetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeDatasetRequest>, IDescribeDatasetRequestMarshaller)
  strict private
    class var FInstance: IDescribeDatasetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeDatasetRequest): IRequest; overload;
    class function Instance: IDescribeDatasetRequestMarshaller; static;
  end;
  
implementation

{ TDescribeDatasetRequestMarshaller }

function TDescribeDatasetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeDatasetRequest(AInput));
end;

function TDescribeDatasetRequestMarshaller.Marshall(PublicRequest: TDescribeDatasetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DescribeDataset');
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

class constructor TDescribeDatasetRequestMarshaller.Create;
begin
  FInstance := TDescribeDatasetRequestMarshaller.Create;
end;

class function TDescribeDatasetRequestMarshaller.Instance: IDescribeDatasetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
