unit AWS.SSM.Transform.UpdateMaintenanceWindowTargetRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.UpdateMaintenanceWindowTargetRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.TargetMarshaller;

type
  IUpdateMaintenanceWindowTargetRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateMaintenanceWindowTargetRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateMaintenanceWindowTargetRequest>, IUpdateMaintenanceWindowTargetRequestMarshaller)
  strict private
    class var FInstance: IUpdateMaintenanceWindowTargetRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateMaintenanceWindowTargetRequest): IRequest; overload;
    class function Instance: IUpdateMaintenanceWindowTargetRequestMarshaller; static;
  end;
  
implementation

{ TUpdateMaintenanceWindowTargetRequestMarshaller }

function TUpdateMaintenanceWindowTargetRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateMaintenanceWindowTargetRequest(AInput));
end;

function TUpdateMaintenanceWindowTargetRequestMarshaller.Marshall(PublicRequest: TUpdateMaintenanceWindowTargetRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.UpdateMaintenanceWindowTarget');
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
        if PublicRequest.IsSetReplace then
        begin
          Context.Writer.WriteName('Replace');
          Context.Writer.WriteBoolean(PublicRequest.Replace);
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

class constructor TUpdateMaintenanceWindowTargetRequestMarshaller.Create;
begin
  FInstance := TUpdateMaintenanceWindowTargetRequestMarshaller.Create;
end;

class function TUpdateMaintenanceWindowTargetRequestMarshaller.Instance: IUpdateMaintenanceWindowTargetRequestMarshaller;
begin
  Result := FInstance;
end;

end.
