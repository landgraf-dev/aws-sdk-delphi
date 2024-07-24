unit AWS.SSM.Transform.UpdateAssociationRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.UpdateAssociationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.InstanceAssociationOutputLocationMarshaller, 
  AWS.SSM.Transform.TargetLocationMarshaller, 
  AWS.SSM.Transform.TargetMarshaller;

type
  IUpdateAssociationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateAssociationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateAssociationRequest>, IUpdateAssociationRequestMarshaller)
  strict private
    class var FInstance: IUpdateAssociationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateAssociationRequest): IRequest; overload;
    class function Instance: IUpdateAssociationRequestMarshaller; static;
  end;
  
implementation

{ TUpdateAssociationRequestMarshaller }

function TUpdateAssociationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateAssociationRequest(AInput));
end;

function TUpdateAssociationRequestMarshaller.Marshall(PublicRequest: TUpdateAssociationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.UpdateAssociation');
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
        if PublicRequest.IsSetApplyOnlyAtCronInterval then
        begin
          Context.Writer.WriteName('ApplyOnlyAtCronInterval');
          Context.Writer.WriteBoolean(PublicRequest.ApplyOnlyAtCronInterval);
        end;
        if PublicRequest.IsSetAssociationId then
        begin
          Context.Writer.WriteName('AssociationId');
          Context.Writer.WriteString(PublicRequest.AssociationId);
        end;
        if PublicRequest.IsSetAssociationName then
        begin
          Context.Writer.WriteName('AssociationName');
          Context.Writer.WriteString(PublicRequest.AssociationName);
        end;
        if PublicRequest.IsSetAssociationVersion then
        begin
          Context.Writer.WriteName('AssociationVersion');
          Context.Writer.WriteString(PublicRequest.AssociationVersion);
        end;
        if PublicRequest.IsSetAutomationTargetParameterName then
        begin
          Context.Writer.WriteName('AutomationTargetParameterName');
          Context.Writer.WriteString(PublicRequest.AutomationTargetParameterName);
        end;
        if PublicRequest.IsSetCalendarNames then
        begin
          Context.Writer.WriteName('CalendarNames');
          Context.Writer.WriteBeginArray;
          for var PublicRequestCalendarNamesListValue in PublicRequest.CalendarNames do
            Context.Writer.WriteString(PublicRequestCalendarNamesListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetComplianceSeverity then
        begin
          Context.Writer.WriteName('ComplianceSeverity');
          Context.Writer.WriteString(PublicRequest.ComplianceSeverity.Value);
        end;
        if PublicRequest.IsSetDocumentVersion then
        begin
          Context.Writer.WriteName('DocumentVersion');
          Context.Writer.WriteString(PublicRequest.DocumentVersion);
        end;
        if PublicRequest.IsSetMaxConcurrency then
        begin
          Context.Writer.WriteName('MaxConcurrency');
          Context.Writer.WriteString(PublicRequest.MaxConcurrency);
        end;
        if PublicRequest.IsSetMaxErrors then
        begin
          Context.Writer.WriteName('MaxErrors');
          Context.Writer.WriteString(PublicRequest.MaxErrors);
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
        end;
        if PublicRequest.IsSetOutputLocation then
        begin
          Context.Writer.WriteName('OutputLocation');
          Context.Writer.WriteBeginObject;
          TInstanceAssociationOutputLocationMarshaller.Instance.Marshall(PublicRequest.OutputLocation, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetParameters then
        begin
          Context.Writer.WriteName('Parameters');
          Context.Writer.WriteBeginObject;
          for var PublicRequestParametersKvp in PublicRequest.Parameters do
          begin
            Context.Writer.WriteName(PublicRequestParametersKvp.Key);
            var PublicRequestParametersValue := PublicRequestParametersKvp.Value;
            Context.Writer.WriteBeginArray;
            for var PublicRequestParametersValueListValue in PublicRequestParametersValue do
              Context.Writer.WriteString(PublicRequestParametersValueListValue);
            Context.Writer.WriteEndArray;
          end;
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetScheduleExpression then
        begin
          Context.Writer.WriteName('ScheduleExpression');
          Context.Writer.WriteString(PublicRequest.ScheduleExpression);
        end;
        if PublicRequest.IsSetScheduleOffset then
        begin
          Context.Writer.WriteName('ScheduleOffset');
          Context.Writer.WriteInteger(PublicRequest.ScheduleOffset);
        end;
        if PublicRequest.IsSetSyncCompliance then
        begin
          Context.Writer.WriteName('SyncCompliance');
          Context.Writer.WriteString(PublicRequest.SyncCompliance.Value);
        end;
        if PublicRequest.IsSetTargetLocations then
        begin
          Context.Writer.WriteName('TargetLocations');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTargetLocationsListValue in PublicRequest.TargetLocations do
          begin
            Context.Writer.WriteBeginObject;
            TTargetLocationMarshaller.Instance.Marshall(PublicRequestTargetLocationsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetTargetMaps then
        begin
          Context.Writer.WriteName('TargetMaps');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTargetMapsListValue in PublicRequest.TargetMaps do
          begin
            Context.Writer.WriteBeginObject;
            for var PublicRequestTargetMapsListValueKvp in PublicRequestTargetMapsListValue do
            begin
              Context.Writer.WriteName(PublicRequestTargetMapsListValueKvp.Key);
              var PublicRequestTargetMapsListValueValue := PublicRequestTargetMapsListValueKvp.Value;
              Context.Writer.WriteBeginArray;
              for var PublicRequestTargetMapsListValueValueListValue in PublicRequestTargetMapsListValueValue do
                Context.Writer.WriteString(PublicRequestTargetMapsListValueValueListValue);
              Context.Writer.WriteEndArray;
            end;
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
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

class constructor TUpdateAssociationRequestMarshaller.Create;
begin
  FInstance := TUpdateAssociationRequestMarshaller.Create;
end;

class function TUpdateAssociationRequestMarshaller.Instance: IUpdateAssociationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
