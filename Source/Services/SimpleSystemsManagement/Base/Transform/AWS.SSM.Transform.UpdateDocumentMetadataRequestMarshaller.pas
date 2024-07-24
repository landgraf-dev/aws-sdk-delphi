unit AWS.SSM.Transform.UpdateDocumentMetadataRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.UpdateDocumentMetadataRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.DocumentReviewsMarshaller;

type
  IUpdateDocumentMetadataRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateDocumentMetadataRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateDocumentMetadataRequest>, IUpdateDocumentMetadataRequestMarshaller)
  strict private
    class var FInstance: IUpdateDocumentMetadataRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateDocumentMetadataRequest): IRequest; overload;
    class function Instance: IUpdateDocumentMetadataRequestMarshaller; static;
  end;
  
implementation

{ TUpdateDocumentMetadataRequestMarshaller }

function TUpdateDocumentMetadataRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateDocumentMetadataRequest(AInput));
end;

function TUpdateDocumentMetadataRequestMarshaller.Marshall(PublicRequest: TUpdateDocumentMetadataRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.UpdateDocumentMetadata');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2014-11-06');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetDocumentReviews then
        begin
          Context.Writer.WriteName('DocumentReviews');
          Context.Writer.WriteBeginObject;
          TDocumentReviewsMarshaller.Instance.Marshall(PublicRequest.DocumentReviews, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetDocumentVersion then
        begin
          Context.Writer.WriteName('DocumentVersion');
          Context.Writer.WriteString(PublicRequest.DocumentVersion);
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
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

class constructor TUpdateDocumentMetadataRequestMarshaller.Create;
begin
  FInstance := TUpdateDocumentMetadataRequestMarshaller.Create;
end;

class function TUpdateDocumentMetadataRequestMarshaller.Instance: IUpdateDocumentMetadataRequestMarshaller;
begin
  Result := FInstance;
end;

end.
