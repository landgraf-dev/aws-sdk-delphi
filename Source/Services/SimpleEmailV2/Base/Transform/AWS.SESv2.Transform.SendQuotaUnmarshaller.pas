unit AWS.SESv2.Transform.SendQuotaUnmarshaller;

interface

uses
  AWS.SESv2.Model.SendQuota, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISendQuotaUnmarshaller = IUnmarshaller<TSendQuota, TJsonUnmarshallerContext>;
  
  TSendQuotaUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSendQuota, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISendQuotaUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSendQuota;
    class function JsonInstance: ISendQuotaUnmarshaller; static;
  end;
  
implementation

{ TSendQuotaUnmarshaller }

function TSendQuotaUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSendQuota;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSendQuota;
begin
  UnmarshalledObject := TSendQuota.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Max24HourSend', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.Max24HourSend := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MaxSendRate', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.MaxSendRate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SentLast24Hours', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.SentLast24Hours := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSendQuotaUnmarshaller.Create;
begin
  FJsonInstance := TSendQuotaUnmarshaller.Create;
end;

class function TSendQuotaUnmarshaller.JsonInstance: ISendQuotaUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
