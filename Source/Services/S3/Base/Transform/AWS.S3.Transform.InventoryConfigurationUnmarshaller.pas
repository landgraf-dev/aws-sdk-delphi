unit AWS.S3.Transform.InventoryConfigurationUnmarshaller;

interface

uses
  AWS.S3.Model.InventoryConfiguration, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.InventoryDestinationUnmarshaller, 
  AWS.S3.Transform.InventoryFilterUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.InventoryScheduleUnmarshaller;

type
  IInventoryConfigurationUnmarshaller = IUnmarshaller<TInventoryConfiguration, TXmlUnmarshallerContext>;
  
  TInventoryConfigurationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInventoryConfiguration, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInventoryConfigurationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TInventoryConfiguration;
    class function Instance: IInventoryConfigurationUnmarshaller; static;
  end;
  
implementation

{ TInventoryConfigurationUnmarshaller }

function TInventoryConfigurationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TInventoryConfiguration;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TInventoryConfiguration;
begin
  UnmarshalledObject := TInventoryConfiguration.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Destination', TargetDepth) then
        begin
          var Unmarshaller := TInventoryDestinationUnmarshaller.Instance;
          UnmarshalledObject.Destination := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Filter', TargetDepth) then
        begin
          var Unmarshaller := TInventoryFilterUnmarshaller.Instance;
          UnmarshalledObject.Filter := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Id', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('IncludedObjectVersions', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.IncludedObjectVersions := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('IsEnabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.IsEnabled := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('OptionalFields/Field', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.OptionalFields.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('Schedule', TargetDepth) then
        begin
          var Unmarshaller := TInventoryScheduleUnmarshaller.Instance;
          UnmarshalledObject.Schedule := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
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

class constructor TInventoryConfigurationUnmarshaller.Create;
begin
  FInstance := TInventoryConfigurationUnmarshaller.Create;
end;

class function TInventoryConfigurationUnmarshaller.Instance: IInventoryConfigurationUnmarshaller;
begin
  Result := FInstance;
end;

end.
