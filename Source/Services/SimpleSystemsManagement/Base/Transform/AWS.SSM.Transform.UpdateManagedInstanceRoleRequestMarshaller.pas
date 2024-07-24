unit AWS.SSM.Transform.UpdateManagedInstanceRoleRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.UpdateManagedInstanceRoleRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IUpdateManagedInstanceRoleRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateManagedInstanceRoleRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateManagedInstanceRoleRequest>, IUpdateManagedInstanceRoleRequestMarshaller)
  strict private
    class var FInstance: IUpdateManagedInstanceRoleRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateManagedInstanceRoleRequest): IRequest; overload;
    class function Instance: IUpdateManagedInstanceRoleRequestMarshaller; static;
  end;
  
implementation

{ TUpdateManagedInstanceRoleRequestMarshaller }

function TUpdateManagedInstanceRoleRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateManagedInstanceRoleRequest(AInput));
end;

function TUpdateManagedInstanceRoleRequestMarshaller.Marshall(PublicRequest: TUpdateManagedInstanceRoleRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.UpdateManagedInstanceRole');
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
        if PublicRequest.IsSetIamRole then
        begin
          Context.Writer.WriteName('IamRole');
          Context.Writer.WriteString(PublicRequest.IamRole);
        end;
        if PublicRequest.IsSetInstanceId then
        begin
          Context.Writer.WriteName('InstanceId');
          Context.Writer.WriteString(PublicRequest.InstanceId);
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

class constructor TUpdateManagedInstanceRoleRequestMarshaller.Create;
begin
  FInstance := TUpdateManagedInstanceRoleRequestMarshaller.Create;
end;

class function TUpdateManagedInstanceRoleRequestMarshaller.Instance: IUpdateManagedInstanceRoleRequestMarshaller;
begin
  Result := FInstance;
end;

end.
