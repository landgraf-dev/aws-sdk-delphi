unit AWS.S3.Model.ObjectLockConfiguration;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums, 
  AWS.S3.Model.ObjectLockRule;

type
  TObjectLockConfiguration = class;
  
  IObjectLockConfiguration = interface
    function GetObjectLockEnabled: TObjectLockEnabled;
    procedure SetObjectLockEnabled(const Value: TObjectLockEnabled);
    function GetRule: TObjectLockRule;
    procedure SetRule(const Value: TObjectLockRule);
    function GetKeepRule: Boolean;
    procedure SetKeepRule(const Value: Boolean);
    function Obj: TObjectLockConfiguration;
    function IsSetObjectLockEnabled: Boolean;
    function IsSetRule: Boolean;
    property ObjectLockEnabled: TObjectLockEnabled read GetObjectLockEnabled write SetObjectLockEnabled;
    property Rule: TObjectLockRule read GetRule write SetRule;
    property KeepRule: Boolean read GetKeepRule write SetKeepRule;
  end;
  
  TObjectLockConfiguration = class
  strict private
    FObjectLockEnabled: Nullable<TObjectLockEnabled>;
    FRule: TObjectLockRule;
    FKeepRule: Boolean;
    function GetObjectLockEnabled: TObjectLockEnabled;
    procedure SetObjectLockEnabled(const Value: TObjectLockEnabled);
    function GetRule: TObjectLockRule;
    procedure SetRule(const Value: TObjectLockRule);
    function GetKeepRule: Boolean;
    procedure SetKeepRule(const Value: Boolean);
  strict protected
    function Obj: TObjectLockConfiguration;
  public
    destructor Destroy; override;
    function IsSetObjectLockEnabled: Boolean;
    function IsSetRule: Boolean;
    property ObjectLockEnabled: TObjectLockEnabled read GetObjectLockEnabled write SetObjectLockEnabled;
    property Rule: TObjectLockRule read GetRule write SetRule;
    property KeepRule: Boolean read GetKeepRule write SetKeepRule;
  end;
  
implementation

{ TObjectLockConfiguration }

destructor TObjectLockConfiguration.Destroy;
begin
  Rule := nil;
  inherited;
end;

function TObjectLockConfiguration.Obj: TObjectLockConfiguration;
begin
  Result := Self;
end;

function TObjectLockConfiguration.GetObjectLockEnabled: TObjectLockEnabled;
begin
  Result := FObjectLockEnabled.ValueOrDefault;
end;

procedure TObjectLockConfiguration.SetObjectLockEnabled(const Value: TObjectLockEnabled);
begin
  FObjectLockEnabled := Value;
end;

function TObjectLockConfiguration.IsSetObjectLockEnabled: Boolean;
begin
  Result := FObjectLockEnabled.HasValue;
end;

function TObjectLockConfiguration.GetRule: TObjectLockRule;
begin
  Result := FRule;
end;

procedure TObjectLockConfiguration.SetRule(const Value: TObjectLockRule);
begin
  if FRule <> Value then
  begin
    if not KeepRule then
      FRule.Free;
    FRule := Value;
  end;
end;

function TObjectLockConfiguration.GetKeepRule: Boolean;
begin
  Result := FKeepRule;
end;

procedure TObjectLockConfiguration.SetKeepRule(const Value: Boolean);
begin
  FKeepRule := Value;
end;

function TObjectLockConfiguration.IsSetRule: Boolean;
begin
  Result := FRule <> nil;
end;

end.
