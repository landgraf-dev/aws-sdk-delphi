unit AWS.SESv2.Model.PutDeliverabilityDashboardOptionRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SESv2.Model.Request, 
  AWS.Nullable, 
  AWS.SESv2.Model.DomainDeliverabilityTrackingOption;

type
  TPutDeliverabilityDashboardOptionRequest = class;
  
  IPutDeliverabilityDashboardOptionRequest = interface
    function GetDashboardEnabled: Boolean;
    procedure SetDashboardEnabled(const Value: Boolean);
    function GetSubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption>;
    procedure SetSubscribedDomains(const Value: TObjectList<TDomainDeliverabilityTrackingOption>);
    function GetKeepSubscribedDomains: Boolean;
    procedure SetKeepSubscribedDomains(const Value: Boolean);
    function Obj: TPutDeliverabilityDashboardOptionRequest;
    function IsSetDashboardEnabled: Boolean;
    function IsSetSubscribedDomains: Boolean;
    property DashboardEnabled: Boolean read GetDashboardEnabled write SetDashboardEnabled;
    property SubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption> read GetSubscribedDomains write SetSubscribedDomains;
    property KeepSubscribedDomains: Boolean read GetKeepSubscribedDomains write SetKeepSubscribedDomains;
  end;
  
  TPutDeliverabilityDashboardOptionRequest = class(TAmazonSimpleEmailServiceV2Request, IPutDeliverabilityDashboardOptionRequest)
  strict private
    FDashboardEnabled: Nullable<Boolean>;
    FSubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption>;
    FKeepSubscribedDomains: Boolean;
    function GetDashboardEnabled: Boolean;
    procedure SetDashboardEnabled(const Value: Boolean);
    function GetSubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption>;
    procedure SetSubscribedDomains(const Value: TObjectList<TDomainDeliverabilityTrackingOption>);
    function GetKeepSubscribedDomains: Boolean;
    procedure SetKeepSubscribedDomains(const Value: Boolean);
  strict protected
    function Obj: TPutDeliverabilityDashboardOptionRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDashboardEnabled: Boolean;
    function IsSetSubscribedDomains: Boolean;
    property DashboardEnabled: Boolean read GetDashboardEnabled write SetDashboardEnabled;
    property SubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption> read GetSubscribedDomains write SetSubscribedDomains;
    property KeepSubscribedDomains: Boolean read GetKeepSubscribedDomains write SetKeepSubscribedDomains;
  end;
  
implementation

{ TPutDeliverabilityDashboardOptionRequest }

constructor TPutDeliverabilityDashboardOptionRequest.Create;
begin
  inherited;
  FSubscribedDomains := TObjectList<TDomainDeliverabilityTrackingOption>.Create;
end;

destructor TPutDeliverabilityDashboardOptionRequest.Destroy;
begin
  SubscribedDomains := nil;
  inherited;
end;

function TPutDeliverabilityDashboardOptionRequest.Obj: TPutDeliverabilityDashboardOptionRequest;
begin
  Result := Self;
end;

function TPutDeliverabilityDashboardOptionRequest.GetDashboardEnabled: Boolean;
begin
  Result := FDashboardEnabled.ValueOrDefault;
end;

procedure TPutDeliverabilityDashboardOptionRequest.SetDashboardEnabled(const Value: Boolean);
begin
  FDashboardEnabled := Value;
end;

function TPutDeliverabilityDashboardOptionRequest.IsSetDashboardEnabled: Boolean;
begin
  Result := FDashboardEnabled.HasValue;
end;

function TPutDeliverabilityDashboardOptionRequest.GetSubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption>;
begin
  Result := FSubscribedDomains;
end;

procedure TPutDeliverabilityDashboardOptionRequest.SetSubscribedDomains(const Value: TObjectList<TDomainDeliverabilityTrackingOption>);
begin
  if FSubscribedDomains <> Value then
  begin
    if not KeepSubscribedDomains then
      FSubscribedDomains.Free;
    FSubscribedDomains := Value;
  end;
end;

function TPutDeliverabilityDashboardOptionRequest.GetKeepSubscribedDomains: Boolean;
begin
  Result := FKeepSubscribedDomains;
end;

procedure TPutDeliverabilityDashboardOptionRequest.SetKeepSubscribedDomains(const Value: Boolean);
begin
  FKeepSubscribedDomains := Value;
end;

function TPutDeliverabilityDashboardOptionRequest.IsSetSubscribedDomains: Boolean;
begin
  Result := (FSubscribedDomains <> nil) and (FSubscribedDomains.Count > 0);
end;

end.
