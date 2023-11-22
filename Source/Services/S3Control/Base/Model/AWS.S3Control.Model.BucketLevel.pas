unit AWS.S3Control.Model.BucketLevel;

interface

uses
  AWS.S3Control.Model.ActivityMetrics, 
  AWS.S3Control.Model.PrefixLevel;

type
  TBucketLevel = class;
  
  IBucketLevel = interface
    function GetActivityMetrics: TActivityMetrics;
    procedure SetActivityMetrics(const Value: TActivityMetrics);
    function GetKeepActivityMetrics: Boolean;
    procedure SetKeepActivityMetrics(const Value: Boolean);
    function GetPrefixLevel: TPrefixLevel;
    procedure SetPrefixLevel(const Value: TPrefixLevel);
    function GetKeepPrefixLevel: Boolean;
    procedure SetKeepPrefixLevel(const Value: Boolean);
    function Obj: TBucketLevel;
    function IsSetActivityMetrics: Boolean;
    function IsSetPrefixLevel: Boolean;
    property ActivityMetrics: TActivityMetrics read GetActivityMetrics write SetActivityMetrics;
    property KeepActivityMetrics: Boolean read GetKeepActivityMetrics write SetKeepActivityMetrics;
    property PrefixLevel: TPrefixLevel read GetPrefixLevel write SetPrefixLevel;
    property KeepPrefixLevel: Boolean read GetKeepPrefixLevel write SetKeepPrefixLevel;
  end;
  
  TBucketLevel = class
  strict private
    FActivityMetrics: TActivityMetrics;
    FKeepActivityMetrics: Boolean;
    FPrefixLevel: TPrefixLevel;
    FKeepPrefixLevel: Boolean;
    function GetActivityMetrics: TActivityMetrics;
    procedure SetActivityMetrics(const Value: TActivityMetrics);
    function GetKeepActivityMetrics: Boolean;
    procedure SetKeepActivityMetrics(const Value: Boolean);
    function GetPrefixLevel: TPrefixLevel;
    procedure SetPrefixLevel(const Value: TPrefixLevel);
    function GetKeepPrefixLevel: Boolean;
    procedure SetKeepPrefixLevel(const Value: Boolean);
  strict protected
    function Obj: TBucketLevel;
  public
    destructor Destroy; override;
    function IsSetActivityMetrics: Boolean;
    function IsSetPrefixLevel: Boolean;
    property ActivityMetrics: TActivityMetrics read GetActivityMetrics write SetActivityMetrics;
    property KeepActivityMetrics: Boolean read GetKeepActivityMetrics write SetKeepActivityMetrics;
    property PrefixLevel: TPrefixLevel read GetPrefixLevel write SetPrefixLevel;
    property KeepPrefixLevel: Boolean read GetKeepPrefixLevel write SetKeepPrefixLevel;
  end;
  
implementation

{ TBucketLevel }

destructor TBucketLevel.Destroy;
begin
  PrefixLevel := nil;
  ActivityMetrics := nil;
  inherited;
end;

function TBucketLevel.Obj: TBucketLevel;
begin
  Result := Self;
end;

function TBucketLevel.GetActivityMetrics: TActivityMetrics;
begin
  Result := FActivityMetrics;
end;

procedure TBucketLevel.SetActivityMetrics(const Value: TActivityMetrics);
begin
  if FActivityMetrics <> Value then
  begin
    if not KeepActivityMetrics then
      FActivityMetrics.Free;
    FActivityMetrics := Value;
  end;
end;

function TBucketLevel.GetKeepActivityMetrics: Boolean;
begin
  Result := FKeepActivityMetrics;
end;

procedure TBucketLevel.SetKeepActivityMetrics(const Value: Boolean);
begin
  FKeepActivityMetrics := Value;
end;

function TBucketLevel.IsSetActivityMetrics: Boolean;
begin
  Result := FActivityMetrics <> nil;
end;

function TBucketLevel.GetPrefixLevel: TPrefixLevel;
begin
  Result := FPrefixLevel;
end;

procedure TBucketLevel.SetPrefixLevel(const Value: TPrefixLevel);
begin
  if FPrefixLevel <> Value then
  begin
    if not KeepPrefixLevel then
      FPrefixLevel.Free;
    FPrefixLevel := Value;
  end;
end;

function TBucketLevel.GetKeepPrefixLevel: Boolean;
begin
  Result := FKeepPrefixLevel;
end;

procedure TBucketLevel.SetKeepPrefixLevel(const Value: Boolean);
begin
  FKeepPrefixLevel := Value;
end;

function TBucketLevel.IsSetPrefixLevel: Boolean;
begin
  Result := FPrefixLevel <> nil;
end;

end.
