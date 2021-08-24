unit AWS.SESv2.Transform.DomainDeliverabilityCampaignUnmarshaller;

interface

uses
  AWS.SESv2.Model.DomainDeliverabilityCampaign, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDomainDeliverabilityCampaignUnmarshaller = IUnmarshaller<TDomainDeliverabilityCampaign, TJsonUnmarshallerContext>;
  
  TDomainDeliverabilityCampaignUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDomainDeliverabilityCampaign, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDomainDeliverabilityCampaignUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDomainDeliverabilityCampaign;
    class function JsonInstance: IDomainDeliverabilityCampaignUnmarshaller; static;
  end;
  
implementation

{ TDomainDeliverabilityCampaignUnmarshaller }

function TDomainDeliverabilityCampaignUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDomainDeliverabilityCampaign;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDomainDeliverabilityCampaign;
begin
  UnmarshalledObject := TDomainDeliverabilityCampaign.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CampaignId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CampaignId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DeleteRate', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.DeleteRate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Esps', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Esps := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FirstSeenDateTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.FirstSeenDateTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FromAddress', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.FromAddress := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ImageUrl', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ImageUrl := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InboxCount', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.InboxCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastSeenDateTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastSeenDateTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ProjectedVolume', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.ProjectedVolume := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ReadDeleteRate', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.ReadDeleteRate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ReadRate', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.ReadRate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SendingIps', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.SendingIps := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SpamCount', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.SpamCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Subject', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Subject := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDomainDeliverabilityCampaignUnmarshaller.Create;
begin
  FJsonInstance := TDomainDeliverabilityCampaignUnmarshaller.Create;
end;

class function TDomainDeliverabilityCampaignUnmarshaller.JsonInstance: IDomainDeliverabilityCampaignUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
