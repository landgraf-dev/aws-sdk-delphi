unit AWS.Rekognition.Transform.ListCollectionsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.ListCollectionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IListCollectionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListCollectionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListCollectionsRequest>, IListCollectionsRequestMarshaller)
  strict private
    class var FInstance: IListCollectionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListCollectionsRequest): IRequest; overload;
    class function Instance: IListCollectionsRequestMarshaller; static;
  end;
  
implementation

{ TListCollectionsRequestMarshaller }

function TListCollectionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListCollectionsRequest(AInput));
end;

function TListCollectionsRequestMarshaller.Marshall(PublicRequest: TListCollectionsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.ListCollections');
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

class constructor TListCollectionsRequestMarshaller.Create;
begin
  FInstance := TListCollectionsRequestMarshaller.Create;
end;

class function TListCollectionsRequestMarshaller.Instance: IListCollectionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
