unit AWS.SSM.Transform.RegisterTargetWithMaintenanceWindowRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.RegisterTargetWithMaintenanceWindowRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.TargetMarshaller;

type
  IRegisterTargetWithMaintenanceWindowRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TRegisterTargetWithMaintenanceWindowRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TRegisterTargetWithMaintenanceWindowRequest>, IRegisterTargetWithMaintenanceWindowRequestMarshaller)
  strict private
    class var FInstance: IRegisterTargetWithMaintenanceWindowRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TRegisterTargetWithMaintenanceWindowRequest): IRequest; overload;
    class function Instance: IRegisterTargetWithMaintenanceWindowRequestMarshaller; static;
  end;
  
implementation

{ TRegisterTargetWithMaintenanceWindowRequestMarshaller }

function TRegisterTargetWithMaintenanceWindowRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TRegisterTargetWithMaintenanceWindowRequest(AInput));
end;

function TRegisterTargetWithMaintenanceWindowRequestMarshaller.Marshall(PublicRequest: TRegisterTargetWithMaintenanceWindowRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.RegisterTargetWithMaintenanceWindow');
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
        if PublicRequest.IsSetClientToken then
        begin
          Context.Writer.WriteName('ClientToken');
          Context.Writer.WriteString(PublicRequest.ClientToken);
        end
        else
          if not PublicRequest.IsSetClientToken then
          begin
            Context.Writer.WriteName('ClientToken');
            Context.Writer.WriteString(Copy(TGuid.NewGuid.ToString, 2, 36));
          end;
        if PublicRequest.IsSetDescription then
        begin
          Context.Writer.WriteName('Description');
          Context.Writer.WriteString(PublicRequest.Description);
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
        end;
        if PublicRequest.IsSetOwnerInformation then
        begin
          Context.Writer.WriteName('OwnerInformation');
          Context.Writer.WriteString(PublicRequest.OwnerInformation);
        end;
        if PublicRequest.IsSetResourceType then
        begin
          Context.Writer.WriteName('ResourceType');
          Context.Writer.WriteString(PublicRequest.ResourceType.Value);
        end;
        if PublicRequest.IsSetTargets then
        begin
          Context.Writer.WriteName('Targets');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTargetsListValue in PublicRequest.Targets do
          begin
            Context.Writer.WriteBeginObject;
            TTargetMarshaller.Instance.Marshall(PublicRequestTargetsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
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

class constructor TRegisterTargetWithMaintenanceWindowRequestMarshaller.Create;
begin
  FInstance := TRegisterTargetWithMaintenanceWindowRequestMarshaller.Create;
end;

class function TRegisterTargetWithMaintenanceWindowRequestMarshaller.Instance: IRegisterTargetWithMaintenanceWindowRequestMarshaller;
begin
  Result := FInstance;
end;

end.
