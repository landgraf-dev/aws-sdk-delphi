unit AWS.SESv2.Model.GetDeliverabilityDashboardOptionsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SESv2.Enums, 
  AWS.SESv2.Model.DomainDeliverabilityTrackingOption;

type
  TGetDeliverabilityDashboardOptionsResponse = class;
  
  IGetDeliverabilityDashboardOptionsResponse = interface(IAmazonWebServiceResponse)
    function GetAccountStatus: TDeliverabilityDashboardAccountStatus;
    procedure SetAccountStatus(const Value: TDeliverabilityDashboardAccountStatus);
    function GetActiveSubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption>;
    procedure SetActiveSubscribedDomains(const Value: TObjectList<TDomainDeliverabilityTrackingOption>);
    function GetKeepActiveSubscribedDomains: Boolean;
    procedure SetKeepActiveSubscribedDomains(const Value: Boolean);
    function GetDashboardEnabled: Boolean;
    procedure SetDashboardEnabled(const Value: Boolean);
    function GetPendingExpirationSubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption>;
    procedure SetPendingExpirationSubscribedDomains(const Value: TObjectList<TDomainDeliverabilityTrackingOption>);
    function GetKeepPendingExpirationSubscribedDomains: Boolean;
    procedure SetKeepPendingExpirationSubscribedDomains(const Value: Boolean);
    function GetSubscriptionExpiryDate: TDateTime;
    procedure SetSubscriptionExpiryDate(const Value: TDateTime);
    function Obj: TGetDeliverabilityDashboardOptionsResponse;
    function IsSetAccountStatus: Boolean;
    function IsSetActiveSubscribedDomains: Boolean;
    function IsSetDashboardEnabled: Boolean;
    function IsSetPendingExpirationSubscribedDomains: Boolean;
    function IsSetSubscriptionExpiryDate: Boolean;
    property AccountStatus: TDeliverabilityDashboardAccountStatus read GetAccountStatus write SetAccountStatus;
    property ActiveSubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption> read GetActiveSubscribedDomains write SetActiveSubscribedDomains;
    property KeepActiveSubscribedDomains: Boolean read GetKeepActiveSubscribedDomains write SetKeepActiveSubscribedDomains;
    property DashboardEnabled: Boolean read GetDashboardEnabled write SetDashboardEnabled;
    property PendingExpirationSubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption> read GetPendingExpirationSubscribedDomains write SetPendingExpirationSubscribedDomains;
    property KeepPendingExpirationSubscribedDomains: Boolean read GetKeepPendingExpirationSubscribedDomains write SetKeepPendingExpirationSubscribedDomains;
    property SubscriptionExpiryDate: TDateTime read GetSubscriptionExpiryDate write SetSubscriptionExpiryDate;
  end;
  
  TGetDeliverabilityDashboardOptionsResponse = class(TAmazonWebServiceResponse, IGetDeliverabilityDashboardOptionsResponse)
  strict private
    FAccountStatus: Nullable<TDeliverabilityDashboardAccountStatus>;
    FActiveSubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption>;
    FKeepActiveSubscribedDomains: Boolean;
    FDashboardEnabled: Nullable<Boolean>;
    FPendingExpirationSubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption>;
    FKeepPendingExpirationSubscribedDomains: Boolean;
    FSubscriptionExpiryDate: Nullable<TDateTime>;
    function GetAccountStatus: TDeliverabilityDashboardAccountStatus;
    procedure SetAccountStatus(const Value: TDeliverabilityDashboardAccountStatus);
    function GetActiveSubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption>;
    procedure SetActiveSubscribedDomains(const Value: TObjectList<TDomainDeliverabilityTrackingOption>);
    function GetKeepActiveSubscribedDomains: Boolean;
    procedure SetKeepActiveSubscribedDomains(const Value: Boolean);
    function GetDashboardEnabled: Boolean;
    procedure SetDashboardEnabled(const Value: Boolean);
    function GetPendingExpirationSubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption>;
    procedure SetPendingExpirationSubscribedDomains(const Value: TObjectList<TDomainDeliverabilityTrackingOption>);
    function GetKeepPendingExpirationSubscribedDomains: Boolean;
    procedure SetKeepPendingExpirationSubscribedDomains(const Value: Boolean);
    function GetSubscriptionExpiryDate: TDateTime;
    procedure SetSubscriptionExpiryDate(const Value: TDateTime);
  strict protected
    function Obj: TGetDeliverabilityDashboardOptionsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAccountStatus: Boolean;
    function IsSetActiveSubscribedDomains: Boolean;
    function IsSetDashboardEnabled: Boolean;
    function IsSetPendingExpirationSubscribedDomains: Boolean;
    function IsSetSubscriptionExpiryDate: Boolean;
    property AccountStatus: TDeliverabilityDashboardAccountStatus read GetAccountStatus write SetAccountStatus;
    property ActiveSubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption> read GetActiveSubscribedDomains write SetActiveSubscribedDomains;
    property KeepActiveSubscribedDomains: Boolean read GetKeepActiveSubscribedDomains write SetKeepActiveSubscribedDomains;
    property DashboardEnabled: Boolean read GetDashboardEnabled write SetDashboardEnabled;
    property PendingExpirationSubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption> read GetPendingExpirationSubscribedDomains write SetPendingExpirationSubscribedDomains;
    property KeepPendingExpirationSubscribedDomains: Boolean read GetKeepPendingExpirationSubscribedDomains write SetKeepPendingExpirationSubscribedDomains;
    property SubscriptionExpiryDate: TDateTime read GetSubscriptionExpiryDate write SetSubscriptionExpiryDate;
  end;
  
implementation

{ TGetDeliverabilityDashboardOptionsResponse }

constructor TGetDeliverabilityDashboardOptionsResponse.Create;
begin
  inherited;
  FActiveSubscribedDomains := TObjectList<TDomainDeliverabilityTrackingOption>.Create;
  FPendingExpirationSubscribedDomains := TObjectList<TDomainDeliverabilityTrackingOption>.Create;
end;

destructor TGetDeliverabilityDashboardOptionsResponse.Destroy;
begin
  PendingExpirationSubscribedDomains := nil;
  ActiveSubscribedDomains := nil;
  inherited;
end;

function TGetDeliverabilityDashboardOptionsResponse.Obj: TGetDeliverabilityDashboardOptionsResponse;
begin
  Result := Self;
end;

function TGetDeliverabilityDashboardOptionsResponse.GetAccountStatus: TDeliverabilityDashboardAccountStatus;
begin
  Result := FAccountStatus.ValueOrDefault;
end;

procedure TGetDeliverabilityDashboardOptionsResponse.SetAccountStatus(const Value: TDeliverabilityDashboardAccountStatus);
begin
  FAccountStatus := Value;
end;

function TGetDeliverabilityDashboardOptionsResponse.IsSetAccountStatus: Boolean;
begin
  Result := FAccountStatus.HasValue;
end;

function TGetDeliverabilityDashboardOptionsResponse.GetActiveSubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption>;
begin
  Result := FActiveSubscribedDomains;
end;

procedure TGetDeliverabilityDashboardOptionsResponse.SetActiveSubscribedDomains(const Value: TObjectList<TDomainDeliverabilityTrackingOption>);
begin
  if FActiveSubscribedDomains <> Value then
  begin
    if not KeepActiveSubscribedDomains then
      FActiveSubscribedDomains.Free;
    FActiveSubscribedDomains := Value;
  end;
end;

function TGetDeliverabilityDashboardOptionsResponse.GetKeepActiveSubscribedDomains: Boolean;
begin
  Result := FKeepActiveSubscribedDomains;
end;

procedure TGetDeliverabilityDashboardOptionsResponse.SetKeepActiveSubscribedDomains(const Value: Boolean);
begin
  FKeepActiveSubscribedDomains := Value;
end;

function TGetDeliverabilityDashboardOptionsResponse.IsSetActiveSubscribedDomains: Boolean;
begin
  Result := (FActiveSubscribedDomains <> nil) and (FActiveSubscribedDomains.Count > 0);
end;

function TGetDeliverabilityDashboardOptionsResponse.GetDashboardEnabled: Boolean;
begin
  Result := FDashboardEnabled.ValueOrDefault;
end;

procedure TGetDeliverabilityDashboardOptionsResponse.SetDashboardEnabled(const Value: Boolean);
begin
  FDashboardEnabled := Value;
end;

function TGetDeliverabilityDashboardOptionsResponse.IsSetDashboardEnabled: Boolean;
begin
  Result := FDashboardEnabled.HasValue;
end;

function TGetDeliverabilityDashboardOptionsResponse.GetPendingExpirationSubscribedDomains: TObjectList<TDomainDeliverabilityTrackingOption>;
begin
  Result := FPendingExpirationSubscribedDomains;
end;

procedure TGetDeliverabilityDashboardOptionsResponse.SetPendingExpirationSubscribedDomains(const Value: TObjectList<TDomainDeliverabilityTrackingOption>);
begin
  if FPendingExpirationSubscribedDomains <> Value then
  begin
    if not KeepPendingExpirationSubscribedDomains then
      FPendingExpirationSubscribedDomains.Free;
    FPendingExpirationSubscribedDomains := Value;
  end;
end;

function TGetDeliverabilityDashboardOptionsResponse.GetKeepPendingExpirationSubscribedDomains: Boolean;
begin
  Result := FKeepPendingExpirationSubscribedDomains;
end;

procedure TGetDeliverabilityDashboardOptionsResponse.SetKeepPendingExpirationSubscribedDomains(const Value: Boolean);
begin
  FKeepPendingExpirationSubscribedDomains := Value;
end;

function TGetDeliverabilityDashboardOptionsResponse.IsSetPendingExpirationSubscribedDomains: Boolean;
begin
  Result := (FPendingExpirationSubscribedDomains <> nil) and (FPendingExpirationSubscribedDomains.Count > 0);
end;

function TGetDeliverabilityDashboardOptionsResponse.GetSubscriptionExpiryDate: TDateTime;
begin
  Result := FSubscriptionExpiryDate.ValueOrDefault;
end;

procedure TGetDeliverabilityDashboardOptionsResponse.SetSubscriptionExpiryDate(const Value: TDateTime);
begin
  FSubscriptionExpiryDate := Value;
end;

function TGetDeliverabilityDashboardOptionsResponse.IsSetSubscriptionExpiryDate: Boolean;
begin
  Result := FSubscriptionExpiryDate.HasValue;
end;

end.
