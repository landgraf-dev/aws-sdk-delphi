unit AWS.Rekognition.Transform.StreamProcessorSettingsUnmarshaller;

interface

uses
  AWS.Rekognition.Model.StreamProcessorSettings, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.ConnectedHomeSettingsUnmarshaller, 
  AWS.Rekognition.Transform.FaceSearchSettingsUnmarshaller;

type
  IStreamProcessorSettingsUnmarshaller = IUnmarshaller<TStreamProcessorSettings, TJsonUnmarshallerContext>;
  
  TStreamProcessorSettingsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TStreamProcessorSettings, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IStreamProcessorSettingsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TStreamProcessorSettings;
    class function JsonInstance: IStreamProcessorSettingsUnmarshaller; static;
  end;
  
implementation

{ TStreamProcessorSettingsUnmarshaller }

function TStreamProcessorSettingsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TStreamProcessorSettings;
var
  TargetDepth: Integer;
  UnmarshalledObject: TStreamProcessorSettings;
begin
  UnmarshalledObject := TStreamProcessorSettings.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ConnectedHome', TargetDepth) then
      begin
        var Unmarshaller := TConnectedHomeSettingsUnmarshaller.JsonInstance;
        UnmarshalledObject.ConnectedHome := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FaceSearch', TargetDepth) then
      begin
        var Unmarshaller := TFaceSearchSettingsUnmarshaller.JsonInstance;
        UnmarshalledObject.FaceSearch := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TStreamProcessorSettingsUnmarshaller.Create;
begin
  FJsonInstance := TStreamProcessorSettingsUnmarshaller.Create;
end;

class function TStreamProcessorSettingsUnmarshaller.JsonInstance: IStreamProcessorSettingsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
