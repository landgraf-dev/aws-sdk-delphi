unit AWS.S3.Transform.MetricsFilterUnmarshaller;

interface

uses
  AWS.S3.Model.MetricsFilter, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.MetricsAndOperatorUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.TagUnmarshaller;

type
  IMetricsFilterUnmarshaller = IUnmarshaller<TMetricsFilter, TXmlUnmarshallerContext>;
  
  TMetricsFilterUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMetricsFilter, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IMetricsFilterUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TMetricsFilter;
    class function Instance: IMetricsFilterUnmarshaller; static;
  end;
  
implementation

{ TMetricsFilterUnmarshaller }

function TMetricsFilterUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TMetricsFilter;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TMetricsFilter;
begin
  UnmarshalledObject := TMetricsFilter.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('And', TargetDepth) then
        begin
          var Unmarshaller := TMetricsAndOperatorUnmarshaller.Instance;
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
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TMetricsFilterUnmarshaller.Create;
begin
  FInstance := TMetricsFilterUnmarshaller.Create;
end;

class function TMetricsFilterUnmarshaller.Instance: IMetricsFilterUnmarshaller;
begin
  Result := FInstance;
end;

end.
