unit AWS.SSM.Transform.InventoryDeletionSummaryItemUnmarshaller;

interface

uses
  AWS.SSM.Model.InventoryDeletionSummaryItem, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInventoryDeletionSummaryItemUnmarshaller = IUnmarshaller<TInventoryDeletionSummaryItem, TJsonUnmarshallerContext>;
  
  TInventoryDeletionSummaryItemUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInventoryDeletionSummaryItem, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInventoryDeletionSummaryItemUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInventoryDeletionSummaryItem;
    class function JsonInstance: IInventoryDeletionSummaryItemUnmarshaller; static;
  end;
  
implementation

{ TInventoryDeletionSummaryItemUnmarshaller }

function TInventoryDeletionSummaryItemUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInventoryDeletionSummaryItem;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInventoryDeletionSummaryItem;
begin
  UnmarshalledObject := TInventoryDeletionSummaryItem.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Count', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.Count := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RemainingCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.RemainingCount := Unmarshaller.Unmarshall(AContext);
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

class constructor TInventoryDeletionSummaryItemUnmarshaller.Create;
begin
  FJsonInstance := TInventoryDeletionSummaryItemUnmarshaller.Create;
end;

class function TInventoryDeletionSummaryItemUnmarshaller.JsonInstance: IInventoryDeletionSummaryItemUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
