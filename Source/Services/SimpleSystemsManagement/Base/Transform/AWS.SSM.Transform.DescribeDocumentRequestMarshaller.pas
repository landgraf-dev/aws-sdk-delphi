unit AWS.SSM.Transform.DescribeDocumentRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DescribeDocumentRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDescribeDocumentRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeDocumentRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeDocumentRequest>, IDescribeDocumentRequestMarshaller)
  strict private
    class var FInstance: IDescribeDocumentRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeDocumentRequest): IRequest; overload;
    class function Instance: IDescribeDocumentRequestMarshaller; static;
  end;
  
implementation

{ TDescribeDocumentRequestMarshaller }

function TDescribeDocumentRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeDocumentRequest(AInput));
end;

function TDescribeDocumentRequestMarshaller.Marshall(PublicRequest: TDescribeDocumentRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DescribeDocument');
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

class constructor TDescribeDocumentRequestMarshaller.Create;
begin
  FInstance := TDescribeDocumentRequestMarshaller.Create;
end;

class function TDescribeDocumentRequestMarshaller.Instance: IDescribeDocumentRequestMarshaller;
begin
  Result := FInstance;
end;

end.
