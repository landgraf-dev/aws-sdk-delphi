unit AWS.Transcribe.Transform.ModelSettingsUnmarshaller;

interface

uses
  AWS.Transcribe.Model.ModelSettings, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IModelSettingsUnmarshaller = IUnmarshaller<TModelSettings, TJsonUnmarshallerContext>;
  
  TModelSettingsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TModelSettings, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IModelSettingsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TModelSettings;
    class function JsonInstance: IModelSettingsUnmarshaller; static;
  end;
  
implementation

{ TModelSettingsUnmarshaller }

function TModelSettingsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TModelSettings;
var
  TargetDepth: Integer;
  UnmarshalledObject: TModelSettings;
begin
  UnmarshalledObject := TModelSettings.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('LanguageModelName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LanguageModelName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TModelSettingsUnmarshaller.Create;
begin
  FJsonInstance := TModelSettingsUnmarshaller.Create;
end;

class function TModelSettingsUnmarshaller.JsonInstance: IModelSettingsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
