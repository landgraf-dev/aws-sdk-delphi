unit AWS.S3.Transform.IntelligentTieringAndOperatorUnmarshaller;

interface

uses
  AWS.S3.Model.IntelligentTieringAndOperator, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.TagUnmarshaller, 
  AWS.S3.Model.Tag;

type
  IIntelligentTieringAndOperatorUnmarshaller = IUnmarshaller<TIntelligentTieringAndOperator, TXmlUnmarshallerContext>;
  
  TIntelligentTieringAndOperatorUnmarshaller = class(TInterfacedObject, IUnmarshaller<TIntelligentTieringAndOperator, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IIntelligentTieringAndOperatorUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TIntelligentTieringAndOperator;
    class function Instance: IIntelligentTieringAndOperatorUnmarshaller; static;
  end;
  
implementation

{ TIntelligentTieringAndOperatorUnmarshaller }

function TIntelligentTieringAndOperatorUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TIntelligentTieringAndOperator;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TIntelligentTieringAndOperator;
begin
  UnmarshalledObject := TIntelligentTieringAndOperator.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Prefix', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Prefix := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Tag/Tag', TargetDepth) then
        begin
          var Unmarshaller := TTagUnmarshaller.Instance;
          UnmarshalledObject.Tags.Add(Unmarshaller.Unmarshall(AContext));
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

class constructor TIntelligentTieringAndOperatorUnmarshaller.Create;
begin
  FInstance := TIntelligentTieringAndOperatorUnmarshaller.Create;
end;

class function TIntelligentTieringAndOperatorUnmarshaller.Instance: IIntelligentTieringAndOperatorUnmarshaller;
begin
  Result := FInstance;
end;

end.
