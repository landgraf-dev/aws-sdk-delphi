unit AWS.SSM.Transform.DeleteMaintenanceWindowRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DeleteMaintenanceWindowRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDeleteMaintenanceWindowRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteMaintenanceWindowRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteMaintenanceWindowRequest>, IDeleteMaintenanceWindowRequestMarshaller)
  strict private
    class var FInstance: IDeleteMaintenanceWindowRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteMaintenanceWindowRequest): IRequest; overload;
    class function Instance: IDeleteMaintenanceWindowRequestMarshaller; static;
  end;
  
implementation

{ TDeleteMaintenanceWindowRequestMarshaller }

function TDeleteMaintenanceWindowRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteMaintenanceWindowRequest(AInput));
end;

function TDeleteMaintenanceWindowRequestMarshaller.Marshall(PublicRequest: TDeleteMaintenanceWindowRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DeleteMaintenanceWindow');
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

class constructor TDeleteMaintenanceWindowRequestMarshaller.Create;
begin
  FInstance := TDeleteMaintenanceWindowRequestMarshaller.Create;
end;

class function TDeleteMaintenanceWindowRequestMarshaller.Instance: IDeleteMaintenanceWindowRequestMarshaller;
begin
  Result := FInstance;
end;

end.
