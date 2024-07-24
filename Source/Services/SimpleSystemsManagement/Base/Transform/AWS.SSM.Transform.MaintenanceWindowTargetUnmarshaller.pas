unit AWS.SSM.Transform.MaintenanceWindowTargetUnmarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowTarget, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.TargetUnmarshaller, 
  AWS.SSM.Model.Target;

type
  IMaintenanceWindowTargetUnmarshaller = IUnmarshaller<TMaintenanceWindowTarget, TJsonUnmarshallerContext>;
  
  TMaintenanceWindowTargetUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMaintenanceWindowTarget, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMaintenanceWindowTargetUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowTarget;
    class function JsonInstance: IMaintenanceWindowTargetUnmarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowTargetUnmarshaller }

function TMaintenanceWindowTargetUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowTarget;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMaintenanceWindowTarget;
begin
  UnmarshalledObject := TMaintenanceWindowTarget.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Description', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Description := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OwnerInformation', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OwnerInformation := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ResourceType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ResourceType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Targets', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TTarget, ITargetUnmarshaller>.JsonNew(TTargetUnmarshaller.JsonInstance);
        UnmarshalledObject.Targets := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('WindowId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.WindowId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('WindowTargetId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.WindowTargetId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMaintenanceWindowTargetUnmarshaller.Create;
begin
  FJsonInstance := TMaintenanceWindowTargetUnmarshaller.Create;
end;

class function TMaintenanceWindowTargetUnmarshaller.JsonInstance: IMaintenanceWindowTargetUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
