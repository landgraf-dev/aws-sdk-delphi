unit AWS.S3.Model.ReplicationRule;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.DeleteMarkerReplication, 
  AWS.S3.Model.Destination, 
  AWS.S3.Model.ExistingObjectReplication, 
  AWS.S3.Model.ReplicationRuleFilter, 
  AWS.S3.Model.SourceSelectionCriteria, 
  AWS.S3.Enums;

type
  TReplicationRule = class;
  
  IReplicationRule = interface
    function GetDeleteMarkerReplication: TDeleteMarkerReplication;
    procedure SetDeleteMarkerReplication(const Value: TDeleteMarkerReplication);
    function GetKeepDeleteMarkerReplication: Boolean;
    procedure SetKeepDeleteMarkerReplication(const Value: Boolean);
    function GetDestination: TDestination;
    procedure SetDestination(const Value: TDestination);
    function GetKeepDestination: Boolean;
    procedure SetKeepDestination(const Value: Boolean);
    function GetExistingObjectReplication: TExistingObjectReplication;
    procedure SetExistingObjectReplication(const Value: TExistingObjectReplication);
    function GetKeepExistingObjectReplication: Boolean;
    procedure SetKeepExistingObjectReplication(const Value: Boolean);
    function GetFilter: TReplicationRuleFilter;
    procedure SetFilter(const Value: TReplicationRuleFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function GetID: string;
    procedure SetID(const Value: string);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
    function GetSourceSelectionCriteria: TSourceSelectionCriteria;
    procedure SetSourceSelectionCriteria(const Value: TSourceSelectionCriteria);
    function GetKeepSourceSelectionCriteria: Boolean;
    procedure SetKeepSourceSelectionCriteria(const Value: Boolean);
    function GetStatus: TReplicationRuleStatus;
    procedure SetStatus(const Value: TReplicationRuleStatus);
    function Obj: TReplicationRule;
    function IsSetDeleteMarkerReplication: Boolean;
    function IsSetDestination: Boolean;
    function IsSetExistingObjectReplication: Boolean;
    function IsSetFilter: Boolean;
    function IsSetID: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetPriority: Boolean;
    function IsSetSourceSelectionCriteria: Boolean;
    function IsSetStatus: Boolean;
    property DeleteMarkerReplication: TDeleteMarkerReplication read GetDeleteMarkerReplication write SetDeleteMarkerReplication;
    property KeepDeleteMarkerReplication: Boolean read GetKeepDeleteMarkerReplication write SetKeepDeleteMarkerReplication;
    property Destination: TDestination read GetDestination write SetDestination;
    property KeepDestination: Boolean read GetKeepDestination write SetKeepDestination;
    property ExistingObjectReplication: TExistingObjectReplication read GetExistingObjectReplication write SetExistingObjectReplication;
    property KeepExistingObjectReplication: Boolean read GetKeepExistingObjectReplication write SetKeepExistingObjectReplication;
    property Filter: TReplicationRuleFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
    property ID: string read GetID write SetID;
    property Prefix: string read GetPrefix write SetPrefix;
    property Priority: Integer read GetPriority write SetPriority;
    property SourceSelectionCriteria: TSourceSelectionCriteria read GetSourceSelectionCriteria write SetSourceSelectionCriteria;
    property KeepSourceSelectionCriteria: Boolean read GetKeepSourceSelectionCriteria write SetKeepSourceSelectionCriteria;
    property Status: TReplicationRuleStatus read GetStatus write SetStatus;
  end;
  
  TReplicationRule = class
  strict private
    FDeleteMarkerReplication: TDeleteMarkerReplication;
    FKeepDeleteMarkerReplication: Boolean;
    FDestination: TDestination;
    FKeepDestination: Boolean;
    FExistingObjectReplication: TExistingObjectReplication;
    FKeepExistingObjectReplication: Boolean;
    FFilter: TReplicationRuleFilter;
    FKeepFilter: Boolean;
    FID: Nullable<string>;
    FPrefix: Nullable<string>;
    FPriority: Nullable<Integer>;
    FSourceSelectionCriteria: TSourceSelectionCriteria;
    FKeepSourceSelectionCriteria: Boolean;
    FStatus: Nullable<TReplicationRuleStatus>;
    function GetDeleteMarkerReplication: TDeleteMarkerReplication;
    procedure SetDeleteMarkerReplication(const Value: TDeleteMarkerReplication);
    function GetKeepDeleteMarkerReplication: Boolean;
    procedure SetKeepDeleteMarkerReplication(const Value: Boolean);
    function GetDestination: TDestination;
    procedure SetDestination(const Value: TDestination);
    function GetKeepDestination: Boolean;
    procedure SetKeepDestination(const Value: Boolean);
    function GetExistingObjectReplication: TExistingObjectReplication;
    procedure SetExistingObjectReplication(const Value: TExistingObjectReplication);
    function GetKeepExistingObjectReplication: Boolean;
    procedure SetKeepExistingObjectReplication(const Value: Boolean);
    function GetFilter: TReplicationRuleFilter;
    procedure SetFilter(const Value: TReplicationRuleFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function GetID: string;
    procedure SetID(const Value: string);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
    function GetSourceSelectionCriteria: TSourceSelectionCriteria;
    procedure SetSourceSelectionCriteria(const Value: TSourceSelectionCriteria);
    function GetKeepSourceSelectionCriteria: Boolean;
    procedure SetKeepSourceSelectionCriteria(const Value: Boolean);
    function GetStatus: TReplicationRuleStatus;
    procedure SetStatus(const Value: TReplicationRuleStatus);
  strict protected
    function Obj: TReplicationRule;
  public
    destructor Destroy; override;
    function IsSetDeleteMarkerReplication: Boolean;
    function IsSetDestination: Boolean;
    function IsSetExistingObjectReplication: Boolean;
    function IsSetFilter: Boolean;
    function IsSetID: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetPriority: Boolean;
    function IsSetSourceSelectionCriteria: Boolean;
    function IsSetStatus: Boolean;
    property DeleteMarkerReplication: TDeleteMarkerReplication read GetDeleteMarkerReplication write SetDeleteMarkerReplication;
    property KeepDeleteMarkerReplication: Boolean read GetKeepDeleteMarkerReplication write SetKeepDeleteMarkerReplication;
    property Destination: TDestination read GetDestination write SetDestination;
    property KeepDestination: Boolean read GetKeepDestination write SetKeepDestination;
    property ExistingObjectReplication: TExistingObjectReplication read GetExistingObjectReplication write SetExistingObjectReplication;
    property KeepExistingObjectReplication: Boolean read GetKeepExistingObjectReplication write SetKeepExistingObjectReplication;
    property Filter: TReplicationRuleFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
    property ID: string read GetID write SetID;
    property Prefix: string read GetPrefix write SetPrefix;
    property Priority: Integer read GetPriority write SetPriority;
    property SourceSelectionCriteria: TSourceSelectionCriteria read GetSourceSelectionCriteria write SetSourceSelectionCriteria;
    property KeepSourceSelectionCriteria: Boolean read GetKeepSourceSelectionCriteria write SetKeepSourceSelectionCriteria;
    property Status: TReplicationRuleStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TReplicationRule }

destructor TReplicationRule.Destroy;
begin
  SourceSelectionCriteria := nil;
  Filter := nil;
  ExistingObjectReplication := nil;
  Destination := nil;
  DeleteMarkerReplication := nil;
  inherited;
end;

function TReplicationRule.Obj: TReplicationRule;
begin
  Result := Self;
end;

function TReplicationRule.GetDeleteMarkerReplication: TDeleteMarkerReplication;
begin
  Result := FDeleteMarkerReplication;
end;

procedure TReplicationRule.SetDeleteMarkerReplication(const Value: TDeleteMarkerReplication);
begin
  if FDeleteMarkerReplication <> Value then
  begin
    if not KeepDeleteMarkerReplication then
      FDeleteMarkerReplication.Free;
    FDeleteMarkerReplication := Value;
  end;
end;

function TReplicationRule.GetKeepDeleteMarkerReplication: Boolean;
begin
  Result := FKeepDeleteMarkerReplication;
end;

procedure TReplicationRule.SetKeepDeleteMarkerReplication(const Value: Boolean);
begin
  FKeepDeleteMarkerReplication := Value;
end;

function TReplicationRule.IsSetDeleteMarkerReplication: Boolean;
begin
  Result := FDeleteMarkerReplication <> nil;
end;

function TReplicationRule.GetDestination: TDestination;
begin
  Result := FDestination;
end;

procedure TReplicationRule.SetDestination(const Value: TDestination);
begin
  if FDestination <> Value then
  begin
    if not KeepDestination then
      FDestination.Free;
    FDestination := Value;
  end;
end;

function TReplicationRule.GetKeepDestination: Boolean;
begin
  Result := FKeepDestination;
end;

procedure TReplicationRule.SetKeepDestination(const Value: Boolean);
begin
  FKeepDestination := Value;
end;

function TReplicationRule.IsSetDestination: Boolean;
begin
  Result := FDestination <> nil;
end;

function TReplicationRule.GetExistingObjectReplication: TExistingObjectReplication;
begin
  Result := FExistingObjectReplication;
end;

procedure TReplicationRule.SetExistingObjectReplication(const Value: TExistingObjectReplication);
begin
  if FExistingObjectReplication <> Value then
  begin
    if not KeepExistingObjectReplication then
      FExistingObjectReplication.Free;
    FExistingObjectReplication := Value;
  end;
end;

function TReplicationRule.GetKeepExistingObjectReplication: Boolean;
begin
  Result := FKeepExistingObjectReplication;
end;

procedure TReplicationRule.SetKeepExistingObjectReplication(const Value: Boolean);
begin
  FKeepExistingObjectReplication := Value;
end;

function TReplicationRule.IsSetExistingObjectReplication: Boolean;
begin
  Result := FExistingObjectReplication <> nil;
end;

function TReplicationRule.GetFilter: TReplicationRuleFilter;
begin
  Result := FFilter;
end;

procedure TReplicationRule.SetFilter(const Value: TReplicationRuleFilter);
begin
  if FFilter <> Value then
  begin
    if not KeepFilter then
      FFilter.Free;
    FFilter := Value;
  end;
end;

function TReplicationRule.GetKeepFilter: Boolean;
begin
  Result := FKeepFilter;
end;

procedure TReplicationRule.SetKeepFilter(const Value: Boolean);
begin
  FKeepFilter := Value;
end;

function TReplicationRule.IsSetFilter: Boolean;
begin
  Result := FFilter <> nil;
end;

function TReplicationRule.GetID: string;
begin
  Result := FID.ValueOrDefault;
end;

procedure TReplicationRule.SetID(const Value: string);
begin
  FID := Value;
end;

function TReplicationRule.IsSetID: Boolean;
begin
  Result := FID.HasValue;
end;

function TReplicationRule.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TReplicationRule.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TReplicationRule.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TReplicationRule.GetPriority: Integer;
begin
  Result := FPriority.ValueOrDefault;
end;

procedure TReplicationRule.SetPriority(const Value: Integer);
begin
  FPriority := Value;
end;

function TReplicationRule.IsSetPriority: Boolean;
begin
  Result := FPriority.HasValue;
end;

function TReplicationRule.GetSourceSelectionCriteria: TSourceSelectionCriteria;
begin
  Result := FSourceSelectionCriteria;
end;

procedure TReplicationRule.SetSourceSelectionCriteria(const Value: TSourceSelectionCriteria);
begin
  if FSourceSelectionCriteria <> Value then
  begin
    if not KeepSourceSelectionCriteria then
      FSourceSelectionCriteria.Free;
    FSourceSelectionCriteria := Value;
  end;
end;

function TReplicationRule.GetKeepSourceSelectionCriteria: Boolean;
begin
  Result := FKeepSourceSelectionCriteria;
end;

procedure TReplicationRule.SetKeepSourceSelectionCriteria(const Value: Boolean);
begin
  FKeepSourceSelectionCriteria := Value;
end;

function TReplicationRule.IsSetSourceSelectionCriteria: Boolean;
begin
  Result := FSourceSelectionCriteria <> nil;
end;

function TReplicationRule.GetStatus: TReplicationRuleStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TReplicationRule.SetStatus(const Value: TReplicationRuleStatus);
begin
  FStatus := Value;
end;

function TReplicationRule.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
