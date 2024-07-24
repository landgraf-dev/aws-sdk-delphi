unit AWS.SSM.Transform.ResourceDataSyncItemUnmarshaller;

interface

uses
  AWS.SSM.Model.ResourceDataSyncItem, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.ResourceDataSyncS3DestinationUnmarshaller, 
  AWS.SSM.Transform.ResourceDataSyncSourceWithStateUnmarshaller;

type
  IResourceDataSyncItemUnmarshaller = IUnmarshaller<TResourceDataSyncItem, TJsonUnmarshallerContext>;
  
  TResourceDataSyncItemUnmarshaller = class(TInterfacedObject, IUnmarshaller<TResourceDataSyncItem, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IResourceDataSyncItemUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TResourceDataSyncItem;
    class function JsonInstance: IResourceDataSyncItemUnmarshaller; static;
  end;
  
implementation

{ TResourceDataSyncItemUnmarshaller }

function TResourceDataSyncItemUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TResourceDataSyncItem;
var
  TargetDepth: Integer;
  UnmarshalledObject: TResourceDataSyncItem;
begin
  UnmarshalledObject := TResourceDataSyncItem.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('LastStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LastStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastSuccessfulSyncTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastSuccessfulSyncTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastSyncStatusMessage', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LastSyncStatusMessage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastSyncTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastSyncTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('S3Destination', TargetDepth) then
      begin
        var Unmarshaller := TResourceDataSyncS3DestinationUnmarshaller.JsonInstance;
        UnmarshalledObject.S3Destination := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SyncCreatedTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.SyncCreatedTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SyncLastModifiedTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.SyncLastModifiedTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SyncName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SyncName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SyncSource', TargetDepth) then
      begin
        var Unmarshaller := TResourceDataSyncSourceWithStateUnmarshaller.JsonInstance;
        UnmarshalledObject.SyncSource := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SyncType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SyncType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TResourceDataSyncItemUnmarshaller.Create;
begin
  FJsonInstance := TResourceDataSyncItemUnmarshaller.Create;
end;

class function TResourceDataSyncItemUnmarshaller.JsonInstance: IResourceDataSyncItemUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
