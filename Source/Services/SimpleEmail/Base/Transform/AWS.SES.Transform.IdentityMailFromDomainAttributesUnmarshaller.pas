unit AWS.SES.Transform.IdentityMailFromDomainAttributesUnmarshaller;

interface

uses
  AWS.SES.Model.IdentityMailFromDomainAttributes, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IIdentityMailFromDomainAttributesUnmarshaller = IUnmarshaller<TIdentityMailFromDomainAttributes, TXmlUnmarshallerContext>;
  
  TIdentityMailFromDomainAttributesUnmarshaller = class(TInterfacedObject, IUnmarshaller<TIdentityMailFromDomainAttributes, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IIdentityMailFromDomainAttributesUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TIdentityMailFromDomainAttributes;
    class function Instance: IIdentityMailFromDomainAttributesUnmarshaller; static;
  end;
  
implementation

{ TIdentityMailFromDomainAttributesUnmarshaller }

function TIdentityMailFromDomainAttributesUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TIdentityMailFromDomainAttributes;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TIdentityMailFromDomainAttributes;
begin
  UnmarshalledObject := TIdentityMailFromDomainAttributes.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('BehaviorOnMXFailure', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.BehaviorOnMXFailure := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('MailFromDomain', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.MailFromDomain := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('MailFromDomainStatus', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.MailFromDomainStatus := Unmarshaller.Unmarshall(AContext);
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

class constructor TIdentityMailFromDomainAttributesUnmarshaller.Create;
begin
  FInstance := TIdentityMailFromDomainAttributesUnmarshaller.Create;
end;

class function TIdentityMailFromDomainAttributesUnmarshaller.Instance: IIdentityMailFromDomainAttributesUnmarshaller;
begin
  Result := FInstance;
end;

end.
