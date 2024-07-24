unit AWS.SSM.Model.AssociationOverview;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TAssociationOverview = class;
  
  IAssociationOverview = interface
    function GetAssociationStatusAggregatedCount: TDictionary<string, Integer>;
    procedure SetAssociationStatusAggregatedCount(const Value: TDictionary<string, Integer>);
    function GetKeepAssociationStatusAggregatedCount: Boolean;
    procedure SetKeepAssociationStatusAggregatedCount(const Value: Boolean);
    function GetDetailedStatus: string;
    procedure SetDetailedStatus(const Value: string);
    function GetStatus: string;
    procedure SetStatus(const Value: string);
    function Obj: TAssociationOverview;
    function IsSetAssociationStatusAggregatedCount: Boolean;
    function IsSetDetailedStatus: Boolean;
    function IsSetStatus: Boolean;
    property AssociationStatusAggregatedCount: TDictionary<string, Integer> read GetAssociationStatusAggregatedCount write SetAssociationStatusAggregatedCount;
    property KeepAssociationStatusAggregatedCount: Boolean read GetKeepAssociationStatusAggregatedCount write SetKeepAssociationStatusAggregatedCount;
    property DetailedStatus: string read GetDetailedStatus write SetDetailedStatus;
    property Status: string read GetStatus write SetStatus;
  end;
  
  TAssociationOverview = class
  strict private
    FAssociationStatusAggregatedCount: TDictionary<string, Integer>;
    FKeepAssociationStatusAggregatedCount: Boolean;
    FDetailedStatus: Nullable<string>;
    FStatus: Nullable<string>;
    function GetAssociationStatusAggregatedCount: TDictionary<string, Integer>;
    procedure SetAssociationStatusAggregatedCount(const Value: TDictionary<string, Integer>);
    function GetKeepAssociationStatusAggregatedCount: Boolean;
    procedure SetKeepAssociationStatusAggregatedCount(const Value: Boolean);
    function GetDetailedStatus: string;
    procedure SetDetailedStatus(const Value: string);
    function GetStatus: string;
    procedure SetStatus(const Value: string);
  strict protected
    function Obj: TAssociationOverview;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAssociationStatusAggregatedCount: Boolean;
    function IsSetDetailedStatus: Boolean;
    function IsSetStatus: Boolean;
    property AssociationStatusAggregatedCount: TDictionary<string, Integer> read GetAssociationStatusAggregatedCount write SetAssociationStatusAggregatedCount;
    property KeepAssociationStatusAggregatedCount: Boolean read GetKeepAssociationStatusAggregatedCount write SetKeepAssociationStatusAggregatedCount;
    property DetailedStatus: string read GetDetailedStatus write SetDetailedStatus;
    property Status: string read GetStatus write SetStatus;
  end;
  
implementation

{ TAssociationOverview }

constructor TAssociationOverview.Create;
begin
  inherited;
  FAssociationStatusAggregatedCount := TDictionary<string, Integer>.Create;
end;

destructor TAssociationOverview.Destroy;
begin
  AssociationStatusAggregatedCount := nil;
  inherited;
end;

function TAssociationOverview.Obj: TAssociationOverview;
begin
  Result := Self;
end;

function TAssociationOverview.GetAssociationStatusAggregatedCount: TDictionary<string, Integer>;
begin
  Result := FAssociationStatusAggregatedCount;
end;

procedure TAssociationOverview.SetAssociationStatusAggregatedCount(const Value: TDictionary<string, Integer>);
begin
  if FAssociationStatusAggregatedCount <> Value then
  begin
    if not KeepAssociationStatusAggregatedCount then
      FAssociationStatusAggregatedCount.Free;
    FAssociationStatusAggregatedCount := Value;
  end;
end;

function TAssociationOverview.GetKeepAssociationStatusAggregatedCount: Boolean;
begin
  Result := FKeepAssociationStatusAggregatedCount;
end;

procedure TAssociationOverview.SetKeepAssociationStatusAggregatedCount(const Value: Boolean);
begin
  FKeepAssociationStatusAggregatedCount := Value;
end;

function TAssociationOverview.IsSetAssociationStatusAggregatedCount: Boolean;
begin
  Result := (FAssociationStatusAggregatedCount <> nil) and (FAssociationStatusAggregatedCount.Count > 0);
end;

function TAssociationOverview.GetDetailedStatus: string;
begin
  Result := FDetailedStatus.ValueOrDefault;
end;

procedure TAssociationOverview.SetDetailedStatus(const Value: string);
begin
  FDetailedStatus := Value;
end;

function TAssociationOverview.IsSetDetailedStatus: Boolean;
begin
  Result := FDetailedStatus.HasValue;
end;

function TAssociationOverview.GetStatus: string;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TAssociationOverview.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

function TAssociationOverview.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
