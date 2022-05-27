unit AWS.Rekognition.Transform.StreamProcessorDataSharingPreferenceUnmarshaller;

interface

uses
  AWS.Rekognition.Model.StreamProcessorDataSharingPreference, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IStreamProcessorDataSharingPreferenceUnmarshaller = IUnmarshaller<TStreamProcessorDataSharingPreference, TJsonUnmarshallerContext>;
  
  TStreamProcessorDataSharingPreferenceUnmarshaller = class(TInterfacedObject, IUnmarshaller<TStreamProcessorDataSharingPreference, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IStreamProcessorDataSharingPreferenceUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TStreamProcessorDataSharingPreference;
    class function JsonInstance: IStreamProcessorDataSharingPreferenceUnmarshaller; static;
  end;
  
implementation

{ TStreamProcessorDataSharingPreferenceUnmarshaller }

function TStreamProcessorDataSharingPreferenceUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TStreamProcessorDataSharingPreference;
var
  TargetDepth: Integer;
  UnmarshalledObject: TStreamProcessorDataSharingPreference;
begin
  UnmarshalledObject := TStreamProcessorDataSharingPreference.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('OptIn', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.OptIn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TStreamProcessorDataSharingPreferenceUnmarshaller.Create;
begin
  FJsonInstance := TStreamProcessorDataSharingPreferenceUnmarshaller.Create;
end;

class function TStreamProcessorDataSharingPreferenceUnmarshaller.JsonInstance: IStreamProcessorDataSharingPreferenceUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
