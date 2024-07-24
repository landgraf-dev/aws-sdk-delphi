unit AWS.SSM.Transform.ListDocumentMetadataHistoryRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.ListDocumentMetadataHistoryRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IListDocumentMetadataHistoryRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListDocumentMetadataHistoryRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListDocumentMetadataHistoryRequest>, IListDocumentMetadataHistoryRequestMarshaller)
  strict private
    class var FInstance: IListDocumentMetadataHistoryRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListDocumentMetadataHistoryRequest): IRequest; overload;
    class function Instance: IListDocumentMetadataHistoryRequestMarshaller; static;
  end;
  
implementation

{ TListDocumentMetadataHistoryRequestMarshaller }

function TListDocumentMetadataHistoryRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListDocumentMetadataHistoryRequest(AInput));
end;

function TListDocumentMetadataHistoryRequestMarshaller.Marshall(PublicRequest: TListDocumentMetadataHistoryRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.ListDocumentMetadataHistory');
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
        if PublicRequest.IsSetDocumentVersion then
        begin
          Context.Writer.WriteName('DocumentVersion');
          Context.Writer.WriteString(PublicRequest.DocumentVersion);
        end;
        if PublicRequest.IsSetMaxResults then
        begin
          Context.Writer.WriteName('MaxResults');
          Context.Writer.WriteInteger(PublicRequest.MaxResults);
        end;
        if PublicRequest.IsSetMetadata then
        begin
          Context.Writer.WriteName('Metadata');
          Context.Writer.WriteString(PublicRequest.Metadata.Value);
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
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

class constructor TListDocumentMetadataHistoryRequestMarshaller.Create;
begin
  FInstance := TListDocumentMetadataHistoryRequestMarshaller.Create;
end;

class function TListDocumentMetadataHistoryRequestMarshaller.Instance: IListDocumentMetadataHistoryRequestMarshaller;
begin
  Result := FInstance;
end;

end.
