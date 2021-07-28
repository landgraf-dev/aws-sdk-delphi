unit AWS.SES.Transform.IdentityDkimAttributesUnmarshaller;

interface

uses
  AWS.SES.Model.IdentityDkimAttributes, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IIdentityDkimAttributesUnmarshaller = IUnmarshaller<TIdentityDkimAttributes, TXmlUnmarshallerContext>;
  
  TIdentityDkimAttributesUnmarshaller = class(TInterfacedObject, IUnmarshaller<TIdentityDkimAttributes, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IIdentityDkimAttributesUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TIdentityDkimAttributes;
    class function Instance: IIdentityDkimAttributesUnmarshaller; static;
  end;
  
implementation

{ TIdentityDkimAttributesUnmarshaller }

function TIdentityDkimAttributesUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TIdentityDkimAttributes;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TIdentityDkimAttributes;
begin
  UnmarshalledObject := TIdentityDkimAttributes.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('DkimEnabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.DkimEnabled := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('DkimTokens/member', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.DkimTokens.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('DkimVerificationStatus', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.DkimVerificationStatus := Unmarshaller.Unmarshall(AContext);
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

class constructor TIdentityDkimAttributesUnmarshaller.Create;
begin
  FInstance := TIdentityDkimAttributesUnmarshaller.Create;
end;

class function TIdentityDkimAttributesUnmarshaller.Instance: IIdentityDkimAttributesUnmarshaller;
begin
  Result := FInstance;
end;

end.
