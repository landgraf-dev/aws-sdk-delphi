unit AWS.Rekognition.Transform.ConnectedHomeSettingsUnmarshaller;

interface

uses
  AWS.Rekognition.Model.ConnectedHomeSettings, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IConnectedHomeSettingsUnmarshaller = IUnmarshaller<TConnectedHomeSettings, TJsonUnmarshallerContext>;
  
  TConnectedHomeSettingsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TConnectedHomeSettings, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IConnectedHomeSettingsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TConnectedHomeSettings;
    class function JsonInstance: IConnectedHomeSettingsUnmarshaller; static;
  end;
  
implementation

{ TConnectedHomeSettingsUnmarshaller }

function TConnectedHomeSettingsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TConnectedHomeSettings;
var
  TargetDepth: Integer;
  UnmarshalledObject: TConnectedHomeSettings;
begin
  UnmarshalledObject := TConnectedHomeSettings.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Labels', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Labels := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MinConfidence', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.MinConfidence := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TConnectedHomeSettingsUnmarshaller.Create;
begin
  FJsonInstance := TConnectedHomeSettingsUnmarshaller.Create;
end;

class function TConnectedHomeSettingsUnmarshaller.JsonInstance: IConnectedHomeSettingsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
