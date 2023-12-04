unit AWS.Rekognition.Transform.UntagResourceRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.UntagResourceRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IUntagResourceRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUntagResourceRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUntagResourceRequest>, IUntagResourceRequestMarshaller)
  strict private
    class var FInstance: IUntagResourceRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUntagResourceRequest): IRequest; overload;
    class function Instance: IUntagResourceRequestMarshaller; static;
  end;
  
implementation

{ TUntagResourceRequestMarshaller }

function TUntagResourceRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUntagResourceRequest(AInput));
end;

function TUntagResourceRequestMarshaller.Marshall(PublicRequest: TUntagResourceRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.UntagResource');
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
        if PublicRequest.IsSetResourceArn then
        begin
          Context.Writer.WriteName('ResourceArn');
          Context.Writer.WriteString(PublicRequest.ResourceArn);
        end;
        if PublicRequest.IsSetTagKeys then
        begin
          Context.Writer.WriteName('TagKeys');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTagKeysListValue in PublicRequest.TagKeys do
            Context.Writer.WriteString(PublicRequestTagKeysListValue);
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

class constructor TUntagResourceRequestMarshaller.Create;
begin
  FInstance := TUntagResourceRequestMarshaller.Create;
end;

class function TUntagResourceRequestMarshaller.Instance: IUntagResourceRequestMarshaller;
begin
  Result := FInstance;
end;

end.
