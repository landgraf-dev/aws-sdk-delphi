unit AWS.SSM.Transform.UpdateDocumentRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.UpdateDocumentRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.AttachmentsSourceMarshaller;

type
  IUpdateDocumentRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateDocumentRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateDocumentRequest>, IUpdateDocumentRequestMarshaller)
  strict private
    class var FInstance: IUpdateDocumentRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateDocumentRequest): IRequest; overload;
    class function Instance: IUpdateDocumentRequestMarshaller; static;
  end;
  
implementation

{ TUpdateDocumentRequestMarshaller }

function TUpdateDocumentRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateDocumentRequest(AInput));
end;

function TUpdateDocumentRequestMarshaller.Marshall(PublicRequest: TUpdateDocumentRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.UpdateDocument');
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
        if PublicRequest.IsSetAttachments then
        begin
          Context.Writer.WriteName('Attachments');
          Context.Writer.WriteBeginArray;
          for var PublicRequestAttachmentsListValue in PublicRequest.Attachments do
          begin
            Context.Writer.WriteBeginObject;
            TAttachmentsSourceMarshaller.Instance.Marshall(PublicRequestAttachmentsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetContent then
        begin
          Context.Writer.WriteName('Content');
          Context.Writer.WriteString(PublicRequest.Content);
        end;
        if PublicRequest.IsSetDisplayName then
        begin
          Context.Writer.WriteName('DisplayName');
          Context.Writer.WriteString(PublicRequest.DisplayName);
        end;
        if PublicRequest.IsSetDocumentFormat then
        begin
          Context.Writer.WriteName('DocumentFormat');
          Context.Writer.WriteString(PublicRequest.DocumentFormat.Value);
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
        if PublicRequest.IsSetTargetType then
        begin
          Context.Writer.WriteName('TargetType');
          Context.Writer.WriteString(PublicRequest.TargetType);
        end;
        if PublicRequest.IsSetVersionName then
        begin
          Context.Writer.WriteName('VersionName');
          Context.Writer.WriteString(PublicRequest.VersionName);
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

class constructor TUpdateDocumentRequestMarshaller.Create;
begin
  FInstance := TUpdateDocumentRequestMarshaller.Create;
end;

class function TUpdateDocumentRequestMarshaller.Instance: IUpdateDocumentRequestMarshaller;
begin
  Result := FInstance;
end;

end.
