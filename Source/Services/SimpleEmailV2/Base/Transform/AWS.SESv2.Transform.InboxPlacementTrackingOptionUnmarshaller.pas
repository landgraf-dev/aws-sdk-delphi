unit AWS.SESv2.Transform.InboxPlacementTrackingOptionUnmarshaller;

interface

uses
  AWS.SESv2.Model.InboxPlacementTrackingOption, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInboxPlacementTrackingOptionUnmarshaller = IUnmarshaller<TInboxPlacementTrackingOption, TJsonUnmarshallerContext>;
  
  TInboxPlacementTrackingOptionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInboxPlacementTrackingOption, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInboxPlacementTrackingOptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInboxPlacementTrackingOption;
    class function JsonInstance: IInboxPlacementTrackingOptionUnmarshaller; static;
  end;
  
implementation

{ TInboxPlacementTrackingOptionUnmarshaller }

function TInboxPlacementTrackingOptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInboxPlacementTrackingOption;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInboxPlacementTrackingOption;
begin
  UnmarshalledObject := TInboxPlacementTrackingOption.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Global', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.Global := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TrackedIsps', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.TrackedIsps := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInboxPlacementTrackingOptionUnmarshaller.Create;
begin
  FJsonInstance := TInboxPlacementTrackingOptionUnmarshaller.Create;
end;

class function TInboxPlacementTrackingOptionUnmarshaller.JsonInstance: IInboxPlacementTrackingOptionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
