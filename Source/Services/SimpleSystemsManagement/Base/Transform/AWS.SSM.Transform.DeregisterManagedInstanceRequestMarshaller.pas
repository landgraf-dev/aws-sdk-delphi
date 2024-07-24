unit AWS.SSM.Transform.DeregisterManagedInstanceRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DeregisterManagedInstanceRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeregisterManagedInstanceRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeregisterManagedInstanceRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeregisterManagedInstanceRequest>, IDeregisterManagedInstanceRequestMarshaller)
  strict private
    class var FInstance: IDeregisterManagedInstanceRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeregisterManagedInstanceRequest): IRequest; overload;
    class function Instance: IDeregisterManagedInstanceRequestMarshaller; static;
  end;
  
implementation

{ TDeregisterManagedInstanceRequestMarshaller }

function TDeregisterManagedInstanceRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeregisterManagedInstanceRequest(AInput));
end;

function TDeregisterManagedInstanceRequestMarshaller.Marshall(PublicRequest: TDeregisterManagedInstanceRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DeregisterManagedInstance');
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

class constructor TDeregisterManagedInstanceRequestMarshaller.Create;
begin
  FInstance := TDeregisterManagedInstanceRequestMarshaller.Create;
end;

class function TDeregisterManagedInstanceRequestMarshaller.Instance: IDeregisterManagedInstanceRequestMarshaller;
begin
  Result := FInstance;
end;

end.
