unit AWS.SSM.Transform.DeleteDocumentRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DeleteDocumentRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeleteDocumentRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteDocumentRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteDocumentRequest>, IDeleteDocumentRequestMarshaller)
  strict private
    class var FInstance: IDeleteDocumentRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteDocumentRequest): IRequest; overload;
    class function Instance: IDeleteDocumentRequestMarshaller; static;
  end;
  
implementation

{ TDeleteDocumentRequestMarshaller }

function TDeleteDocumentRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteDocumentRequest(AInput));
end;

function TDeleteDocumentRequestMarshaller.Marshall(PublicRequest: TDeleteDocumentRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DeleteDocument');
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
        if PublicRequest.IsSetForce then
        begin
          Context.Writer.WriteName('Force');
          Context.Writer.WriteBoolean(PublicRequest.Force);
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
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

class constructor TDeleteDocumentRequestMarshaller.Create;
begin
  FInstance := TDeleteDocumentRequestMarshaller.Create;
end;

class function TDeleteDocumentRequestMarshaller.Instance: IDeleteDocumentRequestMarshaller;
begin
  Result := FInstance;
end;

end.
