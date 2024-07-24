unit AWS.SSM.Transform.DescribeDocumentPermissionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DescribeDocumentPermissionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDescribeDocumentPermissionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeDocumentPermissionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeDocumentPermissionRequest>, IDescribeDocumentPermissionRequestMarshaller)
  strict private
    class var FInstance: IDescribeDocumentPermissionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeDocumentPermissionRequest): IRequest; overload;
    class function Instance: IDescribeDocumentPermissionRequestMarshaller; static;
  end;
  
implementation

{ TDescribeDocumentPermissionRequestMarshaller }

function TDescribeDocumentPermissionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeDocumentPermissionRequest(AInput));
end;

function TDescribeDocumentPermissionRequestMarshaller.Marshall(PublicRequest: TDescribeDocumentPermissionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DescribeDocumentPermission');
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
        if PublicRequest.IsSetMaxResults then
        begin
          Context.Writer.WriteName('MaxResults');
          Context.Writer.WriteInteger(PublicRequest.MaxResults);
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
        if PublicRequest.IsSetPermissionType then
        begin
          Context.Writer.WriteName('PermissionType');
          Context.Writer.WriteString(PublicRequest.PermissionType.Value);
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

class constructor TDescribeDocumentPermissionRequestMarshaller.Create;
begin
  FInstance := TDescribeDocumentPermissionRequestMarshaller.Create;
end;

class function TDescribeDocumentPermissionRequestMarshaller.Instance: IDescribeDocumentPermissionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
