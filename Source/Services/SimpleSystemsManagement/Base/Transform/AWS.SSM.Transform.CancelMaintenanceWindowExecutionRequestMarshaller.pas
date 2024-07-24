unit AWS.SSM.Transform.CancelMaintenanceWindowExecutionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.CancelMaintenanceWindowExecutionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  ICancelMaintenanceWindowExecutionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCancelMaintenanceWindowExecutionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCancelMaintenanceWindowExecutionRequest>, ICancelMaintenanceWindowExecutionRequestMarshaller)
  strict private
    class var FInstance: ICancelMaintenanceWindowExecutionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCancelMaintenanceWindowExecutionRequest): IRequest; overload;
    class function Instance: ICancelMaintenanceWindowExecutionRequestMarshaller; static;
  end;
  
implementation

{ TCancelMaintenanceWindowExecutionRequestMarshaller }

function TCancelMaintenanceWindowExecutionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCancelMaintenanceWindowExecutionRequest(AInput));
end;

function TCancelMaintenanceWindowExecutionRequestMarshaller.Marshall(PublicRequest: TCancelMaintenanceWindowExecutionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.CancelMaintenanceWindowExecution');
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

class constructor TCancelMaintenanceWindowExecutionRequestMarshaller.Create;
begin
  FInstance := TCancelMaintenanceWindowExecutionRequestMarshaller.Create;
end;

class function TCancelMaintenanceWindowExecutionRequestMarshaller.Instance: ICancelMaintenanceWindowExecutionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
