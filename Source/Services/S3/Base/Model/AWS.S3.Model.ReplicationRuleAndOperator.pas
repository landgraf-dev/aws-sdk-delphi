unit AWS.S3.Model.ReplicationRuleAndOperator;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.S3.Model.Tag;

type
  TReplicationRuleAndOperator = class;
  
  IReplicationRuleAndOperator = interface
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TReplicationRuleAndOperator;
    function IsSetPrefix: Boolean;
    function IsSetTags: Boolean;
    property Prefix: string read GetPrefix write SetPrefix;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TReplicationRuleAndOperator = class
  strict private
    FPrefix: Nullable<string>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TReplicationRuleAndOperator;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetPrefix: Boolean;
    function IsSetTags: Boolean;
    property Prefix: string read GetPrefix write SetPrefix;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TReplicationRuleAndOperator }

constructor TReplicationRuleAndOperator.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TReplicationRuleAndOperator.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TReplicationRuleAndOperator.Obj: TReplicationRuleAndOperator;
begin
  Result := Self;
end;

function TReplicationRuleAndOperator.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TReplicationRuleAndOperator.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TReplicationRuleAndOperator.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TReplicationRuleAndOperator.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TReplicationRuleAndOperator.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TReplicationRuleAndOperator.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TReplicationRuleAndOperator.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TReplicationRuleAndOperator.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
