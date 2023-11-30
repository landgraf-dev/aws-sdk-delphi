unit AWS.SES.Transform.IdentityVerificationAttributesUnmarshaller;

interface

uses
  AWS.SES.Model.IdentityVerificationAttributes, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IIdentityVerificationAttributesUnmarshaller = IUnmarshaller<TIdentityVerificationAttributes, TXmlUnmarshallerContext>;
  
  TIdentityVerificationAttributesUnmarshaller = class(TInterfacedObject, IUnmarshaller<TIdentityVerificationAttributes, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IIdentityVerificationAttributesUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TIdentityVerificationAttributes;
    class function Instance: IIdentityVerificationAttributesUnmarshaller; static;
  end;
  
implementation

{ TIdentityVerificationAttributesUnmarshaller }

function TIdentityVerificationAttributesUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TIdentityVerificationAttributes;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TIdentityVerificationAttributes;
begin
  UnmarshalledObject := TIdentityVerificationAttributes.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('VerificationStatus', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.VerificationStatus := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('VerificationToken', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.VerificationToken := Unmarshaller.Unmarshall(AContext);
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

class constructor TIdentityVerificationAttributesUnmarshaller.Create;
begin
  FInstance := TIdentityVerificationAttributesUnmarshaller.Create;
end;

class function TIdentityVerificationAttributesUnmarshaller.Instance: IIdentityVerificationAttributesUnmarshaller;
begin
  Result := FInstance;
end;

end.
