unit AWS.Rekognition.Transform.DeleteCollectionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DeleteCollectionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IDeleteCollectionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteCollectionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteCollectionRequest>, IDeleteCollectionRequestMarshaller)
  strict private
    class var FInstance: IDeleteCollectionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteCollectionRequest): IRequest; overload;
    class function Instance: IDeleteCollectionRequestMarshaller; static;
  end;
  
implementation

{ TDeleteCollectionRequestMarshaller }

function TDeleteCollectionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteCollectionRequest(AInput));
end;

function TDeleteCollectionRequestMarshaller.Marshall(PublicRequest: TDeleteCollectionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.DeleteCollection');
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

class constructor TDeleteCollectionRequestMarshaller.Create;
begin
  FInstance := TDeleteCollectionRequestMarshaller.Create;
end;

class function TDeleteCollectionRequestMarshaller.Instance: IDeleteCollectionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
