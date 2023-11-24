unit AWS.S3.Model.LifecycleConfiguration;

interface

uses
  System.Generics.Collections, 
  AWS.S3.Model.Rule;

type
  TLifecycleConfiguration = class;
  
  ILifecycleConfiguration = interface
    function GetRules: TObjectList<TRule>;
    procedure SetRules(const Value: TObjectList<TRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
    function Obj: TLifecycleConfiguration;
    function IsSetRules: Boolean;
    property Rules: TObjectList<TRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
  TLifecycleConfiguration = class
  strict private
    FRules: TObjectList<TRule>;
    FKeepRules: Boolean;
    function GetRules: TObjectList<TRule>;
    procedure SetRules(const Value: TObjectList<TRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
  strict protected
    function Obj: TLifecycleConfiguration;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetRules: Boolean;
    property Rules: TObjectList<TRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
implementation

{ TLifecycleConfiguration }

constructor TLifecycleConfiguration.Create;
begin
  inherited;
  FRules := TObjectList<TRule>.Create;
end;

destructor TLifecycleConfiguration.Destroy;
begin
  Rules := nil;
  inherited;
end;

function TLifecycleConfiguration.Obj: TLifecycleConfiguration;
begin
  Result := Self;
end;

function TLifecycleConfiguration.GetRules: TObjectList<TRule>;
begin
  Result := FRules;
end;

procedure TLifecycleConfiguration.SetRules(const Value: TObjectList<TRule>);
begin
  if FRules <> Value then
  begin
    if not KeepRules then
      FRules.Free;
    FRules := Value;
  end;
end;

function TLifecycleConfiguration.GetKeepRules: Boolean;
begin
  Result := FKeepRules;
end;

procedure TLifecycleConfiguration.SetKeepRules(const Value: Boolean);
begin
  FKeepRules := Value;
end;

function TLifecycleConfiguration.IsSetRules: Boolean;
begin
  Result := (FRules <> nil) and (FRules.Count > 0);
end;

end.
