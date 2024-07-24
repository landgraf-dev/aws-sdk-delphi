unit AWS.SSM.Transform.MaintenanceWindowIdentityForTargetUnmarshaller;

interface

uses
  AWS.SSM.Model.MaintenanceWindowIdentityForTarget, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMaintenanceWindowIdentityForTargetUnmarshaller = IUnmarshaller<TMaintenanceWindowIdentityForTarget, TJsonUnmarshallerContext>;
  
  TMaintenanceWindowIdentityForTargetUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMaintenanceWindowIdentityForTarget, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMaintenanceWindowIdentityForTargetUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowIdentityForTarget;
    class function JsonInstance: IMaintenanceWindowIdentityForTargetUnmarshaller; static;
  end;
  
implementation

{ TMaintenanceWindowIdentityForTargetUnmarshaller }

function TMaintenanceWindowIdentityForTargetUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMaintenanceWindowIdentityForTarget;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMaintenanceWindowIdentityForTarget;
begin
  UnmarshalledObject := TMaintenanceWindowIdentityForTarget.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('WindowId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.WindowId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMaintenanceWindowIdentityForTargetUnmarshaller.Create;
begin
  FJsonInstance := TMaintenanceWindowIdentityForTargetUnmarshaller.Create;
end;

class function TMaintenanceWindowIdentityForTargetUnmarshaller.JsonInstance: IMaintenanceWindowIdentityForTargetUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
