unit AWS.S3.Transform.ConditionUnmarshaller;

interface

uses
  AWS.S3.Model.Condition, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IConditionUnmarshaller = IUnmarshaller<TCondition, TXmlUnmarshallerContext>;
  
  TConditionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCondition, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IConditionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TCondition;
    class function Instance: IConditionUnmarshaller; static;
  end;
  
implementation

{ TConditionUnmarshaller }

function TConditionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TCondition;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TCondition;
begin
  UnmarshalledObject := TCondition.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('HttpErrorCodeReturnedEquals', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.HttpErrorCodeReturnedEquals := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('KeyPrefixEquals', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.KeyPrefixEquals := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TConditionUnmarshaller.Create;
begin
  FInstance := TConditionUnmarshaller.Create;
end;

class function TConditionUnmarshaller.Instance: IConditionUnmarshaller;
begin
  Result := FInstance;
end;

end.
