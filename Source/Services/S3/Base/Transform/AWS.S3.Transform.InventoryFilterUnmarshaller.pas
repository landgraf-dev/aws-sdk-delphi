unit AWS.S3.Transform.InventoryFilterUnmarshaller;

interface

uses
  AWS.S3.Model.InventoryFilter, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInventoryFilterUnmarshaller = IUnmarshaller<TInventoryFilter, TXmlUnmarshallerContext>;
  
  TInventoryFilterUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInventoryFilter, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInventoryFilterUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TInventoryFilter;
    class function Instance: IInventoryFilterUnmarshaller; static;
  end;
  
implementation

{ TInventoryFilterUnmarshaller }

function TInventoryFilterUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TInventoryFilter;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TInventoryFilter;
begin
  UnmarshalledObject := TInventoryFilter.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Prefix', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Prefix := Unmarshaller.Unmarshall(AContext);
          Continue;
        end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TInventoryFilterUnmarshaller.Create;
begin
  FInstance := TInventoryFilterUnmarshaller.Create;
end;

class function TInventoryFilterUnmarshaller.Instance: IInventoryFilterUnmarshaller;
begin
  Result := FInstance;
end;

end.
