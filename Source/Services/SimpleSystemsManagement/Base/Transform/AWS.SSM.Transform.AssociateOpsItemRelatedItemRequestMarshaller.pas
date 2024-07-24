unit AWS.SSM.Transform.AssociateOpsItemRelatedItemRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.AssociateOpsItemRelatedItemRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IAssociateOpsItemRelatedItemRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TAssociateOpsItemRelatedItemRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TAssociateOpsItemRelatedItemRequest>, IAssociateOpsItemRelatedItemRequestMarshaller)
  strict private
    class var FInstance: IAssociateOpsItemRelatedItemRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TAssociateOpsItemRelatedItemRequest): IRequest; overload;
    class function Instance: IAssociateOpsItemRelatedItemRequestMarshaller; static;
  end;
  
implementation

{ TAssociateOpsItemRelatedItemRequestMarshaller }

function TAssociateOpsItemRelatedItemRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TAssociateOpsItemRelatedItemRequest(AInput));
end;

function TAssociateOpsItemRelatedItemRequestMarshaller.Marshall(PublicRequest: TAssociateOpsItemRelatedItemRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.AssociateOpsItemRelatedItem');
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
        if PublicRequest.IsSetAssociationType then
        begin
          Context.Writer.WriteName('AssociationType');
          Context.Writer.WriteString(PublicRequest.AssociationType);
        end;
        if PublicRequest.IsSetOpsItemId then
        begin
          Context.Writer.WriteName('OpsItemId');
          Context.Writer.WriteString(PublicRequest.OpsItemId);
        end;
        if PublicRequest.IsSetResourceType then
        begin
          Context.Writer.WriteName('ResourceType');
          Context.Writer.WriteString(PublicRequest.ResourceType);
        end;
        if PublicRequest.IsSetResourceUri then
        begin
          Context.Writer.WriteName('ResourceUri');
          Context.Writer.WriteString(PublicRequest.ResourceUri);
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

class constructor TAssociateOpsItemRelatedItemRequestMarshaller.Create;
begin
  FInstance := TAssociateOpsItemRelatedItemRequestMarshaller.Create;
end;

class function TAssociateOpsItemRelatedItemRequestMarshaller.Instance: IAssociateOpsItemRelatedItemRequestMarshaller;
begin
  Result := FInstance;
end;

end.
