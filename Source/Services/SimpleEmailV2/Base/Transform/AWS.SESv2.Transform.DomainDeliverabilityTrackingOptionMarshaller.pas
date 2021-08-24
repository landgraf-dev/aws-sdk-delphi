unit AWS.SESv2.Transform.DomainDeliverabilityTrackingOptionMarshaller;

interface

uses
  System.DateUtils, 
  AWS.SESv2.Model.DomainDeliverabilityTrackingOption, 
  AWS.Transform.RequestMarshaller, 
  AWS.SESv2.Transform.InboxPlacementTrackingOptionMarshaller;

type
  IDomainDeliverabilityTrackingOptionMarshaller = IRequestMarshaller<TDomainDeliverabilityTrackingOption, TJsonMarshallerContext>;
  
  TDomainDeliverabilityTrackingOptionMarshaller = class(TInterfacedObject, IRequestMarshaller<TDomainDeliverabilityTrackingOption, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDomainDeliverabilityTrackingOptionMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDomainDeliverabilityTrackingOption; Context: TJsonMarshallerContext);
    class function Instance: IDomainDeliverabilityTrackingOptionMarshaller; static;
  end;
  
implementation

{ TDomainDeliverabilityTrackingOptionMarshaller }

procedure TDomainDeliverabilityTrackingOptionMarshaller.Marshall(ARequestObject: TDomainDeliverabilityTrackingOption; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetDomain then
  begin
    Context.Writer.WriteName('Domain');
    Context.Writer.WriteString(ARequestObject.Domain);
  end;
  if ARequestObject.IsSetInboxPlacementTrackingOption then
  begin
    Context.Writer.WriteName('InboxPlacementTrackingOption');
    Context.Writer.WriteBeginObject;
    TInboxPlacementTrackingOptionMarshaller.Instance.Marshall(ARequestObject.InboxPlacementTrackingOption, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetSubscriptionStartDate then
  begin
    Context.Writer.WriteName('SubscriptionStartDate');
    Context.Writer.WriteInteger(DateTimeToUnix(ARequestObject.SubscriptionStartDate, False));
  end;
end;

class constructor TDomainDeliverabilityTrackingOptionMarshaller.Create;
begin
  FInstance := TDomainDeliverabilityTrackingOptionMarshaller.Create;
end;

class function TDomainDeliverabilityTrackingOptionMarshaller.Instance: IDomainDeliverabilityTrackingOptionMarshaller;
begin
  Result := FInstance;
end;

end.
