unit AWS.SSM.Transform.AccountSharingInfoUnmarshaller;

interface

uses
  AWS.SSM.Model.AccountSharingInfo, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IAccountSharingInfoUnmarshaller = IUnmarshaller<TAccountSharingInfo, TJsonUnmarshallerContext>;
  
  TAccountSharingInfoUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAccountSharingInfo, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAccountSharingInfoUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAccountSharingInfo;
    class function JsonInstance: IAccountSharingInfoUnmarshaller; static;
  end;
  
implementation

{ TAccountSharingInfoUnmarshaller }

function TAccountSharingInfoUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAccountSharingInfo;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAccountSharingInfo;
begin
  UnmarshalledObject := TAccountSharingInfo.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AccountId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AccountId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SharedDocumentVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SharedDocumentVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TAccountSharingInfoUnmarshaller.Create;
begin
  FJsonInstance := TAccountSharingInfoUnmarshaller.Create;
end;

class function TAccountSharingInfoUnmarshaller.JsonInstance: IAccountSharingInfoUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
