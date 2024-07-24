unit AWS.SSM.Transform.CreateDocumentRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.CreateDocumentRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.AttachmentsSourceMarshaller, 
  AWS.SSM.Transform.DocumentRequiresMarshaller, 
  AWS.SSM.Transform.TagMarshaller;

type
  ICreateDocumentRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateDocumentRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateDocumentRequest>, ICreateDocumentRequestMarshaller)
  strict private
    class var FInstance: ICreateDocumentRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateDocumentRequest): IRequest; overload;
    class function Instance: ICreateDocumentRequestMarshaller; static;
  end;
  
implementation

{ TCreateDocumentRequestMarshaller }

function TCreateDocumentRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateDocumentRequest(AInput));
end;

function TCreateDocumentRequestMarshaller.Marshall(PublicRequest: TCreateDocumentRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.CreateDocument');
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
        if PublicRequest.IsSetDocumentType then
        begin
          Context.Writer.WriteName('DocumentType');
          Context.Writer.WriteString(PublicRequest.DocumentType.Value);
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
        end;
        if PublicRequest.IsSetRequires then
        begin
          Context.Writer.WriteName('Requires');
          Context.Writer.WriteBeginArray;
          for var PublicRequestRequiresListValue in PublicRequest.Requires do
          begin
            Context.Writer.WriteBeginObject;
            TDocumentRequiresMarshaller.Instance.Marshall(PublicRequestRequiresListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetTags then
        begin
          Context.Writer.WriteName('Tags');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTagsListValue in PublicRequest.Tags do
          begin
            Context.Writer.WriteBeginObject;
            TTagMarshaller.Instance.Marshall(PublicRequestTagsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
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

class constructor TCreateDocumentRequestMarshaller.Create;
begin
  FInstance := TCreateDocumentRequestMarshaller.Create;
end;

class function TCreateDocumentRequestMarshaller.Instance: ICreateDocumentRequestMarshaller;
begin
  Result := FInstance;
end;

end.
