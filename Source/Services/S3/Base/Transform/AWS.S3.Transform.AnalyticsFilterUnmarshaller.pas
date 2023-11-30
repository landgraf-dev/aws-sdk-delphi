unit AWS.S3.Transform.AnalyticsFilterUnmarshaller;

interface

uses
  AWS.S3.Model.AnalyticsFilter, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.AnalyticsAndOperatorUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.TagUnmarshaller;

type
  IAnalyticsFilterUnmarshaller = IUnmarshaller<TAnalyticsFilter, TXmlUnmarshallerContext>;
  
  TAnalyticsFilterUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAnalyticsFilter, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IAnalyticsFilterUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAnalyticsFilter;
    class function Instance: IAnalyticsFilterUnmarshaller; static;
  end;
  
implementation

{ TAnalyticsFilterUnmarshaller }

function TAnalyticsFilterUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAnalyticsFilter;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TAnalyticsFilter;
begin
  UnmarshalledObject := TAnalyticsFilter.Create;
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
          var Unmarshaller := TAnalyticsAndOperatorUnmarshaller.Instance;
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

class constructor TAnalyticsFilterUnmarshaller.Create;
begin
  FInstance := TAnalyticsFilterUnmarshaller.Create;
end;

class function TAnalyticsFilterUnmarshaller.Instance: IAnalyticsFilterUnmarshaller;
begin
  Result := FInstance;
end;

end.
