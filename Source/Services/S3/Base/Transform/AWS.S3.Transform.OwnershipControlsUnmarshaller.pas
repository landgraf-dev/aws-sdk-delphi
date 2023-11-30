unit AWS.S3.Transform.OwnershipControlsUnmarshaller;

interface

uses
  AWS.S3.Model.OwnershipControls, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.OwnershipControlsRuleUnmarshaller, 
  AWS.S3.Model.OwnershipControlsRule;

type
  IOwnershipControlsUnmarshaller = IUnmarshaller<TOwnershipControls, TXmlUnmarshallerContext>;
  
  TOwnershipControlsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TOwnershipControls, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IOwnershipControlsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TOwnershipControls;
    class function Instance: IOwnershipControlsUnmarshaller; static;
  end;
  
implementation

{ TOwnershipControlsUnmarshaller }

function TOwnershipControlsUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TOwnershipControls;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TOwnershipControls;
begin
  UnmarshalledObject := TOwnershipControls.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Rule/member', TargetDepth) then
        begin
          var Unmarshaller := TOwnershipControlsRuleUnmarshaller.Instance;
          UnmarshalledObject.Rules.Add(Unmarshaller.Unmarshall(AContext));
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

class constructor TOwnershipControlsUnmarshaller.Create;
begin
  FInstance := TOwnershipControlsUnmarshaller.Create;
end;

class function TOwnershipControlsUnmarshaller.Instance: IOwnershipControlsUnmarshaller;
begin
  Result := FInstance;
end;

end.
