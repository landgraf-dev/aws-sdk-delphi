unit AWS.SSM.Transform.DisassociateOpsItemRelatedItemRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DisassociateOpsItemRelatedItemRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDisassociateOpsItemRelatedItemRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDisassociateOpsItemRelatedItemRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDisassociateOpsItemRelatedItemRequest>, IDisassociateOpsItemRelatedItemRequestMarshaller)
  strict private
    class var FInstance: IDisassociateOpsItemRelatedItemRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDisassociateOpsItemRelatedItemRequest): IRequest; overload;
    class function Instance: IDisassociateOpsItemRelatedItemRequestMarshaller; static;
  end;
  
implementation

{ TDisassociateOpsItemRelatedItemRequestMarshaller }

function TDisassociateOpsItemRelatedItemRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDisassociateOpsItemRelatedItemRequest(AInput));
end;

function TDisassociateOpsItemRelatedItemRequestMarshaller.Marshall(PublicRequest: TDisassociateOpsItemRelatedItemRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DisassociateOpsItemRelatedItem');
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
        if PublicRequest.IsSetOpsItemId then
        begin
          Context.Writer.WriteName('OpsItemId');
          Context.Writer.WriteString(PublicRequest.OpsItemId);
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

class constructor TDisassociateOpsItemRelatedItemRequestMarshaller.Create;
begin
  FInstance := TDisassociateOpsItemRelatedItemRequestMarshaller.Create;
end;

class function TDisassociateOpsItemRelatedItemRequestMarshaller.Instance: IDisassociateOpsItemRelatedItemRequestMarshaller;
begin
  Result := FInstance;
end;

end.
