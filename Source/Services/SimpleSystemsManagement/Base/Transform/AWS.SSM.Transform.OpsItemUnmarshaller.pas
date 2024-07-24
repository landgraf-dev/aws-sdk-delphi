unit AWS.SSM.Transform.OpsItemUnmarshaller;

interface

uses
  AWS.SSM.Model.OpsItem, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.OpsItemNotificationUnmarshaller, 
  AWS.SSM.Model.OpsItemNotification, 
  AWS.SSM.Transform.OpsItemDataValueUnmarshaller, 
  AWS.SSM.Model.OpsItemDataValue, 
  AWS.SSM.Transform.RelatedOpsItemUnmarshaller, 
  AWS.SSM.Model.RelatedOpsItem;

type
  IOpsItemUnmarshaller = IUnmarshaller<TOpsItem, TJsonUnmarshallerContext>;
  
  TOpsItemUnmarshaller = class(TInterfacedObject, IUnmarshaller<TOpsItem, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IOpsItemUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TOpsItem;
    class function JsonInstance: IOpsItemUnmarshaller; static;
  end;
  
implementation

{ TOpsItemUnmarshaller }

function TOpsItemUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TOpsItem;
var
  TargetDepth: Integer;
  UnmarshalledObject: TOpsItem;
begin
  UnmarshalledObject := TOpsItem.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ActualEndTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.ActualEndTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ActualStartTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.ActualStartTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Category', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Category := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreatedBy', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CreatedBy := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreatedTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreatedTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Description', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Description := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastModifiedBy', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LastModifiedBy := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastModifiedTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastModifiedTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Notifications', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TOpsItemNotification, IOpsItemNotificationUnmarshaller>.JsonNew(TOpsItemNotificationUnmarshaller.JsonInstance);
        UnmarshalledObject.Notifications := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OperationalData', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectDictionaryUnmarshaller<string, TOpsItemDataValue, IJsonStringUnmarshaller, IOpsItemDataValueUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TOpsItemDataValueUnmarshaller.JsonInstance);
        UnmarshalledObject.OperationalData := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OpsItemId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OpsItemId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OpsItemType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OpsItemType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PlannedEndTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.PlannedEndTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PlannedStartTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.PlannedStartTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Priority', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.Priority := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RelatedOpsItems', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TRelatedOpsItem, IRelatedOpsItemUnmarshaller>.JsonNew(TRelatedOpsItemUnmarshaller.JsonInstance);
        UnmarshalledObject.RelatedOpsItems := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Severity', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Severity := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Source', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Source := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Title', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Title := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Version', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Version := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TOpsItemUnmarshaller.Create;
begin
  FJsonInstance := TOpsItemUnmarshaller.Create;
end;

class function TOpsItemUnmarshaller.JsonInstance: IOpsItemUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
