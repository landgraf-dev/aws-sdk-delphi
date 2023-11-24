unit AWS.S3.Model.StatsEvent;

interface

uses
  AWS.S3.Model.Stats;

type
  TStatsEvent = class;
  
  IStatsEvent = interface
    function GetDetails: TStats;
    procedure SetDetails(const Value: TStats);
    function GetKeepDetails: Boolean;
    procedure SetKeepDetails(const Value: Boolean);
    function Obj: TStatsEvent;
    function IsSetDetails: Boolean;
    property Details: TStats read GetDetails write SetDetails;
    property KeepDetails: Boolean read GetKeepDetails write SetKeepDetails;
  end;
  
  TStatsEvent = class
  strict private
    FDetails: TStats;
    FKeepDetails: Boolean;
    function GetDetails: TStats;
    procedure SetDetails(const Value: TStats);
    function GetKeepDetails: Boolean;
    procedure SetKeepDetails(const Value: Boolean);
  strict protected
    function Obj: TStatsEvent;
  public
    destructor Destroy; override;
    function IsSetDetails: Boolean;
    property Details: TStats read GetDetails write SetDetails;
    property KeepDetails: Boolean read GetKeepDetails write SetKeepDetails;
  end;
  
implementation

{ TStatsEvent }

destructor TStatsEvent.Destroy;
begin
  Details := nil;
  inherited;
end;

function TStatsEvent.Obj: TStatsEvent;
begin
  Result := Self;
end;

function TStatsEvent.GetDetails: TStats;
begin
  Result := FDetails;
end;

procedure TStatsEvent.SetDetails(const Value: TStats);
begin
  if FDetails <> Value then
  begin
    if not KeepDetails then
      FDetails.Free;
    FDetails := Value;
  end;
end;

function TStatsEvent.GetKeepDetails: Boolean;
begin
  Result := FKeepDetails;
end;

procedure TStatsEvent.SetKeepDetails(const Value: Boolean);
begin
  FKeepDetails := Value;
end;

function TStatsEvent.IsSetDetails: Boolean;
begin
  Result := FDetails <> nil;
end;

end.
