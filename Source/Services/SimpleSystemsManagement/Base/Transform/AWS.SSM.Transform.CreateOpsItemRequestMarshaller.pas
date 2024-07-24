unit AWS.SSM.Transform.CreateOpsItemRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  System.DateUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.CreateOpsItemRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.OpsItemNotificationMarshaller, 
  AWS.SSM.Transform.OpsItemDataValueMarshaller, 
  AWS.SSM.Transform.RelatedOpsItemMarshaller, 
  AWS.SSM.Transform.TagMarshaller;

type
  ICreateOpsItemRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateOpsItemRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateOpsItemRequest>, ICreateOpsItemRequestMarshaller)
  strict private
    class var FInstance: ICreateOpsItemRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateOpsItemRequest): IRequest; overload;
    class function Instance: ICreateOpsItemRequestMarshaller; static;
  end;
  
implementation

{ TCreateOpsItemRequestMarshaller }

function TCreateOpsItemRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateOpsItemRequest(AInput));
end;

function TCreateOpsItemRequestMarshaller.Marshall(PublicRequest: TCreateOpsItemRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.CreateOpsItem');
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
        if PublicRequest.IsSetActualEndTime then
        begin
          Context.Writer.WriteName('ActualEndTime');
          Context.Writer.WriteInteger(DateTimeToUnix(PublicRequest.ActualEndTime, False));
        end;
        if PublicRequest.IsSetActualStartTime then
        begin
          Context.Writer.WriteName('ActualStartTime');
          Context.Writer.WriteInteger(DateTimeToUnix(PublicRequest.ActualStartTime, False));
        end;
        if PublicRequest.IsSetCategory then
        begin
          Context.Writer.WriteName('Category');
          Context.Writer.WriteString(PublicRequest.Category);
        end;
        if PublicRequest.IsSetDescription then
        begin
          Context.Writer.WriteName('Description');
          Context.Writer.WriteString(PublicRequest.Description);
        end;
        if PublicRequest.IsSetNotifications then
        begin
          Context.Writer.WriteName('Notifications');
          Context.Writer.WriteBeginArray;
          for var PublicRequestNotificationsListValue in PublicRequest.Notifications do
          begin
            Context.Writer.WriteBeginObject;
            TOpsItemNotificationMarshaller.Instance.Marshall(PublicRequestNotificationsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetOperationalData then
        begin
          Context.Writer.WriteName('OperationalData');
          Context.Writer.WriteBeginObject;
          for var PublicRequestOperationalDataKvp in PublicRequest.OperationalData do
          begin
            Context.Writer.WriteName(PublicRequestOperationalDataKvp.Key);
            var PublicRequestOperationalDataValue := PublicRequestOperationalDataKvp.Value;
            Context.Writer.WriteBeginObject;
            TOpsItemDataValueMarshaller.Instance.Marshall(PublicRequestOperationalDataValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetOpsItemType then
        begin
          Context.Writer.WriteName('OpsItemType');
          Context.Writer.WriteString(PublicRequest.OpsItemType);
        end;
        if PublicRequest.IsSetPlannedEndTime then
        begin
          Context.Writer.WriteName('PlannedEndTime');
          Context.Writer.WriteInteger(DateTimeToUnix(PublicRequest.PlannedEndTime, False));
        end;
        if PublicRequest.IsSetPlannedStartTime then
        begin
          Context.Writer.WriteName('PlannedStartTime');
          Context.Writer.WriteInteger(DateTimeToUnix(PublicRequest.PlannedStartTime, False));
        end;
        if PublicRequest.IsSetPriority then
        begin
          Context.Writer.WriteName('Priority');
          Context.Writer.WriteInteger(PublicRequest.Priority);
        end;
        if PublicRequest.IsSetRelatedOpsItems then
        begin
          Context.Writer.WriteName('RelatedOpsItems');
          Context.Writer.WriteBeginArray;
          for var PublicRequestRelatedOpsItemsListValue in PublicRequest.RelatedOpsItems do
          begin
            Context.Writer.WriteBeginObject;
            TRelatedOpsItemMarshaller.Instance.Marshall(PublicRequestRelatedOpsItemsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetSeverity then
        begin
          Context.Writer.WriteName('Severity');
          Context.Writer.WriteString(PublicRequest.Severity);
        end;
        if PublicRequest.IsSetSource then
        begin
          Context.Writer.WriteName('Source');
          Context.Writer.WriteString(PublicRequest.Source);
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
        if PublicRequest.IsSetTitle then
        begin
          Context.Writer.WriteName('Title');
          Context.Writer.WriteString(PublicRequest.Title);
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

class constructor TCreateOpsItemRequestMarshaller.Create;
begin
  FInstance := TCreateOpsItemRequestMarshaller.Create;
end;

class function TCreateOpsItemRequestMarshaller.Instance: ICreateOpsItemRequestMarshaller;
begin
  Result := FInstance;
end;

end.
