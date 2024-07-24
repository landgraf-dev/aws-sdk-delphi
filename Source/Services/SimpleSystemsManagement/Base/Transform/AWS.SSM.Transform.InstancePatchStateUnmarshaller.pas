unit AWS.SSM.Transform.InstancePatchStateUnmarshaller;

interface

uses
  AWS.SSM.Model.InstancePatchState, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInstancePatchStateUnmarshaller = IUnmarshaller<TInstancePatchState, TJsonUnmarshallerContext>;
  
  TInstancePatchStateUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInstancePatchState, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInstancePatchStateUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInstancePatchState;
    class function JsonInstance: IInstancePatchStateUnmarshaller; static;
  end;
  
implementation

{ TInstancePatchStateUnmarshaller }

function TInstancePatchStateUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInstancePatchState;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInstancePatchState;
begin
  UnmarshalledObject := TInstancePatchState.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('BaselineId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.BaselineId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CriticalNonCompliantCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.CriticalNonCompliantCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FailedCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.FailedCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InstallOverrideList', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.InstallOverrideList := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InstalledCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.InstalledCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InstalledOtherCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.InstalledOtherCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InstalledPendingRebootCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.InstalledPendingRebootCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InstalledRejectedCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.InstalledRejectedCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InstanceId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.InstanceId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastNoRebootInstallOperationTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastNoRebootInstallOperationTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MissingCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.MissingCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NotApplicableCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.NotApplicableCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Operation', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Operation := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OperationEndTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.OperationEndTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OperationStartTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.OperationStartTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OtherNonCompliantCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.OtherNonCompliantCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OwnerInformation', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OwnerInformation := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PatchGroup', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.PatchGroup := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RebootOption', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.RebootOption := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SecurityNonCompliantCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.SecurityNonCompliantCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SnapshotId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SnapshotId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('UnreportedNotApplicableCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.UnreportedNotApplicableCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInstancePatchStateUnmarshaller.Create;
begin
  FJsonInstance := TInstancePatchStateUnmarshaller.Create;
end;

class function TInstancePatchStateUnmarshaller.JsonInstance: IInstancePatchStateUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
