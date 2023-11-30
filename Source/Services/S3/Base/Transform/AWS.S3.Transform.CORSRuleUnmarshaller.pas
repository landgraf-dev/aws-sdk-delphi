unit AWS.S3.Transform.CORSRuleUnmarshaller;

interface

uses
  AWS.S3.Model.CORSRule, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICORSRuleUnmarshaller = IUnmarshaller<TCORSRule, TXmlUnmarshallerContext>;
  
  TCORSRuleUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCORSRule, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ICORSRuleUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TCORSRule;
    class function Instance: ICORSRuleUnmarshaller; static;
  end;
  
implementation

{ TCORSRuleUnmarshaller }

function TCORSRuleUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TCORSRule;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TCORSRule;
begin
  UnmarshalledObject := TCORSRule.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('AllowedHeader/member', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.AllowedHeaders.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('AllowedMethod/member', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.AllowedMethods.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('AllowedOrigin/member', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.AllowedOrigins.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('ExposeHeader/member', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ExposeHeaders.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('ID', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ID := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('MaxAgeSeconds', TargetDepth) then
        begin
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.MaxAgeSeconds := Unmarshaller.Unmarshall(AContext);
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

class constructor TCORSRuleUnmarshaller.Create;
begin
  FInstance := TCORSRuleUnmarshaller.Create;
end;

class function TCORSRuleUnmarshaller.Instance: ICORSRuleUnmarshaller;
begin
  Result := FInstance;
end;

end.
