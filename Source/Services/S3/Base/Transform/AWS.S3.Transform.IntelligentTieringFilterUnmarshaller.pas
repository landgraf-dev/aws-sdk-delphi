unit AWS.S3.Transform.IntelligentTieringFilterUnmarshaller;

interface

uses
  AWS.S3.Model.IntelligentTieringFilter, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.IntelligentTieringAndOperatorUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.TagUnmarshaller;

type
  IIntelligentTieringFilterUnmarshaller = IUnmarshaller<TIntelligentTieringFilter, TXmlUnmarshallerContext>;
  
  TIntelligentTieringFilterUnmarshaller = class(TInterfacedObject, IUnmarshaller<TIntelligentTieringFilter, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IIntelligentTieringFilterUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TIntelligentTieringFilter;
    class function Instance: IIntelligentTieringFilterUnmarshaller; static;
  end;
  
implementation

{ TIntelligentTieringFilterUnmarshaller }

function TIntelligentTieringFilterUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TIntelligentTieringFilter;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TIntelligentTieringFilter;
begin
  UnmarshalledObject := TIntelligentTieringFilter.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('And', TargetDepth) then
        begin
          var Unmarshaller := TIntelligentTieringAndOperatorUnmarshaller.Instance;
          UnmarshalledObject.&And := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Prefix', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Prefix := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Tag', TargetDepth) then
        begin
          var Unmarshaller := TTagUnmarshaller.Instance;
          UnmarshalledObject.Tag := Unmarshaller.Unmarshall(AContext);
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

class constructor TIntelligentTieringFilterUnmarshaller.Create;
begin
  FInstance := TIntelligentTieringFilterUnmarshaller.Create;
end;

class function TIntelligentTieringFilterUnmarshaller.Instance: IIntelligentTieringFilterUnmarshaller;
begin
  Result := FInstance;
end;

end.
