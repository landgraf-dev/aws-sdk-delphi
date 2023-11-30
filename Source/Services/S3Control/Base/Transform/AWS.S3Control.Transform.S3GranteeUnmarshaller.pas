unit AWS.S3Control.Transform.S3GranteeUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3Grantee, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IS3GranteeUnmarshaller = IUnmarshaller<TS3Grantee, TXmlUnmarshallerContext>;
  
  TS3GranteeUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3Grantee, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3GranteeUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3Grantee;
    class function Instance: IS3GranteeUnmarshaller; static;
  end;
  
implementation

{ TS3GranteeUnmarshaller }

function TS3GranteeUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3Grantee;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3Grantee;
begin
  UnmarshalledObject := TS3Grantee.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('DisplayName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.DisplayName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Identifier', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Identifier := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('TypeIdentifier', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TypeIdentifier := Unmarshaller.Unmarshall(AContext);
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

class constructor TS3GranteeUnmarshaller.Create;
begin
  FInstance := TS3GranteeUnmarshaller.Create;
end;

class function TS3GranteeUnmarshaller.Instance: IS3GranteeUnmarshaller;
begin
  Result := FInstance;
end;

end.
