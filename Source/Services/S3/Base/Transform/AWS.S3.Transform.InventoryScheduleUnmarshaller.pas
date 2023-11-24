unit AWS.S3.Transform.InventoryScheduleUnmarshaller;

interface

uses
  AWS.S3.Model.InventorySchedule, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInventoryScheduleUnmarshaller = IUnmarshaller<TInventorySchedule, TXmlUnmarshallerContext>;
  
  TInventoryScheduleUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInventorySchedule, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInventoryScheduleUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TInventorySchedule;
    class function Instance: IInventoryScheduleUnmarshaller; static;
  end;
  
implementation

{ TInventoryScheduleUnmarshaller }

function TInventoryScheduleUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TInventorySchedule;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TInventorySchedule;
begin
  UnmarshalledObject := TInventorySchedule.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Frequency', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Frequency := Unmarshaller.Unmarshall(AContext);
          Continue;
        end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInventoryScheduleUnmarshaller.Create;
begin
  FInstance := TInventoryScheduleUnmarshaller.Create;
end;

class function TInventoryScheduleUnmarshaller.Instance: IInventoryScheduleUnmarshaller;
begin
  Result := FInstance;
end;

end.
