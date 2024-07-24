unit AWS.SSM.Transform.UpdateDocumentDefaultVersionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.UpdateDocumentDefaultVersionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IUpdateDocumentDefaultVersionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateDocumentDefaultVersionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateDocumentDefaultVersionRequest>, IUpdateDocumentDefaultVersionRequestMarshaller)
  strict private
    class var FInstance: IUpdateDocumentDefaultVersionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateDocumentDefaultVersionRequest): IRequest; overload;
    class function Instance: IUpdateDocumentDefaultVersionRequestMarshaller; static;
  end;
  
implementation

{ TUpdateDocumentDefaultVersionRequestMarshaller }

function TUpdateDocumentDefaultVersionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateDocumentDefaultVersionRequest(AInput));
end;

function TUpdateDocumentDefaultVersionRequestMarshaller.Marshall(PublicRequest: TUpdateDocumentDefaultVersionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.UpdateDocumentDefaultVersion');
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

class constructor TUpdateDocumentDefaultVersionRequestMarshaller.Create;
begin
  FInstance := TUpdateDocumentDefaultVersionRequestMarshaller.Create;
end;

class function TUpdateDocumentDefaultVersionRequestMarshaller.Instance: IUpdateDocumentDefaultVersionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
