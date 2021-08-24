unit AWS.SESv2.Model.GetAccountResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.AccountDetails, 
  AWS.SESv2.Model.SendQuota, 
  AWS.SESv2.Model.SuppressionAttributes;

type
  TGetAccountResponse = class;
  
  IGetAccountResponse = interface(IAmazonWebServiceResponse)
    function GetDedicatedIpAutoWarmupEnabled: Boolean;
    procedure SetDedicatedIpAutoWarmupEnabled(const Value: Boolean);
    function GetDetails: TAccountDetails;
    procedure SetDetails(const Value: TAccountDetails);
    function GetKeepDetails: Boolean;
    procedure SetKeepDetails(const Value: Boolean);
    function GetEnforcementStatus: string;
    procedure SetEnforcementStatus(const Value: string);
    function GetProductionAccessEnabled: Boolean;
    procedure SetProductionAccessEnabled(const Value: Boolean);
    function GetSendQuota: TSendQuota;
    procedure SetSendQuota(const Value: TSendQuota);
    function GetKeepSendQuota: Boolean;
    procedure SetKeepSendQuota(const Value: Boolean);
    function GetSendingEnabled: Boolean;
    procedure SetSendingEnabled(const Value: Boolean);
    function GetSuppressionAttributes: TSuppressionAttributes;
    procedure SetSuppressionAttributes(const Value: TSuppressionAttributes);
    function GetKeepSuppressionAttributes: Boolean;
    procedure SetKeepSuppressionAttributes(const Value: Boolean);
    function Obj: TGetAccountResponse;
    function IsSetDedicatedIpAutoWarmupEnabled: Boolean;
    function IsSetDetails: Boolean;
    function IsSetEnforcementStatus: Boolean;
    function IsSetProductionAccessEnabled: Boolean;
    function IsSetSendQuota: Boolean;
    function IsSetSendingEnabled: Boolean;
    function IsSetSuppressionAttributes: Boolean;
    property DedicatedIpAutoWarmupEnabled: Boolean read GetDedicatedIpAutoWarmupEnabled write SetDedicatedIpAutoWarmupEnabled;
    property Details: TAccountDetails read GetDetails write SetDetails;
    property KeepDetails: Boolean read GetKeepDetails write SetKeepDetails;
    property EnforcementStatus: string read GetEnforcementStatus write SetEnforcementStatus;
    property ProductionAccessEnabled: Boolean read GetProductionAccessEnabled write SetProductionAccessEnabled;
    property SendQuota: TSendQuota read GetSendQuota write SetSendQuota;
    property KeepSendQuota: Boolean read GetKeepSendQuota write SetKeepSendQuota;
    property SendingEnabled: Boolean read GetSendingEnabled write SetSendingEnabled;
    property SuppressionAttributes: TSuppressionAttributes read GetSuppressionAttributes write SetSuppressionAttributes;
    property KeepSuppressionAttributes: Boolean read GetKeepSuppressionAttributes write SetKeepSuppressionAttributes;
  end;
  
  TGetAccountResponse = class(TAmazonWebServiceResponse, IGetAccountResponse)
  strict private
    FDedicatedIpAutoWarmupEnabled: Nullable<Boolean>;
    FDetails: TAccountDetails;
    FKeepDetails: Boolean;
    FEnforcementStatus: Nullable<string>;
    FProductionAccessEnabled: Nullable<Boolean>;
    FSendQuota: TSendQuota;
    FKeepSendQuota: Boolean;
    FSendingEnabled: Nullable<Boolean>;
    FSuppressionAttributes: TSuppressionAttributes;
    FKeepSuppressionAttributes: Boolean;
    function GetDedicatedIpAutoWarmupEnabled: Boolean;
    procedure SetDedicatedIpAutoWarmupEnabled(const Value: Boolean);
    function GetDetails: TAccountDetails;
    procedure SetDetails(const Value: TAccountDetails);
    function GetKeepDetails: Boolean;
    procedure SetKeepDetails(const Value: Boolean);
    function GetEnforcementStatus: string;
    procedure SetEnforcementStatus(const Value: string);
    function GetProductionAccessEnabled: Boolean;
    procedure SetProductionAccessEnabled(const Value: Boolean);
    function GetSendQuota: TSendQuota;
    procedure SetSendQuota(const Value: TSendQuota);
    function GetKeepSendQuota: Boolean;
    procedure SetKeepSendQuota(const Value: Boolean);
    function GetSendingEnabled: Boolean;
    procedure SetSendingEnabled(const Value: Boolean);
    function GetSuppressionAttributes: TSuppressionAttributes;
    procedure SetSuppressionAttributes(const Value: TSuppressionAttributes);
    function GetKeepSuppressionAttributes: Boolean;
    procedure SetKeepSuppressionAttributes(const Value: Boolean);
  strict protected
    function Obj: TGetAccountResponse;
  public
    destructor Destroy; override;
    function IsSetDedicatedIpAutoWarmupEnabled: Boolean;
    function IsSetDetails: Boolean;
    function IsSetEnforcementStatus: Boolean;
    function IsSetProductionAccessEnabled: Boolean;
    function IsSetSendQuota: Boolean;
    function IsSetSendingEnabled: Boolean;
    function IsSetSuppressionAttributes: Boolean;
    property DedicatedIpAutoWarmupEnabled: Boolean read GetDedicatedIpAutoWarmupEnabled write SetDedicatedIpAutoWarmupEnabled;
    property Details: TAccountDetails read GetDetails write SetDetails;
    property KeepDetails: Boolean read GetKeepDetails write SetKeepDetails;
    property EnforcementStatus: string read GetEnforcementStatus write SetEnforcementStatus;
    property ProductionAccessEnabled: Boolean read GetProductionAccessEnabled write SetProductionAccessEnabled;
    property SendQuota: TSendQuota read GetSendQuota write SetSendQuota;
    property KeepSendQuota: Boolean read GetKeepSendQuota write SetKeepSendQuota;
    property SendingEnabled: Boolean read GetSendingEnabled write SetSendingEnabled;
    property SuppressionAttributes: TSuppressionAttributes read GetSuppressionAttributes write SetSuppressionAttributes;
    property KeepSuppressionAttributes: Boolean read GetKeepSuppressionAttributes write SetKeepSuppressionAttributes;
  end;
  
implementation

{ TGetAccountResponse }

destructor TGetAccountResponse.Destroy;
begin
  SuppressionAttributes := nil;
  SendQuota := nil;
  Details := nil;
  inherited;
end;

function TGetAccountResponse.Obj: TGetAccountResponse;
begin
  Result := Self;
end;

function TGetAccountResponse.GetDedicatedIpAutoWarmupEnabled: Boolean;
begin
  Result := FDedicatedIpAutoWarmupEnabled.ValueOrDefault;
end;

procedure TGetAccountResponse.SetDedicatedIpAutoWarmupEnabled(const Value: Boolean);
begin
  FDedicatedIpAutoWarmupEnabled := Value;
end;

function TGetAccountResponse.IsSetDedicatedIpAutoWarmupEnabled: Boolean;
begin
  Result := FDedicatedIpAutoWarmupEnabled.HasValue;
end;

function TGetAccountResponse.GetDetails: TAccountDetails;
begin
  Result := FDetails;
end;

procedure TGetAccountResponse.SetDetails(const Value: TAccountDetails);
begin
  if FDetails <> Value then
  begin
    if not KeepDetails then
      FDetails.Free;
    FDetails := Value;
  end;
end;

function TGetAccountResponse.GetKeepDetails: Boolean;
begin
  Result := FKeepDetails;
end;

procedure TGetAccountResponse.SetKeepDetails(const Value: Boolean);
begin
  FKeepDetails := Value;
end;

function TGetAccountResponse.IsSetDetails: Boolean;
begin
  Result := FDetails <> nil;
end;

function TGetAccountResponse.GetEnforcementStatus: string;
begin
  Result := FEnforcementStatus.ValueOrDefault;
end;

procedure TGetAccountResponse.SetEnforcementStatus(const Value: string);
begin
  FEnforcementStatus := Value;
end;

function TGetAccountResponse.IsSetEnforcementStatus: Boolean;
begin
  Result := FEnforcementStatus.HasValue;
end;

function TGetAccountResponse.GetProductionAccessEnabled: Boolean;
begin
  Result := FProductionAccessEnabled.ValueOrDefault;
end;

procedure TGetAccountResponse.SetProductionAccessEnabled(const Value: Boolean);
begin
  FProductionAccessEnabled := Value;
end;

function TGetAccountResponse.IsSetProductionAccessEnabled: Boolean;
begin
  Result := FProductionAccessEnabled.HasValue;
end;

function TGetAccountResponse.GetSendQuota: TSendQuota;
begin
  Result := FSendQuota;
end;

procedure TGetAccountResponse.SetSendQuota(const Value: TSendQuota);
begin
  if FSendQuota <> Value then
  begin
    if not KeepSendQuota then
      FSendQuota.Free;
    FSendQuota := Value;
  end;
end;

function TGetAccountResponse.GetKeepSendQuota: Boolean;
begin
  Result := FKeepSendQuota;
end;

procedure TGetAccountResponse.SetKeepSendQuota(const Value: Boolean);
begin
  FKeepSendQuota := Value;
end;

function TGetAccountResponse.IsSetSendQuota: Boolean;
begin
  Result := FSendQuota <> nil;
end;

function TGetAccountResponse.GetSendingEnabled: Boolean;
begin
  Result := FSendingEnabled.ValueOrDefault;
end;

procedure TGetAccountResponse.SetSendingEnabled(const Value: Boolean);
begin
  FSendingEnabled := Value;
end;

function TGetAccountResponse.IsSetSendingEnabled: Boolean;
begin
  Result := FSendingEnabled.HasValue;
end;

function TGetAccountResponse.GetSuppressionAttributes: TSuppressionAttributes;
begin
  Result := FSuppressionAttributes;
end;

procedure TGetAccountResponse.SetSuppressionAttributes(const Value: TSuppressionAttributes);
begin
  if FSuppressionAttributes <> Value then
  begin
    if not KeepSuppressionAttributes then
      FSuppressionAttributes.Free;
    FSuppressionAttributes := Value;
  end;
end;

function TGetAccountResponse.GetKeepSuppressionAttributes: Boolean;
begin
  Result := FKeepSuppressionAttributes;
end;

procedure TGetAccountResponse.SetKeepSuppressionAttributes(const Value: Boolean);
begin
  FKeepSuppressionAttributes := Value;
end;

function TGetAccountResponse.IsSetSuppressionAttributes: Boolean;
begin
  Result := FSuppressionAttributes <> nil;
end;

end.
