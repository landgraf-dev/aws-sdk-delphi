unit AWS.SSM.Transform.CreateMaintenanceWindowRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.CreateMaintenanceWindowRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.TagMarshaller;

type
  ICreateMaintenanceWindowRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateMaintenanceWindowRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateMaintenanceWindowRequest>, ICreateMaintenanceWindowRequestMarshaller)
  strict private
    class var FInstance: ICreateMaintenanceWindowRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateMaintenanceWindowRequest): IRequest; overload;
    class function Instance: ICreateMaintenanceWindowRequestMarshaller; static;
  end;
  
implementation

{ TCreateMaintenanceWindowRequestMarshaller }

function TCreateMaintenanceWindowRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateMaintenanceWindowRequest(AInput));
end;

function TCreateMaintenanceWindowRequestMarshaller.Marshall(PublicRequest: TCreateMaintenanceWindowRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.CreateMaintenanceWindow');
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
        if PublicRequest.IsSetTags then
        begin
          Context.Writer.WriteName('Tags');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTagsListValue in PublicRequest.Tags do
          begin
            Context.Writer.WriteBeginObject;
            TTagMarshaller.Instance.Marshall(PublicRequestTagsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
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

class constructor TCreateMaintenanceWindowRequestMarshaller.Create;
begin
  FInstance := TCreateMaintenanceWindowRequestMarshaller.Create;
end;

class function TCreateMaintenanceWindowRequestMarshaller.Instance: ICreateMaintenanceWindowRequestMarshaller;
begin
  Result := FInstance;
end;

end.
