unit AWS.S3.Transform.AnalyticsAndOperatorUnmarshaller;

interface

uses
  AWS.S3.Model.AnalyticsAndOperator, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.TagUnmarshaller, 
  AWS.S3.Model.Tag;

type
  IAnalyticsAndOperatorUnmarshaller = IUnmarshaller<TAnalyticsAndOperator, TXmlUnmarshallerContext>;
  
  TAnalyticsAndOperatorUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAnalyticsAndOperator, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IAnalyticsAndOperatorUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAnalyticsAndOperator;
    class function Instance: IAnalyticsAndOperatorUnmarshaller; static;
  end;
  
implementation

{ TAnalyticsAndOperatorUnmarshaller }

function TAnalyticsAndOperatorUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAnalyticsAndOperator;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TAnalyticsAndOperator;
begin
  UnmarshalledObject := TAnalyticsAndOperator.Create;
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

class constructor TAnalyticsAndOperatorUnmarshaller.Create;
begin
  FInstance := TAnalyticsAndOperatorUnmarshaller.Create;
end;

class function TAnalyticsAndOperatorUnmarshaller.Instance: IAnalyticsAndOperatorUnmarshaller;
begin
  Result := FInstance;
end;

end.
