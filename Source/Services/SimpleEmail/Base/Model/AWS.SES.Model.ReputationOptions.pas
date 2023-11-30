unit AWS.SES.Model.ReputationOptions;

interface

uses
  AWS.Nullable;

type
  TReputationOptions = class;
  
  IReputationOptions = interface
    function GetLastFreshStart: TDateTime;
    procedure SetLastFreshStart(const Value: TDateTime);
    function GetReputationMetricsEnabled: Boolean;
    procedure SetReputationMetricsEnabled(const Value: Boolean);
    function GetSendingEnabled: Boolean;
    procedure SetSendingEnabled(const Value: Boolean);
    function Obj: TReputationOptions;
    function IsSetLastFreshStart: Boolean;
    function IsSetReputationMetricsEnabled: Boolean;
    function IsSetSendingEnabled: Boolean;
    property LastFreshStart: TDateTime read GetLastFreshStart write SetLastFreshStart;
    property ReputationMetricsEnabled: Boolean read GetReputationMetricsEnabled write SetReputationMetricsEnabled;
    property SendingEnabled: Boolean read GetSendingEnabled write SetSendingEnabled;
  end;
  
  TReputationOptions = class
  strict private
    FLastFreshStart: Nullable<TDateTime>;
    FReputationMetricsEnabled: Nullable<Boolean>;
    FSendingEnabled: Nullable<Boolean>;
    function GetLastFreshStart: TDateTime;
    procedure SetLastFreshStart(const Value: TDateTime);
    function GetReputationMetricsEnabled: Boolean;
    procedure SetReputationMetricsEnabled(const Value: Boolean);
    function GetSendingEnabled: Boolean;
    procedure SetSendingEnabled(const Value: Boolean);
  strict protected
    function Obj: TReputationOptions;
  public
    function IsSetLastFreshStart: Boolean;
    function IsSetReputationMetricsEnabled: Boolean;
    function IsSetSendingEnabled: Boolean;
    property LastFreshStart: TDateTime read GetLastFreshStart write SetLastFreshStart;
    property ReputationMetricsEnabled: Boolean read GetReputationMetricsEnabled write SetReputationMetricsEnabled;
    property SendingEnabled: Boolean read GetSendingEnabled write SetSendingEnabled;
  end;
  
implementation

{ TReputationOptions }

function TReputationOptions.Obj: TReputationOptions;
begin
  Result := Self;
end;

function TReputationOptions.GetLastFreshStart: TDateTime;
begin
  Result := FLastFreshStart.ValueOrDefault;
end;

procedure TReputationOptions.SetLastFreshStart(const Value: TDateTime);
begin
  FLastFreshStart := Value;
end;

function TReputationOptions.IsSetLastFreshStart: Boolean;
begin
  Result := FLastFreshStart.HasValue;
end;

function TReputationOptions.GetReputationMetricsEnabled: Boolean;
begin
  Result := FReputationMetricsEnabled.ValueOrDefault;
end;

procedure TReputationOptions.SetReputationMetricsEnabled(const Value: Boolean);
begin
  FReputationMetricsEnabled := Value;
end;

function TReputationOptions.IsSetReputationMetricsEnabled: Boolean;
begin
  Result := FReputationMetricsEnabled.HasValue;
end;

function TReputationOptions.GetSendingEnabled: Boolean;
begin
  Result := FSendingEnabled.ValueOrDefault;
end;

procedure TReputationOptions.SetSendingEnabled(const Value: Boolean);
begin
  FSendingEnabled := Value;
end;

function TReputationOptions.IsSetSendingEnabled: Boolean;
begin
  Result := FSendingEnabled.HasValue;
end;

end.
