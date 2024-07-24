unit AWS.SSM.Transform.InventoryDeletionSummaryUnmarshaller;

interface

uses
  AWS.SSM.Model.InventoryDeletionSummary, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.InventoryDeletionSummaryItemUnmarshaller, 
  AWS.SSM.Model.InventoryDeletionSummaryItem;

type
  IInventoryDeletionSummaryUnmarshaller = IUnmarshaller<TInventoryDeletionSummary, TJsonUnmarshallerContext>;
  
  TInventoryDeletionSummaryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInventoryDeletionSummary, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInventoryDeletionSummaryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInventoryDeletionSummary;
    class function JsonInstance: IInventoryDeletionSummaryUnmarshaller; static;
  end;
  
implementation

{ TInventoryDeletionSummaryUnmarshaller }

function TInventoryDeletionSummaryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInventoryDeletionSummary;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInventoryDeletionSummary;
begin
  UnmarshalledObject := TInventoryDeletionSummary.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('RemainingCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.RemainingCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SummaryItems', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TInventoryDeletionSummaryItem, IInventoryDeletionSummaryItemUnmarshaller>.JsonNew(TInventoryDeletionSummaryItemUnmarshaller.JsonInstance);
        UnmarshalledObject.SummaryItems := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TotalCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.TotalCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInventoryDeletionSummaryUnmarshaller.Create;
begin
  FJsonInstance := TInventoryDeletionSummaryUnmarshaller.Create;
end;

class function TInventoryDeletionSummaryUnmarshaller.JsonInstance: IInventoryDeletionSummaryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
