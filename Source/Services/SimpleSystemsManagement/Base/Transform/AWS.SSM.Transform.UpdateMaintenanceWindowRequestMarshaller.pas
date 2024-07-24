unit AWS.SSM.Transform.UpdateMaintenanceWindowRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.UpdateMaintenanceWindowRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IUpdateMaintenanceWindowRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateMaintenanceWindowRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateMaintenanceWindowRequest>, IUpdateMaintenanceWindowRequestMarshaller)
  strict private
    class var FInstance: IUpdateMaintenanceWindowRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateMaintenanceWindowRequest): IRequest; overload;
    class function Instance: IUpdateMaintenanceWindowRequestMarshaller; static;
  end;
  
implementation

{ TUpdateMaintenanceWindowRequestMarshaller }

function TUpdateMaintenanceWindowRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateMaintenanceWindowRequest(AInput));
end;

function TUpdateMaintenanceWindowRequestMarshaller.Marshall(PublicRequest: TUpdateMaintenanceWindowRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.UpdateMaintenanceWindow');
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
        if PublicRequest.IsSetAllowUnassociatedTargets then
        begin
          Context.Writer.WriteName('AllowUnassociatedTargets');
          Context.Writer.WriteBoolean(PublicRequest.AllowUnassociatedTargets);
        end;
        if PublicRequest.IsSetCutoff then
        begin
          Context.Writer.WriteName('Cutoff');
          Context.Writer.WriteInteger(PublicRequest.Cutoff);
        end;
        if PublicRequest.IsSetDescription then
        begin
          Context.Writer.WriteName('Description');
          Context.Writer.WriteString(PublicRequest.Description);
        end;
        if PublicRequest.IsSetDuration then
        begin
          Context.Writer.WriteName('Duration');
          Context.Writer.WriteInteger(PublicRequest.Duration);
        end;
        if PublicRequest.IsSetEnabled then
        begin
          Context.Writer.WriteName('Enabled');
          Context.Writer.WriteBoolean(PublicRequest.Enabled);
        end;
        if PublicRequest.IsSetEndDate then
        begin
          Context.Writer.WriteName('EndDate');
          Context.Writer.WriteString(PublicRequest.EndDate);
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
        end;
        if PublicRequest.IsSetReplace then
        begin
          Context.Writer.WriteName('Replace');
          Context.Writer.WriteBoolean(PublicRequest.Replace);
        end;
        if PublicRequest.IsSetSchedule then
        begin
          Context.Writer.WriteName('Schedule');
          Context.Writer.WriteString(PublicRequest.Schedule);
        end;
        if PublicRequest.IsSetScheduleOffset then
        begin
          Context.Writer.WriteName('ScheduleOffset');
          Context.Writer.WriteInteger(PublicRequest.ScheduleOffset);
        end;
        if PublicRequest.IsSetScheduleTimezone then
        begin
          Context.Writer.WriteName('ScheduleTimezone');
          Context.Writer.WriteString(PublicRequest.ScheduleTimezone);
        end;
        if PublicRequest.IsSetStartDate then
        begin
          Context.Writer.WriteName('StartDate');
          Context.Writer.WriteString(PublicRequest.StartDate);
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

class constructor TUpdateMaintenanceWindowRequestMarshaller.Create;
begin
  FInstance := TUpdateMaintenanceWindowRequestMarshaller.Create;
end;

class function TUpdateMaintenanceWindowRequestMarshaller.Instance: IUpdateMaintenanceWindowRequestMarshaller;
begin
  Result := FInstance;
end;

end.
