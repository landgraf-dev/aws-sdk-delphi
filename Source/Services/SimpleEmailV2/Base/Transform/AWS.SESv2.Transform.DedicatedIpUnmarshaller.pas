unit AWS.SESv2.Transform.DedicatedIpUnmarshaller;

interface

uses
  AWS.SESv2.Model.DedicatedIp, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDedicatedIpUnmarshaller = IUnmarshaller<TDedicatedIp, TJsonUnmarshallerContext>;
  
  TDedicatedIpUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDedicatedIp, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDedicatedIpUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDedicatedIp;
    class function JsonInstance: IDedicatedIpUnmarshaller; static;
  end;
  
implementation

{ TDedicatedIpUnmarshaller }

function TDedicatedIpUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDedicatedIp;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDedicatedIp;
begin
  UnmarshalledObject := TDedicatedIp.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Ip', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Ip := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PoolName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.PoolName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('WarmupPercentage', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.WarmupPercentage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('WarmupStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.WarmupStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDedicatedIpUnmarshaller.Create;
begin
  FJsonInstance := TDedicatedIpUnmarshaller.Create;
end;

class function TDedicatedIpUnmarshaller.JsonInstance: IDedicatedIpUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
