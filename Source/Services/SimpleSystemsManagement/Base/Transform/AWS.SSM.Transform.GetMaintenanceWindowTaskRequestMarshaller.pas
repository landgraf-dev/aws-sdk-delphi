unit AWS.SSM.Transform.GetMaintenanceWindowTaskRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetMaintenanceWindowTaskRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetMaintenanceWindowTaskRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetMaintenanceWindowTaskRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetMaintenanceWindowTaskRequest>, IGetMaintenanceWindowTaskRequestMarshaller)
  strict private
    class var FInstance: IGetMaintenanceWindowTaskRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetMaintenanceWindowTaskRequest): IRequest; overload;
    class function Instance: IGetMaintenanceWindowTaskRequestMarshaller; static;
  end;
  
implementation

{ TGetMaintenanceWindowTaskRequestMarshaller }

function TGetMaintenanceWindowTaskRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetMaintenanceWindowTaskRequest(AInput));
end;

function TGetMaintenanceWindowTaskRequestMarshaller.Marshall(PublicRequest: TGetMaintenanceWindowTaskRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetMaintenanceWindowTask');
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
        if PublicRequest.IsSetWindowId then
        begin
          Context.Writer.WriteName('WindowId');
          Context.Writer.WriteString(PublicRequest.WindowId);
        end;
        if PublicRequest.IsSetWindowTaskId then
        begin
          Context.Writer.WriteName('WindowTaskId');
          Context.Writer.WriteString(PublicRequest.WindowTaskId);
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

class constructor TGetMaintenanceWindowTaskRequestMarshaller.Create;
begin
  FInstance := TGetMaintenanceWindowTaskRequestMarshaller.Create;
end;

class function TGetMaintenanceWindowTaskRequestMarshaller.Instance: IGetMaintenanceWindowTaskRequestMarshaller;
begin
  Result := FInstance;
end;

end.
