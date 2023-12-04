unit AWS.Textract.Transform.DetectDocumentTextRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Textract.Model.DetectDocumentTextRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.Textract.Transform.DocumentMarshaller;

type
  IDetectDocumentTextRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDetectDocumentTextRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDetectDocumentTextRequest>, IDetectDocumentTextRequestMarshaller)
  strict private
    class var FInstance: IDetectDocumentTextRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDetectDocumentTextRequest): IRequest; overload;
    class function Instance: IDetectDocumentTextRequestMarshaller; static;
  end;
  
implementation

{ TDetectDocumentTextRequestMarshaller }

function TDetectDocumentTextRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDetectDocumentTextRequest(AInput));
end;

function TDetectDocumentTextRequestMarshaller.Marshall(PublicRequest: TDetectDocumentTextRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Textract');
  Request.Headers.Add('X-Amz-Target', 'Textract.DetectDocumentText');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2018-06-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetDocument then
        begin
          Context.Writer.WriteName('Document');
          Context.Writer.WriteBeginObject;
          TDocumentMarshaller.Instance.Marshall(PublicRequest.Document, Context);
          Context.Writer.WriteEndObject;
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

class constructor TDetectDocumentTextRequestMarshaller.Create;
begin
  FInstance := TDetectDocumentTextRequestMarshaller.Create;
end;

class function TDetectDocumentTextRequestMarshaller.Instance: IDetectDocumentTextRequestMarshaller;
begin
  Result := FInstance;
end;

end.
