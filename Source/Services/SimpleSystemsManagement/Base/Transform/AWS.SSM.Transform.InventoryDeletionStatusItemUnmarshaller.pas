unit AWS.SSM.Transform.InventoryDeletionStatusItemUnmarshaller;

interface

uses
  AWS.SSM.Model.InventoryDeletionStatusItem, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.InventoryDeletionSummaryUnmarshaller;

type
  IInventoryDeletionStatusItemUnmarshaller = IUnmarshaller<TInventoryDeletionStatusItem, TJsonUnmarshallerContext>;
  
  TInventoryDeletionStatusItemUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInventoryDeletionStatusItem, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInventoryDeletionStatusItemUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInventoryDeletionStatusItem;
    class function JsonInstance: IInventoryDeletionStatusItemUnmarshaller; static;
  end;
  
implementation

{ TInventoryDeletionStatusItemUnmarshaller }

function TInventoryDeletionStatusItemUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInventoryDeletionStatusItem;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInventoryDeletionStatusItem;
begin
  UnmarshalledObject := TInventoryDeletionStatusItem.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DeletionId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DeletionId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DeletionStartTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.DeletionStartTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DeletionSummary', TargetDepth) then
      begin
        var Unmarshaller := TInventoryDeletionSummaryUnmarshaller.JsonInstance;
        UnmarshalledObject.DeletionSummary := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LastStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastStatusMessage', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LastStatusMessage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastStatusUpdateTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastStatusUpdateTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TypeName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TypeName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInventoryDeletionStatusItemUnmarshaller.Create;
begin
  FJsonInstance := TInventoryDeletionStatusItemUnmarshaller.Create;
end;

class function TInventoryDeletionStatusItemUnmarshaller.JsonInstance: IInventoryDeletionStatusItemUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
