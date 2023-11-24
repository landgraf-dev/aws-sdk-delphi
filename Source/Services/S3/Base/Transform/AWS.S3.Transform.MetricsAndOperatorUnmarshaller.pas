unit AWS.S3.Transform.MetricsAndOperatorUnmarshaller;

interface

uses
  AWS.S3.Model.MetricsAndOperator, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.TagUnmarshaller, 
  AWS.S3.Model.Tag;

type
  IMetricsAndOperatorUnmarshaller = IUnmarshaller<TMetricsAndOperator, TXmlUnmarshallerContext>;
  
  TMetricsAndOperatorUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMetricsAndOperator, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IMetricsAndOperatorUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TMetricsAndOperator;
    class function Instance: IMetricsAndOperatorUnmarshaller; static;
  end;
  
implementation

{ TMetricsAndOperatorUnmarshaller }

function TMetricsAndOperatorUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TMetricsAndOperator;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TMetricsAndOperator;
begin
  UnmarshalledObject := TMetricsAndOperator.Create;
  try
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
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMetricsAndOperatorUnmarshaller.Create;
begin
  FInstance := TMetricsAndOperatorUnmarshaller.Create;
end;

class function TMetricsAndOperatorUnmarshaller.Instance: IMetricsAndOperatorUnmarshaller;
begin
  Result := FInstance;
end;

end.
