unit AWS.SSM.Model.InstanceAggregatedAssociationOverview;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TInstanceAggregatedAssociationOverview = class;
  
  IInstanceAggregatedAssociationOverview = interface
    function GetDetailedStatus: string;
    procedure SetDetailedStatus(const Value: string);
    function GetInstanceAssociationStatusAggregatedCount: TDictionary<string, Integer>;
    procedure SetInstanceAssociationStatusAggregatedCount(const Value: TDictionary<string, Integer>);
    function GetKeepInstanceAssociationStatusAggregatedCount: Boolean;
    procedure SetKeepInstanceAssociationStatusAggregatedCount(const Value: Boolean);
    function Obj: TInstanceAggregatedAssociationOverview;
    function IsSetDetailedStatus: Boolean;
    function IsSetInstanceAssociationStatusAggregatedCount: Boolean;
    property DetailedStatus: string read GetDetailedStatus write SetDetailedStatus;
    property InstanceAssociationStatusAggregatedCount: TDictionary<string, Integer> read GetInstanceAssociationStatusAggregatedCount write SetInstanceAssociationStatusAggregatedCount;
    property KeepInstanceAssociationStatusAggregatedCount: Boolean read GetKeepInstanceAssociationStatusAggregatedCount write SetKeepInstanceAssociationStatusAggregatedCount;
  end;
  
  TInstanceAggregatedAssociationOverview = class
  strict private
    FDetailedStatus: Nullable<string>;
    FInstanceAssociationStatusAggregatedCount: TDictionary<string, Integer>;
    FKeepInstanceAssociationStatusAggregatedCount: Boolean;
    function GetDetailedStatus: string;
    procedure SetDetailedStatus(const Value: string);
    function GetInstanceAssociationStatusAggregatedCount: TDictionary<string, Integer>;
    procedure SetInstanceAssociationStatusAggregatedCount(const Value: TDictionary<string, Integer>);
    function GetKeepInstanceAssociationStatusAggregatedCount: Boolean;
    procedure SetKeepInstanceAssociationStatusAggregatedCount(const Value: Boolean);
  strict protected
    function Obj: TInstanceAggregatedAssociationOverview;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDetailedStatus: Boolean;
    function IsSetInstanceAssociationStatusAggregatedCount: Boolean;
    property DetailedStatus: string read GetDetailedStatus write SetDetailedStatus;
    property InstanceAssociationStatusAggregatedCount: TDictionary<string, Integer> read GetInstanceAssociationStatusAggregatedCount write SetInstanceAssociationStatusAggregatedCount;
    property KeepInstanceAssociationStatusAggregatedCount: Boolean read GetKeepInstanceAssociationStatusAggregatedCount write SetKeepInstanceAssociationStatusAggregatedCount;
  end;
  
implementation

{ TInstanceAggregatedAssociationOverview }

constructor TInstanceAggregatedAssociationOverview.Create;
begin
  inherited;
  FInstanceAssociationStatusAggregatedCount := TDictionary<string, Integer>.Create;
end;

destructor TInstanceAggregatedAssociationOverview.Destroy;
begin
  InstanceAssociationStatusAggregatedCount := nil;
  inherited;
end;

function TInstanceAggregatedAssociationOverview.Obj: TInstanceAggregatedAssociationOverview;
begin
  Result := Self;
end;

function TInstanceAggregatedAssociationOverview.GetDetailedStatus: string;
begin
  Result := FDetailedStatus.ValueOrDefault;
end;

procedure TInstanceAggregatedAssociationOverview.SetDetailedStatus(const Value: string);
begin
  FDetailedStatus := Value;
end;

function TInstanceAggregatedAssociationOverview.IsSetDetailedStatus: Boolean;
begin
  Result := FDetailedStatus.HasValue;
end;

function TInstanceAggregatedAssociationOverview.GetInstanceAssociationStatusAggregatedCount: TDictionary<string, Integer>;
begin
  Result := FInstanceAssociationStatusAggregatedCount;
end;

procedure TInstanceAggregatedAssociationOverview.SetInstanceAssociationStatusAggregatedCount(const Value: TDictionary<string, Integer>);
begin
  if FInstanceAssociationStatusAggregatedCount <> Value then
  begin
    if not KeepInstanceAssociationStatusAggregatedCount then
      FInstanceAssociationStatusAggregatedCount.Free;
    FInstanceAssociationStatusAggregatedCount := Value;
  end;
end;

function TInstanceAggregatedAssociationOverview.GetKeepInstanceAssociationStatusAggregatedCount: Boolean;
begin
  Result := FKeepInstanceAssociationStatusAggregatedCount;
end;

procedure TInstanceAggregatedAssociationOverview.SetKeepInstanceAssociationStatusAggregatedCount(const Value: Boolean);
begin
  FKeepInstanceAssociationStatusAggregatedCount := Value;
end;

function TInstanceAggregatedAssociationOverview.IsSetInstanceAssociationStatusAggregatedCount: Boolean;
begin
  Result := (FInstanceAssociationStatusAggregatedCount <> nil) and (FInstanceAssociationStatusAggregatedCount.Count > 0);
end;

end.
