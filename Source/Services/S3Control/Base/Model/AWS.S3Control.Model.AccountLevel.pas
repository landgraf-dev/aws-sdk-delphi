unit AWS.S3Control.Model.AccountLevel;

interface

uses
  AWS.S3Control.Model.ActivityMetrics, 
  AWS.S3Control.Model.BucketLevel;

type
  TAccountLevel = class;
  
  IAccountLevel = interface
    function GetActivityMetrics: TActivityMetrics;
    procedure SetActivityMetrics(const Value: TActivityMetrics);
    function GetKeepActivityMetrics: Boolean;
    procedure SetKeepActivityMetrics(const Value: Boolean);
    function GetBucketLevel: TBucketLevel;
    procedure SetBucketLevel(const Value: TBucketLevel);
    function GetKeepBucketLevel: Boolean;
    procedure SetKeepBucketLevel(const Value: Boolean);
    function Obj: TAccountLevel;
    function IsSetActivityMetrics: Boolean;
    function IsSetBucketLevel: Boolean;
    property ActivityMetrics: TActivityMetrics read GetActivityMetrics write SetActivityMetrics;
    property KeepActivityMetrics: Boolean read GetKeepActivityMetrics write SetKeepActivityMetrics;
    property BucketLevel: TBucketLevel read GetBucketLevel write SetBucketLevel;
    property KeepBucketLevel: Boolean read GetKeepBucketLevel write SetKeepBucketLevel;
  end;
  
  TAccountLevel = class
  strict private
    FActivityMetrics: TActivityMetrics;
    FKeepActivityMetrics: Boolean;
    FBucketLevel: TBucketLevel;
    FKeepBucketLevel: Boolean;
    function GetActivityMetrics: TActivityMetrics;
    procedure SetActivityMetrics(const Value: TActivityMetrics);
    function GetKeepActivityMetrics: Boolean;
    procedure SetKeepActivityMetrics(const Value: Boolean);
    function GetBucketLevel: TBucketLevel;
    procedure SetBucketLevel(const Value: TBucketLevel);
    function GetKeepBucketLevel: Boolean;
    procedure SetKeepBucketLevel(const Value: Boolean);
  strict protected
    function Obj: TAccountLevel;
  public
    destructor Destroy; override;
    function IsSetActivityMetrics: Boolean;
    function IsSetBucketLevel: Boolean;
    property ActivityMetrics: TActivityMetrics read GetActivityMetrics write SetActivityMetrics;
    property KeepActivityMetrics: Boolean read GetKeepActivityMetrics write SetKeepActivityMetrics;
    property BucketLevel: TBucketLevel read GetBucketLevel write SetBucketLevel;
    property KeepBucketLevel: Boolean read GetKeepBucketLevel write SetKeepBucketLevel;
  end;
  
implementation

{ TAccountLevel }

destructor TAccountLevel.Destroy;
begin
  BucketLevel := nil;
  ActivityMetrics := nil;
  inherited;
end;

function TAccountLevel.Obj: TAccountLevel;
begin
  Result := Self;
end;

function TAccountLevel.GetActivityMetrics: TActivityMetrics;
begin
  Result := FActivityMetrics;
end;

procedure TAccountLevel.SetActivityMetrics(const Value: TActivityMetrics);
begin
  if FActivityMetrics <> Value then
  begin
    if not KeepActivityMetrics then
      FActivityMetrics.Free;
    FActivityMetrics := Value;
  end;
end;

function TAccountLevel.GetKeepActivityMetrics: Boolean;
begin
  Result := FKeepActivityMetrics;
end;

procedure TAccountLevel.SetKeepActivityMetrics(const Value: Boolean);
begin
  FKeepActivityMetrics := Value;
end;

function TAccountLevel.IsSetActivityMetrics: Boolean;
begin
  Result := FActivityMetrics <> nil;
end;

function TAccountLevel.GetBucketLevel: TBucketLevel;
begin
  Result := FBucketLevel;
end;

procedure TAccountLevel.SetBucketLevel(const Value: TBucketLevel);
begin
  if FBucketLevel <> Value then
  begin
    if not KeepBucketLevel then
      FBucketLevel.Free;
    FBucketLevel := Value;
  end;
end;

function TAccountLevel.GetKeepBucketLevel: Boolean;
begin
  Result := FKeepBucketLevel;
end;

procedure TAccountLevel.SetKeepBucketLevel(const Value: Boolean);
begin
  FKeepBucketLevel := Value;
end;

function TAccountLevel.IsSetBucketLevel: Boolean;
begin
  Result := FBucketLevel <> nil;
end;

end.
