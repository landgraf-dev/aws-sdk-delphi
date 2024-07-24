unit AWS.SSM.Transform.ListDocumentVersionsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.ListDocumentVersionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IListDocumentVersionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListDocumentVersionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListDocumentVersionsRequest>, IListDocumentVersionsRequestMarshaller)
  strict private
    class var FInstance: IListDocumentVersionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListDocumentVersionsRequest): IRequest; overload;
    class function Instance: IListDocumentVersionsRequestMarshaller; static;
  end;
  
implementation

{ TListDocumentVersionsRequestMarshaller }

function TListDocumentVersionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListDocumentVersionsRequest(AInput));
end;

function TListDocumentVersionsRequestMarshaller.Marshall(PublicRequest: TListDocumentVersionsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.ListDocumentVersions');
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

class constructor TListDocumentVersionsRequestMarshaller.Create;
begin
  FInstance := TListDocumentVersionsRequestMarshaller.Create;
end;

class function TListDocumentVersionsRequestMarshaller.Instance: IListDocumentVersionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
