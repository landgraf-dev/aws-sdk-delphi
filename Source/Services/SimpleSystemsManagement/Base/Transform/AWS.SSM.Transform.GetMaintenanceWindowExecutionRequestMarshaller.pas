unit AWS.SSM.Transform.GetMaintenanceWindowExecutionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetMaintenanceWindowExecutionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetMaintenanceWindowExecutionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetMaintenanceWindowExecutionRequest>, IGetMaintenanceWindowExecutionRequestMarshaller)
  strict private
    class var FInstance: IGetMaintenanceWindowExecutionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetMaintenanceWindowExecutionRequest): IRequest; overload;
    class function Instance: IGetMaintenanceWindowExecutionRequestMarshaller; static;
  end;
  
implementation

{ TGetMaintenanceWindowExecutionRequestMarshaller }

function TGetMaintenanceWindowExecutionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetMaintenanceWindowExecutionRequest(AInput));
end;

function TGetMaintenanceWindowExecutionRequestMarshaller.Marshall(PublicRequest: TGetMaintenanceWindowExecutionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetMaintenanceWindowExecution');
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
        if PublicRequest.IsSetWindowExecutionId then
        begin
          Context.Writer.WriteName('WindowExecutionId');
          Context.Writer.WriteString(PublicRequest.WindowExecutionId);
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

class constructor TGetMaintenanceWindowExecutionRequestMarshaller.Create;
begin
  FInstance := TGetMaintenanceWindowExecutionRequestMarshaller.Create;
end;

class function TGetMaintenanceWindowExecutionRequestMarshaller.Instance: IGetMaintenanceWindowExecutionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
