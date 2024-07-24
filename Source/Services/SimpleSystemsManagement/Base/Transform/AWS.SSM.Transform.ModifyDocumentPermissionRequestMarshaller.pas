unit AWS.SSM.Transform.ModifyDocumentPermissionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.ModifyDocumentPermissionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IModifyDocumentPermissionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TModifyDocumentPermissionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TModifyDocumentPermissionRequest>, IModifyDocumentPermissionRequestMarshaller)
  strict private
    class var FInstance: IModifyDocumentPermissionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TModifyDocumentPermissionRequest): IRequest; overload;
    class function Instance: IModifyDocumentPermissionRequestMarshaller; static;
  end;
  
implementation

{ TModifyDocumentPermissionRequestMarshaller }

function TModifyDocumentPermissionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TModifyDocumentPermissionRequest(AInput));
end;

function TModifyDocumentPermissionRequestMarshaller.Marshall(PublicRequest: TModifyDocumentPermissionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.ModifyDocumentPermission');
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
        if PublicRequest.IsSetAccountIdsToAdd then
        begin
          Context.Writer.WriteName('AccountIdsToAdd');
          Context.Writer.WriteBeginArray;
          for var PublicRequestAccountIdsToAddListValue in PublicRequest.AccountIdsToAdd do
            Context.Writer.WriteString(PublicRequestAccountIdsToAddListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetAccountIdsToRemove then
        begin
          Context.Writer.WriteName('AccountIdsToRemove');
          Context.Writer.WriteBeginArray;
          for var PublicRequestAccountIdsToRemoveListValue in PublicRequest.AccountIdsToRemove do
            Context.Writer.WriteString(PublicRequestAccountIdsToRemoveListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
        end;
        if PublicRequest.IsSetPermissionType then
        begin
          Context.Writer.WriteName('PermissionType');
          Context.Writer.WriteString(PublicRequest.PermissionType.Value);
        end;
        if PublicRequest.IsSetSharedDocumentVersion then
        begin
          Context.Writer.WriteName('SharedDocumentVersion');
          Context.Writer.WriteString(PublicRequest.SharedDocumentVersion);
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

class constructor TModifyDocumentPermissionRequestMarshaller.Create;
begin
  FInstance := TModifyDocumentPermissionRequestMarshaller.Create;
end;

class function TModifyDocumentPermissionRequestMarshaller.Instance: IModifyDocumentPermissionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
