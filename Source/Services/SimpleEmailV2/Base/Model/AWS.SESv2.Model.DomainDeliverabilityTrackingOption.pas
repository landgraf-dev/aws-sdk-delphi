unit AWS.SESv2.Model.DomainDeliverabilityTrackingOption;

interface

uses
  AWS.Nullable, 
  AWS.SESv2.Model.InboxPlacementTrackingOption;

type
  TDomainDeliverabilityTrackingOption = class;
  
  IDomainDeliverabilityTrackingOption = interface
    function GetDomain: string;
    procedure SetDomain(const Value: string);
    function GetInboxPlacementTrackingOption: TInboxPlacementTrackingOption;
    procedure SetInboxPlacementTrackingOption(const Value: TInboxPlacementTrackingOption);
    function GetKeepInboxPlacementTrackingOption: Boolean;
    procedure SetKeepInboxPlacementTrackingOption(const Value: Boolean);
    function GetSubscriptionStartDate: TDateTime;
    procedure SetSubscriptionStartDate(const Value: TDateTime);
    function Obj: TDomainDeliverabilityTrackingOption;
    function IsSetDomain: Boolean;
    function IsSetInboxPlacementTrackingOption: Boolean;
    function IsSetSubscriptionStartDate: Boolean;
    property Domain: string read GetDomain write SetDomain;
    property InboxPlacementTrackingOption: TInboxPlacementTrackingOption read GetInboxPlacementTrackingOption write SetInboxPlacementTrackingOption;
    property KeepInboxPlacementTrackingOption: Boolean read GetKeepInboxPlacementTrackingOption write SetKeepInboxPlacementTrackingOption;
    property SubscriptionStartDate: TDateTime read GetSubscriptionStartDate write SetSubscriptionStartDate;
  end;
  
  TDomainDeliverabilityTrackingOption = class
  strict private
    FDomain: Nullable<string>;
    FInboxPlacementTrackingOption: TInboxPlacementTrackingOption;
    FKeepInboxPlacementTrackingOption: Boolean;
    FSubscriptionStartDate: Nullable<TDateTime>;
    function GetDomain: string;
    procedure SetDomain(const Value: string);
    function GetInboxPlacementTrackingOption: TInboxPlacementTrackingOption;
    procedure SetInboxPlacementTrackingOption(const Value: TInboxPlacementTrackingOption);
    function GetKeepInboxPlacementTrackingOption: Boolean;
    procedure SetKeepInboxPlacementTrackingOption(const Value: Boolean);
    function GetSubscriptionStartDate: TDateTime;
    procedure SetSubscriptionStartDate(const Value: TDateTime);
  strict protected
    function Obj: TDomainDeliverabilityTrackingOption;
  public
    destructor Destroy; override;
    function IsSetDomain: Boolean;
    function IsSetInboxPlacementTrackingOption: Boolean;
    function IsSetSubscriptionStartDate: Boolean;
    property Domain: string read GetDomain write SetDomain;
    property InboxPlacementTrackingOption: TInboxPlacementTrackingOption read GetInboxPlacementTrackingOption write SetInboxPlacementTrackingOption;
    property KeepInboxPlacementTrackingOption: Boolean read GetKeepInboxPlacementTrackingOption write SetKeepInboxPlacementTrackingOption;
    property SubscriptionStartDate: TDateTime read GetSubscriptionStartDate write SetSubscriptionStartDate;
  end;
  
implementation

{ TDomainDeliverabilityTrackingOption }

destructor TDomainDeliverabilityTrackingOption.Destroy;
begin
  InboxPlacementTrackingOption := nil;
  inherited;
end;

function TDomainDeliverabilityTrackingOption.Obj: TDomainDeliverabilityTrackingOption;
begin
  Result := Self;
end;

function TDomainDeliverabilityTrackingOption.GetDomain: string;
begin
  Result := FDomain.ValueOrDefault;
end;

procedure TDomainDeliverabilityTrackingOption.SetDomain(const Value: string);
begin
  FDomain := Value;
end;

function TDomainDeliverabilityTrackingOption.IsSetDomain: Boolean;
begin
  Result := FDomain.HasValue;
end;

function TDomainDeliverabilityTrackingOption.GetInboxPlacementTrackingOption: TInboxPlacementTrackingOption;
begin
  Result := FInboxPlacementTrackingOption;
end;

procedure TDomainDeliverabilityTrackingOption.SetInboxPlacementTrackingOption(const Value: TInboxPlacementTrackingOption);
begin
  if FInboxPlacementTrackingOption <> Value then
  begin
    if not KeepInboxPlacementTrackingOption then
      FInboxPlacementTrackingOption.Free;
    FInboxPlacementTrackingOption := Value;
  end;
end;

function TDomainDeliverabilityTrackingOption.GetKeepInboxPlacementTrackingOption: Boolean;
begin
  Result := FKeepInboxPlacementTrackingOption;
end;

procedure TDomainDeliverabilityTrackingOption.SetKeepInboxPlacementTrackingOption(const Value: Boolean);
begin
  FKeepInboxPlacementTrackingOption := Value;
end;

function TDomainDeliverabilityTrackingOption.IsSetInboxPlacementTrackingOption: Boolean;
begin
  Result := FInboxPlacementTrackingOption <> nil;
end;

function TDomainDeliverabilityTrackingOption.GetSubscriptionStartDate: TDateTime;
begin
  Result := FSubscriptionStartDate.ValueOrDefault;
end;

procedure TDomainDeliverabilityTrackingOption.SetSubscriptionStartDate(const Value: TDateTime);
begin
  FSubscriptionStartDate := Value;
end;

function TDomainDeliverabilityTrackingOption.IsSetSubscriptionStartDate: Boolean;
begin
  Result := FSubscriptionStartDate.HasValue;
end;

end.
