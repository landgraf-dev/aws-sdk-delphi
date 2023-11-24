unit AWS.S3.Model.ReplicationRuleFilter;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.ReplicationRuleAndOperator, 
  AWS.S3.Model.Tag;

type
  TReplicationRuleFilter = class;
  
  IReplicationRuleFilter = interface
    function GetAnd: TReplicationRuleAndOperator;
    procedure SetAnd(const Value: TReplicationRuleAndOperator);
    function GetKeepAnd: Boolean;
    procedure SetKeepAnd(const Value: Boolean);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTag: TTag;
    procedure SetTag(const Value: TTag);
    function GetKeepTag: Boolean;
    procedure SetKeepTag(const Value: Boolean);
    function Obj: TReplicationRuleFilter;
    function IsSetAnd: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetTag: Boolean;
    property &And: TReplicationRuleAndOperator read GetAnd write SetAnd;
    property KeepAnd: Boolean read GetKeepAnd write SetKeepAnd;
    property Prefix: string read GetPrefix write SetPrefix;
    property Tag: TTag read GetTag write SetTag;
    property KeepTag: Boolean read GetKeepTag write SetKeepTag;
  end;
  
  TReplicationRuleFilter = class
  strict private
    FAnd: TReplicationRuleAndOperator;
    FKeepAnd: Boolean;
    FPrefix: Nullable<string>;
    FTag: TTag;
    FKeepTag: Boolean;
    function GetAnd: TReplicationRuleAndOperator;
    procedure SetAnd(const Value: TReplicationRuleAndOperator);
    function GetKeepAnd: Boolean;
    procedure SetKeepAnd(const Value: Boolean);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTag: TTag;
    procedure SetTag(const Value: TTag);
    function GetKeepTag: Boolean;
    procedure SetKeepTag(const Value: Boolean);
  strict protected
    function Obj: TReplicationRuleFilter;
  public
    destructor Destroy; override;
    function IsSetAnd: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetTag: Boolean;
    property &And: TReplicationRuleAndOperator read GetAnd write SetAnd;
    property KeepAnd: Boolean read GetKeepAnd write SetKeepAnd;
    property Prefix: string read GetPrefix write SetPrefix;
    property Tag: TTag read GetTag write SetTag;
    property KeepTag: Boolean read GetKeepTag write SetKeepTag;
  end;
  
implementation

{ TReplicationRuleFilter }

destructor TReplicationRuleFilter.Destroy;
begin
  Tag := nil;
  &And := nil;
  inherited;
end;

function TReplicationRuleFilter.Obj: TReplicationRuleFilter;
begin
  Result := Self;
end;

function TReplicationRuleFilter.GetAnd: TReplicationRuleAndOperator;
begin
  Result := FAnd;
end;

procedure TReplicationRuleFilter.SetAnd(const Value: TReplicationRuleAndOperator);
begin
  if FAnd <> Value then
  begin
    if not KeepAnd then
      FAnd.Free;
    FAnd := Value;
  end;
end;

function TReplicationRuleFilter.GetKeepAnd: Boolean;
begin
  Result := FKeepAnd;
end;

procedure TReplicationRuleFilter.SetKeepAnd(const Value: Boolean);
begin
  FKeepAnd := Value;
end;

function TReplicationRuleFilter.IsSetAnd: Boolean;
begin
  Result := FAnd <> nil;
end;

function TReplicationRuleFilter.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TReplicationRuleFilter.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TReplicationRuleFilter.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TReplicationRuleFilter.GetTag: TTag;
begin
  Result := FTag;
end;

procedure TReplicationRuleFilter.SetTag(const Value: TTag);
begin
  if FTag <> Value then
  begin
    if not KeepTag then
      FTag.Free;
    FTag := Value;
  end;
end;

function TReplicationRuleFilter.GetKeepTag: Boolean;
begin
  Result := FKeepTag;
end;

procedure TReplicationRuleFilter.SetKeepTag(const Value: Boolean);
begin
  FKeepTag := Value;
end;

function TReplicationRuleFilter.IsSetTag: Boolean;
begin
  Result := FTag <> nil;
end;

end.
