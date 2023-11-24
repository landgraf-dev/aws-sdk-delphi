unit AWS.S3.Model.Metrics;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.ReplicationTimeValue, 
  AWS.S3.Enums;

type
  TMetrics = class;
  
  IMetrics = interface
    function GetEventThreshold: TReplicationTimeValue;
    procedure SetEventThreshold(const Value: TReplicationTimeValue);
    function GetKeepEventThreshold: Boolean;
    procedure SetKeepEventThreshold(const Value: Boolean);
    function GetStatus: TMetricsStatus;
    procedure SetStatus(const Value: TMetricsStatus);
    function Obj: TMetrics;
    function IsSetEventThreshold: Boolean;
    function IsSetStatus: Boolean;
    property EventThreshold: TReplicationTimeValue read GetEventThreshold write SetEventThreshold;
    property KeepEventThreshold: Boolean read GetKeepEventThreshold write SetKeepEventThreshold;
    property Status: TMetricsStatus read GetStatus write SetStatus;
  end;
  
  TMetrics = class
  strict private
    FEventThreshold: TReplicationTimeValue;
    FKeepEventThreshold: Boolean;
    FStatus: Nullable<TMetricsStatus>;
    function GetEventThreshold: TReplicationTimeValue;
    procedure SetEventThreshold(const Value: TReplicationTimeValue);
    function GetKeepEventThreshold: Boolean;
    procedure SetKeepEventThreshold(const Value: Boolean);
    function GetStatus: TMetricsStatus;
    procedure SetStatus(const Value: TMetricsStatus);
  strict protected
    function Obj: TMetrics;
  public
    destructor Destroy; override;
    function IsSetEventThreshold: Boolean;
    function IsSetStatus: Boolean;
    property EventThreshold: TReplicationTimeValue read GetEventThreshold write SetEventThreshold;
    property KeepEventThreshold: Boolean read GetKeepEventThreshold write SetKeepEventThreshold;
    property Status: TMetricsStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TMetrics }

destructor TMetrics.Destroy;
begin
  EventThreshold := nil;
  inherited;
end;

function TMetrics.Obj: TMetrics;
begin
  Result := Self;
end;

function TMetrics.GetEventThreshold: TReplicationTimeValue;
begin
  Result := FEventThreshold;
end;

procedure TMetrics.SetEventThreshold(const Value: TReplicationTimeValue);
begin
  if FEventThreshold <> Value then
  begin
    if not KeepEventThreshold then
      FEventThreshold.Free;
    FEventThreshold := Value;
  end;
end;

function TMetrics.GetKeepEventThreshold: Boolean;
begin
  Result := FKeepEventThreshold;
end;

procedure TMetrics.SetKeepEventThreshold(const Value: Boolean);
begin
  FKeepEventThreshold := Value;
end;

function TMetrics.IsSetEventThreshold: Boolean;
begin
  Result := FEventThreshold <> nil;
end;

function TMetrics.GetStatus: TMetricsStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TMetrics.SetStatus(const Value: TMetricsStatus);
begin
  FStatus := Value;
end;

function TMetrics.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
