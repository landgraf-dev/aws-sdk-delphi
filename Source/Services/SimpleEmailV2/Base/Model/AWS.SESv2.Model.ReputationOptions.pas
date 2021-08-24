unit AWS.SESv2.Model.ReputationOptions;

interface

uses
  Bcl.Types.Nullable;

type
  TReputationOptions = class;
  
  IReputationOptions = interface
    function GetLastFreshStart: TDateTime;
    procedure SetLastFreshStart(const Value: TDateTime);
    function GetReputationMetricsEnabled: Boolean;
    procedure SetReputationMetricsEnabled(const Value: Boolean);
    function Obj: TReputationOptions;
    function IsSetLastFreshStart: Boolean;
    function IsSetReputationMetricsEnabled: Boolean;
    property LastFreshStart: TDateTime read GetLastFreshStart write SetLastFreshStart;
    property ReputationMetricsEnabled: Boolean read GetReputationMetricsEnabled write SetReputationMetricsEnabled;
  end;
  
  TReputationOptions = class
  strict private
    FLastFreshStart: Nullable<TDateTime>;
    FReputationMetricsEnabled: Nullable<Boolean>;
    function GetLastFreshStart: TDateTime;
    procedure SetLastFreshStart(const Value: TDateTime);
    function GetReputationMetricsEnabled: Boolean;
    procedure SetReputationMetricsEnabled(const Value: Boolean);
  strict protected
    function Obj: TReputationOptions;
  public
    function IsSetLastFreshStart: Boolean;
    function IsSetReputationMetricsEnabled: Boolean;
    property LastFreshStart: TDateTime read GetLastFreshStart write SetLastFreshStart;
    property ReputationMetricsEnabled: Boolean read GetReputationMetricsEnabled write SetReputationMetricsEnabled;
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

end.
