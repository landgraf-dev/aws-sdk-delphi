unit AWS.SESv2.Transform.MailFromAttributesUnmarshaller;

interface

uses
  AWS.SESv2.Model.MailFromAttributes, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMailFromAttributesUnmarshaller = IUnmarshaller<TMailFromAttributes, TJsonUnmarshallerContext>;
  
  TMailFromAttributesUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMailFromAttributes, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMailFromAttributesUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMailFromAttributes;
    class function JsonInstance: IMailFromAttributesUnmarshaller; static;
  end;
  
implementation

{ TMailFromAttributesUnmarshaller }

function TMailFromAttributesUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMailFromAttributes;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMailFromAttributes;
begin
  UnmarshalledObject := TMailFromAttributes.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('BehaviorOnMxFailure', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.BehaviorOnMxFailure := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MailFromDomain', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.MailFromDomain := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MailFromDomainStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.MailFromDomainStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMailFromAttributesUnmarshaller.Create;
begin
  FJsonInstance := TMailFromAttributesUnmarshaller.Create;
end;

class function TMailFromAttributesUnmarshaller.JsonInstance: IMailFromAttributesUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
