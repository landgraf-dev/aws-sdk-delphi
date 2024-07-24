unit AWS.SSM.Transform.GetMaintenanceWindowRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetMaintenanceWindowRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetMaintenanceWindowRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetMaintenanceWindowRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetMaintenanceWindowRequest>, IGetMaintenanceWindowRequestMarshaller)
  strict private
    class var FInstance: IGetMaintenanceWindowRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetMaintenanceWindowRequest): IRequest; overload;
    class function Instance: IGetMaintenanceWindowRequestMarshaller; static;
  end;
  
implementation

{ TGetMaintenanceWindowRequestMarshaller }

function TGetMaintenanceWindowRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetMaintenanceWindowRequest(AInput));
end;

function TGetMaintenanceWindowRequestMarshaller.Marshall(PublicRequest: TGetMaintenanceWindowRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetMaintenanceWindow');
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

class constructor TGetMaintenanceWindowRequestMarshaller.Create;
begin
  FInstance := TGetMaintenanceWindowRequestMarshaller.Create;
end;

class function TGetMaintenanceWindowRequestMarshaller.Instance: IGetMaintenanceWindowRequestMarshaller;
begin
  Result := FInstance;
end;

end.
