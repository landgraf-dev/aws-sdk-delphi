unit AWS.S3Control.Model.PrefixLevelStorageMetrics;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.SelectionCriteria;

type
  TPrefixLevelStorageMetrics = class;
  
  IPrefixLevelStorageMetrics = interface
    function GetIsEnabled: Boolean;
    procedure SetIsEnabled(const Value: Boolean);
    function GetSelectionCriteria: TSelectionCriteria;
    procedure SetSelectionCriteria(const Value: TSelectionCriteria);
    function GetKeepSelectionCriteria: Boolean;
    procedure SetKeepSelectionCriteria(const Value: Boolean);
    function Obj: TPrefixLevelStorageMetrics;
    function IsSetIsEnabled: Boolean;
    function IsSetSelectionCriteria: Boolean;
    property IsEnabled: Boolean read GetIsEnabled write SetIsEnabled;
    property SelectionCriteria: TSelectionCriteria read GetSelectionCriteria write SetSelectionCriteria;
    property KeepSelectionCriteria: Boolean read GetKeepSelectionCriteria write SetKeepSelectionCriteria;
  end;
  
  TPrefixLevelStorageMetrics = class
  strict private
    FIsEnabled: Nullable<Boolean>;
    FSelectionCriteria: TSelectionCriteria;
    FKeepSelectionCriteria: Boolean;
    function GetIsEnabled: Boolean;
    procedure SetIsEnabled(const Value: Boolean);
    function GetSelectionCriteria: TSelectionCriteria;
    procedure SetSelectionCriteria(const Value: TSelectionCriteria);
    function GetKeepSelectionCriteria: Boolean;
    procedure SetKeepSelectionCriteria(const Value: Boolean);
  strict protected
    function Obj: TPrefixLevelStorageMetrics;
  public
    destructor Destroy; override;
    function IsSetIsEnabled: Boolean;
    function IsSetSelectionCriteria: Boolean;
    property IsEnabled: Boolean read GetIsEnabled write SetIsEnabled;
    property SelectionCriteria: TSelectionCriteria read GetSelectionCriteria write SetSelectionCriteria;
    property KeepSelectionCriteria: Boolean read GetKeepSelectionCriteria write SetKeepSelectionCriteria;
  end;
  
implementation

{ TPrefixLevelStorageMetrics }

destructor TPrefixLevelStorageMetrics.Destroy;
begin
  SelectionCriteria := nil;
  inherited;
end;

function TPrefixLevelStorageMetrics.Obj: TPrefixLevelStorageMetrics;
begin
  Result := Self;
end;

function TPrefixLevelStorageMetrics.GetIsEnabled: Boolean;
begin
  Result := FIsEnabled.ValueOrDefault;
end;

procedure TPrefixLevelStorageMetrics.SetIsEnabled(const Value: Boolean);
begin
  FIsEnabled := Value;
end;

function TPrefixLevelStorageMetrics.IsSetIsEnabled: Boolean;
begin
  Result := FIsEnabled.HasValue;
end;

function TPrefixLevelStorageMetrics.GetSelectionCriteria: TSelectionCriteria;
begin
  Result := FSelectionCriteria;
end;

procedure TPrefixLevelStorageMetrics.SetSelectionCriteria(const Value: TSelectionCriteria);
begin
  if FSelectionCriteria <> Value then
  begin
    if not KeepSelectionCriteria then
      FSelectionCriteria.Free;
    FSelectionCriteria := Value;
  end;
end;

function TPrefixLevelStorageMetrics.GetKeepSelectionCriteria: Boolean;
begin
  Result := FKeepSelectionCriteria;
end;

procedure TPrefixLevelStorageMetrics.SetKeepSelectionCriteria(const Value: Boolean);
begin
  FKeepSelectionCriteria := Value;
end;

function TPrefixLevelStorageMetrics.IsSetSelectionCriteria: Boolean;
begin
  Result := FSelectionCriteria <> nil;
end;

end.
