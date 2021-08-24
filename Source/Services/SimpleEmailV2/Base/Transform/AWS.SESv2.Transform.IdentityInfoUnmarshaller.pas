unit AWS.SESv2.Transform.IdentityInfoUnmarshaller;

interface

uses
  AWS.SESv2.Model.IdentityInfo, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IIdentityInfoUnmarshaller = IUnmarshaller<TIdentityInfo, TJsonUnmarshallerContext>;
  
  TIdentityInfoUnmarshaller = class(TInterfacedObject, IUnmarshaller<TIdentityInfo, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IIdentityInfoUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TIdentityInfo;
    class function JsonInstance: IIdentityInfoUnmarshaller; static;
  end;
  
implementation

{ TIdentityInfoUnmarshaller }

function TIdentityInfoUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TIdentityInfo;
var
  TargetDepth: Integer;
  UnmarshalledObject: TIdentityInfo;
begin
  UnmarshalledObject := TIdentityInfo.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('IdentityName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.IdentityName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('IdentityType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.IdentityType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SendingEnabled', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.SendingEnabled := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TIdentityInfoUnmarshaller.Create;
begin
  FJsonInstance := TIdentityInfoUnmarshaller.Create;
end;

class function TIdentityInfoUnmarshaller.JsonInstance: IIdentityInfoUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
