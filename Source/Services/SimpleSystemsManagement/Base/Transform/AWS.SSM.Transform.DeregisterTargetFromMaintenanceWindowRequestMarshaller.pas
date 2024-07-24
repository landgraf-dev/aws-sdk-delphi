unit AWS.SSM.Transform.DeregisterTargetFromMaintenanceWindowRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DeregisterTargetFromMaintenanceWindowRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeregisterTargetFromMaintenanceWindowRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeregisterTargetFromMaintenanceWindowRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeregisterTargetFromMaintenanceWindowRequest>, IDeregisterTargetFromMaintenanceWindowRequestMarshaller)
  strict private
    class var FInstance: IDeregisterTargetFromMaintenanceWindowRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeregisterTargetFromMaintenanceWindowRequest): IRequest; overload;
    class function Instance: IDeregisterTargetFromMaintenanceWindowRequestMarshaller; static;
  end;
  
implementation

{ TDeregisterTargetFromMaintenanceWindowRequestMarshaller }

function TDeregisterTargetFromMaintenanceWindowRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeregisterTargetFromMaintenanceWindowRequest(AInput));
end;

function TDeregisterTargetFromMaintenanceWindowRequestMarshaller.Marshall(PublicRequest: TDeregisterTargetFromMaintenanceWindowRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DeregisterTargetFromMaintenanceWindow');
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
        if PublicRequest.IsSetSafe then
        begin
          Context.Writer.WriteName('Safe');
          Context.Writer.WriteBoolean(PublicRequest.Safe);
        end;
        if PublicRequest.IsSetWindowId then
        begin
          Context.Writer.WriteName('WindowId');
          Context.Writer.WriteString(PublicRequest.WindowId);
        end;
        if PublicRequest.IsSetWindowTargetId then
        begin
          Context.Writer.WriteName('WindowTargetId');
          Context.Writer.WriteString(PublicRequest.WindowTargetId);
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

class constructor TDeregisterTargetFromMaintenanceWindowRequestMarshaller.Create;
begin
  FInstance := TDeregisterTargetFromMaintenanceWindowRequestMarshaller.Create;
end;

class function TDeregisterTargetFromMaintenanceWindowRequestMarshaller.Instance: IDeregisterTargetFromMaintenanceWindowRequestMarshaller;
begin
  Result := FInstance;
end;

end.
