unit AWS.S3.Model.InventoryConfiguration;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.S3.Model.InventoryDestination, 
  AWS.S3.Model.InventoryFilter, 
  AWS.S3.Enums, 
  AWS.S3.Model.InventorySchedule;

type
  TInventoryConfiguration = class;
  
  IInventoryConfiguration = interface
    function GetDestination: TInventoryDestination;
    procedure SetDestination(const Value: TInventoryDestination);
    function GetKeepDestination: Boolean;
    procedure SetKeepDestination(const Value: Boolean);
    function GetFilter: TInventoryFilter;
    procedure SetFilter(const Value: TInventoryFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetIncludedObjectVersions: TInventoryIncludedObjectVersions;
    procedure SetIncludedObjectVersions(const Value: TInventoryIncludedObjectVersions);
    function GetIsEnabled: Boolean;
    procedure SetIsEnabled(const Value: Boolean);
    function GetOptionalFields: TList<string>;
    procedure SetOptionalFields(const Value: TList<string>);
    function GetKeepOptionalFields: Boolean;
    procedure SetKeepOptionalFields(const Value: Boolean);
    function GetSchedule: TInventorySchedule;
    procedure SetSchedule(const Value: TInventorySchedule);
    function GetKeepSchedule: Boolean;
    procedure SetKeepSchedule(const Value: Boolean);
    function Obj: TInventoryConfiguration;
    function IsSetDestination: Boolean;
    function IsSetFilter: Boolean;
    function IsSetId: Boolean;
    function IsSetIncludedObjectVersions: Boolean;
    function IsSetIsEnabled: Boolean;
    function IsSetOptionalFields: Boolean;
    function IsSetSchedule: Boolean;
    property Destination: TInventoryDestination read GetDestination write SetDestination;
    property KeepDestination: Boolean read GetKeepDestination write SetKeepDestination;
    property Filter: TInventoryFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
    property Id: string read GetId write SetId;
    property IncludedObjectVersions: TInventoryIncludedObjectVersions read GetIncludedObjectVersions write SetIncludedObjectVersions;
    property IsEnabled: Boolean read GetIsEnabled write SetIsEnabled;
    property OptionalFields: TList<string> read GetOptionalFields write SetOptionalFields;
    property KeepOptionalFields: Boolean read GetKeepOptionalFields write SetKeepOptionalFields;
    property Schedule: TInventorySchedule read GetSchedule write SetSchedule;
    property KeepSchedule: Boolean read GetKeepSchedule write SetKeepSchedule;
  end;
  
  TInventoryConfiguration = class
  strict private
    FDestination: TInventoryDestination;
    FKeepDestination: Boolean;
    FFilter: TInventoryFilter;
    FKeepFilter: Boolean;
    FId: Nullable<string>;
    FIncludedObjectVersions: Nullable<TInventoryIncludedObjectVersions>;
    FIsEnabled: Nullable<Boolean>;
    FOptionalFields: TList<string>;
    FKeepOptionalFields: Boolean;
    FSchedule: TInventorySchedule;
    FKeepSchedule: Boolean;
    function GetDestination: TInventoryDestination;
    procedure SetDestination(const Value: TInventoryDestination);
    function GetKeepDestination: Boolean;
    procedure SetKeepDestination(const Value: Boolean);
    function GetFilter: TInventoryFilter;
    procedure SetFilter(const Value: TInventoryFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetIncludedObjectVersions: TInventoryIncludedObjectVersions;
    procedure SetIncludedObjectVersions(const Value: TInventoryIncludedObjectVersions);
    function GetIsEnabled: Boolean;
    procedure SetIsEnabled(const Value: Boolean);
    function GetOptionalFields: TList<string>;
    procedure SetOptionalFields(const Value: TList<string>);
    function GetKeepOptionalFields: Boolean;
    procedure SetKeepOptionalFields(const Value: Boolean);
    function GetSchedule: TInventorySchedule;
    procedure SetSchedule(const Value: TInventorySchedule);
    function GetKeepSchedule: Boolean;
    procedure SetKeepSchedule(const Value: Boolean);
  strict protected
    function Obj: TInventoryConfiguration;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDestination: Boolean;
    function IsSetFilter: Boolean;
    function IsSetId: Boolean;
    function IsSetIncludedObjectVersions: Boolean;
    function IsSetIsEnabled: Boolean;
    function IsSetOptionalFields: Boolean;
    function IsSetSchedule: Boolean;
    property Destination: TInventoryDestination read GetDestination write SetDestination;
    property KeepDestination: Boolean read GetKeepDestination write SetKeepDestination;
    property Filter: TInventoryFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
    property Id: string read GetId write SetId;
    property IncludedObjectVersions: TInventoryIncludedObjectVersions read GetIncludedObjectVersions write SetIncludedObjectVersions;
    property IsEnabled: Boolean read GetIsEnabled write SetIsEnabled;
    property OptionalFields: TList<string> read GetOptionalFields write SetOptionalFields;
    property KeepOptionalFields: Boolean read GetKeepOptionalFields write SetKeepOptionalFields;
    property Schedule: TInventorySchedule read GetSchedule write SetSchedule;
    property KeepSchedule: Boolean read GetKeepSchedule write SetKeepSchedule;
  end;
  
implementation

{ TInventoryConfiguration }

constructor TInventoryConfiguration.Create;
begin
  inherited;
  FOptionalFields := TList<string>.Create;
end;

destructor TInventoryConfiguration.Destroy;
begin
  Schedule := nil;
  OptionalFields := nil;
  Filter := nil;
  Destination := nil;
  inherited;
end;

function TInventoryConfiguration.Obj: TInventoryConfiguration;
begin
  Result := Self;
end;

function TInventoryConfiguration.GetDestination: TInventoryDestination;
begin
  Result := FDestination;
end;

procedure TInventoryConfiguration.SetDestination(const Value: TInventoryDestination);
begin
  if FDestination <> Value then
  begin
    if not KeepDestination then
      FDestination.Free;
    FDestination := Value;
  end;
end;

function TInventoryConfiguration.GetKeepDestination: Boolean;
begin
  Result := FKeepDestination;
end;

procedure TInventoryConfiguration.SetKeepDestination(const Value: Boolean);
begin
  FKeepDestination := Value;
end;

function TInventoryConfiguration.IsSetDestination: Boolean;
begin
  Result := FDestination <> nil;
end;

function TInventoryConfiguration.GetFilter: TInventoryFilter;
begin
  Result := FFilter;
end;

procedure TInventoryConfiguration.SetFilter(const Value: TInventoryFilter);
begin
  if FFilter <> Value then
  begin
    if not KeepFilter then
      FFilter.Free;
    FFilter := Value;
  end;
end;

function TInventoryConfiguration.GetKeepFilter: Boolean;
begin
  Result := FKeepFilter;
end;

procedure TInventoryConfiguration.SetKeepFilter(const Value: Boolean);
begin
  FKeepFilter := Value;
end;

function TInventoryConfiguration.IsSetFilter: Boolean;
begin
  Result := FFilter <> nil;
end;

function TInventoryConfiguration.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TInventoryConfiguration.SetId(const Value: string);
begin
  FId := Value;
end;

function TInventoryConfiguration.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TInventoryConfiguration.GetIncludedObjectVersions: TInventoryIncludedObjectVersions;
begin
  Result := FIncludedObjectVersions.ValueOrDefault;
end;

procedure TInventoryConfiguration.SetIncludedObjectVersions(const Value: TInventoryIncludedObjectVersions);
begin
  FIncludedObjectVersions := Value;
end;

function TInventoryConfiguration.IsSetIncludedObjectVersions: Boolean;
begin
  Result := FIncludedObjectVersions.HasValue;
end;

function TInventoryConfiguration.GetIsEnabled: Boolean;
begin
  Result := FIsEnabled.ValueOrDefault;
end;

procedure TInventoryConfiguration.SetIsEnabled(const Value: Boolean);
begin
  FIsEnabled := Value;
end;

function TInventoryConfiguration.IsSetIsEnabled: Boolean;
begin
  Result := FIsEnabled.HasValue;
end;

function TInventoryConfiguration.GetOptionalFields: TList<string>;
begin
  Result := FOptionalFields;
end;

procedure TInventoryConfiguration.SetOptionalFields(const Value: TList<string>);
begin
  if FOptionalFields <> Value then
  begin
    if not KeepOptionalFields then
      FOptionalFields.Free;
    FOptionalFields := Value;
  end;
end;

function TInventoryConfiguration.GetKeepOptionalFields: Boolean;
begin
  Result := FKeepOptionalFields;
end;

procedure TInventoryConfiguration.SetKeepOptionalFields(const Value: Boolean);
begin
  FKeepOptionalFields := Value;
end;

function TInventoryConfiguration.IsSetOptionalFields: Boolean;
begin
  Result := (FOptionalFields <> nil) and (FOptionalFields.Count > 0);
end;

function TInventoryConfiguration.GetSchedule: TInventorySchedule;
begin
  Result := FSchedule;
end;

procedure TInventoryConfiguration.SetSchedule(const Value: TInventorySchedule);
begin
  if FSchedule <> Value then
  begin
    if not KeepSchedule then
      FSchedule.Free;
    FSchedule := Value;
  end;
end;

function TInventoryConfiguration.GetKeepSchedule: Boolean;
begin
  Result := FKeepSchedule;
end;

procedure TInventoryConfiguration.SetKeepSchedule(const Value: Boolean);
begin
  FKeepSchedule := Value;
end;

function TInventoryConfiguration.IsSetSchedule: Boolean;
begin
  Result := FSchedule <> nil;
end;

end.
