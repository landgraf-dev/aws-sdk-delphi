unit AWS.S3.Transform.ObjectLockConfigurationUnmarshaller;

interface

uses
  AWS.S3.Model.ObjectLockConfiguration, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.ObjectLockRuleUnmarshaller;

type
  IObjectLockConfigurationUnmarshaller = IUnmarshaller<TObjectLockConfiguration, TXmlUnmarshallerContext>;
  
  TObjectLockConfigurationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TObjectLockConfiguration, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IObjectLockConfigurationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TObjectLockConfiguration;
    class function Instance: IObjectLockConfigurationUnmarshaller; static;
  end;
  
implementation

{ TObjectLockConfigurationUnmarshaller }

function TObjectLockConfigurationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TObjectLockConfiguration;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TObjectLockConfiguration;
begin
  UnmarshalledObject := TObjectLockConfiguration.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('ObjectLockEnabled', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ObjectLockEnabled := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Rule', TargetDepth) then
        begin
          var Unmarshaller := TObjectLockRuleUnmarshaller.Instance;
          UnmarshalledObject.Rule := Unmarshaller.Unmarshall(AContext);
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

class constructor TObjectLockConfigurationUnmarshaller.Create;
begin
  FInstance := TObjectLockConfigurationUnmarshaller.Create;
end;

class function TObjectLockConfigurationUnmarshaller.Instance: IObjectLockConfigurationUnmarshaller;
begin
  Result := FInstance;
end;

end.
