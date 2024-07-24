unit AWS.SSM.Transform.ServiceSettingUnmarshaller;

interface

uses
  AWS.SSM.Model.ServiceSetting, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IServiceSettingUnmarshaller = IUnmarshaller<TServiceSetting, TJsonUnmarshallerContext>;
  
  TServiceSettingUnmarshaller = class(TInterfacedObject, IUnmarshaller<TServiceSetting, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IServiceSettingUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TServiceSetting;
    class function JsonInstance: IServiceSettingUnmarshaller; static;
  end;
  
implementation

{ TServiceSettingUnmarshaller }

function TServiceSettingUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TServiceSetting;
var
  TargetDepth: Integer;
  UnmarshalledObject: TServiceSetting;
begin
  UnmarshalledObject := TServiceSetting.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ARN', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ARN := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastModifiedDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastModifiedDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastModifiedUser', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LastModifiedUser := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SettingId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SettingId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SettingValue', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SettingValue := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TServiceSettingUnmarshaller.Create;
begin
  FJsonInstance := TServiceSettingUnmarshaller.Create;
end;

class function TServiceSettingUnmarshaller.JsonInstance: IServiceSettingUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
