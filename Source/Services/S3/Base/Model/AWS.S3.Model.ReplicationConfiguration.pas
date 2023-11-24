unit AWS.S3.Model.ReplicationConfiguration;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.S3.Model.ReplicationRule;

type
  TReplicationConfiguration = class;
  
  IReplicationConfiguration = interface
    function GetRole: string;
    procedure SetRole(const Value: string);
    function GetRules: TObjectList<TReplicationRule>;
    procedure SetRules(const Value: TObjectList<TReplicationRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
    function Obj: TReplicationConfiguration;
    function IsSetRole: Boolean;
    function IsSetRules: Boolean;
    property Role: string read GetRole write SetRole;
    property Rules: TObjectList<TReplicationRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
  TReplicationConfiguration = class
  strict private
    FRole: Nullable<string>;
    FRules: TObjectList<TReplicationRule>;
    FKeepRules: Boolean;
    function GetRole: string;
    procedure SetRole(const Value: string);
    function GetRules: TObjectList<TReplicationRule>;
    procedure SetRules(const Value: TObjectList<TReplicationRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
  strict protected
    function Obj: TReplicationConfiguration;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetRole: Boolean;
    function IsSetRules: Boolean;
    property Role: string read GetRole write SetRole;
    property Rules: TObjectList<TReplicationRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
implementation

{ TReplicationConfiguration }

constructor TReplicationConfiguration.Create;
begin
  inherited;
  FRules := TObjectList<TReplicationRule>.Create;
end;

destructor TReplicationConfiguration.Destroy;
begin
  Rules := nil;
  inherited;
end;

function TReplicationConfiguration.Obj: TReplicationConfiguration;
begin
  Result := Self;
end;

function TReplicationConfiguration.GetRole: string;
begin
  Result := FRole.ValueOrDefault;
end;

procedure TReplicationConfiguration.SetRole(const Value: string);
begin
  FRole := Value;
end;

function TReplicationConfiguration.IsSetRole: Boolean;
begin
  Result := FRole.HasValue;
end;

function TReplicationConfiguration.GetRules: TObjectList<TReplicationRule>;
begin
  Result := FRules;
end;

procedure TReplicationConfiguration.SetRules(const Value: TObjectList<TReplicationRule>);
begin
  if FRules <> Value then
  begin
    if not KeepRules then
      FRules.Free;
    FRules := Value;
  end;
end;

function TReplicationConfiguration.GetKeepRules: Boolean;
begin
  Result := FKeepRules;
end;

procedure TReplicationConfiguration.SetKeepRules(const Value: Boolean);
begin
  FKeepRules := Value;
end;

function TReplicationConfiguration.IsSetRules: Boolean;
begin
  Result := (FRules <> nil) and (FRules.Count > 0);
end;

end.
