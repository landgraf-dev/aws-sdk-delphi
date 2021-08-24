unit AWS.SESv2.Transform.DomainDeliverabilityTrackingOptionUnmarshaller;

interface

uses
  AWS.SESv2.Model.DomainDeliverabilityTrackingOption, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.InboxPlacementTrackingOptionUnmarshaller;

type
  IDomainDeliverabilityTrackingOptionUnmarshaller = IUnmarshaller<TDomainDeliverabilityTrackingOption, TJsonUnmarshallerContext>;
  
  TDomainDeliverabilityTrackingOptionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDomainDeliverabilityTrackingOption, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDomainDeliverabilityTrackingOptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDomainDeliverabilityTrackingOption;
    class function JsonInstance: IDomainDeliverabilityTrackingOptionUnmarshaller; static;
  end;
  
implementation

{ TDomainDeliverabilityTrackingOptionUnmarshaller }

function TDomainDeliverabilityTrackingOptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDomainDeliverabilityTrackingOption;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDomainDeliverabilityTrackingOption;
begin
  UnmarshalledObject := TDomainDeliverabilityTrackingOption.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Domain', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Domain := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InboxPlacementTrackingOption', TargetDepth) then
      begin
        var Unmarshaller := TInboxPlacementTrackingOptionUnmarshaller.JsonInstance;
        UnmarshalledObject.InboxPlacementTrackingOption := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SubscriptionStartDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.SubscriptionStartDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDomainDeliverabilityTrackingOptionUnmarshaller.Create;
begin
  FJsonInstance := TDomainDeliverabilityTrackingOptionUnmarshaller.Create;
end;

class function TDomainDeliverabilityTrackingOptionUnmarshaller.JsonInstance: IDomainDeliverabilityTrackingOptionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
