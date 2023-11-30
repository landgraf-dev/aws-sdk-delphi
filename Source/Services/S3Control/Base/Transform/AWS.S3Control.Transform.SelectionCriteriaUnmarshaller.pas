unit AWS.S3Control.Transform.SelectionCriteriaUnmarshaller;

interface

uses
  AWS.S3Control.Model.SelectionCriteria, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISelectionCriteriaUnmarshaller = IUnmarshaller<TSelectionCriteria, TXmlUnmarshallerContext>;
  
  TSelectionCriteriaUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSelectionCriteria, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ISelectionCriteriaUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TSelectionCriteria;
    class function Instance: ISelectionCriteriaUnmarshaller; static;
  end;
  
implementation

{ TSelectionCriteriaUnmarshaller }

function TSelectionCriteriaUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TSelectionCriteria;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TSelectionCriteria;
begin
  UnmarshalledObject := TSelectionCriteria.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Delimiter', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Delimiter := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('MaxDepth', TargetDepth) then
        begin
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.MaxDepth := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('MinStorageBytesPercentage', TargetDepth) then
        begin
          var Unmarshaller := TDoubleUnmarshaller.Instance;
          UnmarshalledObject.MinStorageBytesPercentage := Unmarshaller.Unmarshall(AContext);
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

class constructor TSelectionCriteriaUnmarshaller.Create;
begin
  FInstance := TSelectionCriteriaUnmarshaller.Create;
end;

class function TSelectionCriteriaUnmarshaller.Instance: ISelectionCriteriaUnmarshaller;
begin
  Result := FInstance;
end;

end.
