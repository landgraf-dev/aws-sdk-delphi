unit AWS.Rekognition.Transform.DescribeCollectionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DescribeCollectionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDescribeCollectionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeCollectionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeCollectionRequest>, IDescribeCollectionRequestMarshaller)
  strict private
    class var FInstance: IDescribeCollectionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeCollectionRequest): IRequest; overload;
    class function Instance: IDescribeCollectionRequestMarshaller; static;
  end;
  
implementation

{ TDescribeCollectionRequestMarshaller }

function TDescribeCollectionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeCollectionRequest(AInput));
end;

function TDescribeCollectionRequestMarshaller.Marshall(PublicRequest: TDescribeCollectionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DescribeCollection');
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
        if PublicRequest.IsSetCollectionId then
        begin
          Context.Writer.WriteName('CollectionId');
          Context.Writer.WriteString(PublicRequest.CollectionId);
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

class constructor TDescribeCollectionRequestMarshaller.Create;
begin
  FInstance := TDescribeCollectionRequestMarshaller.Create;
end;

class function TDescribeCollectionRequestMarshaller.Instance: IDescribeCollectionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
