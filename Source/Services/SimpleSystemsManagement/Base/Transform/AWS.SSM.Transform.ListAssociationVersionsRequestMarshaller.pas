unit AWS.SSM.Transform.ListAssociationVersionsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.ListAssociationVersionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IListAssociationVersionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListAssociationVersionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListAssociationVersionsRequest>, IListAssociationVersionsRequestMarshaller)
  strict private
    class var FInstance: IListAssociationVersionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListAssociationVersionsRequest): IRequest; overload;
    class function Instance: IListAssociationVersionsRequestMarshaller; static;
  end;
  
implementation

{ TListAssociationVersionsRequestMarshaller }

function TListAssociationVersionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListAssociationVersionsRequest(AInput));
end;

function TListAssociationVersionsRequestMarshaller.Marshall(PublicRequest: TListAssociationVersionsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.ListAssociationVersions');
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
        if PublicRequest.IsSetAssociationId then
        begin
          Context.Writer.WriteName('AssociationId');
          Context.Writer.WriteString(PublicRequest.AssociationId);
        end;
        if PublicRequest.IsSetMaxResults then
        begin
          Context.Writer.WriteName('MaxResults');
          Context.Writer.WriteInteger(PublicRequest.MaxResults);
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

class constructor TListAssociationVersionsRequestMarshaller.Create;
begin
  FInstance := TListAssociationVersionsRequestMarshaller.Create;
end;

class function TListAssociationVersionsRequestMarshaller.Instance: IListAssociationVersionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
