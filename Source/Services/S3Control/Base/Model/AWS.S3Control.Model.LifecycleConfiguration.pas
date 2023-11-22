unit AWS.S3Control.Model.LifecycleConfiguration;

interface

uses
  System.Generics.Collections, 
  AWS.S3Control.Model.LifecycleRule;

type
  TLifecycleConfiguration = class;
  
  ILifecycleConfiguration = interface
    function GetRules: TObjectList<TLifecycleRule>;
    procedure SetRules(const Value: TObjectList<TLifecycleRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
    function Obj: TLifecycleConfiguration;
    function IsSetRules: Boolean;
    property Rules: TObjectList<TLifecycleRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
  TLifecycleConfiguration = class
  strict private
    FRules: TObjectList<TLifecycleRule>;
    FKeepRules: Boolean;
    function GetRules: TObjectList<TLifecycleRule>;
    procedure SetRules(const Value: TObjectList<TLifecycleRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
  strict protected
    function Obj: TLifecycleConfiguration;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetRules: Boolean;
    property Rules: TObjectList<TLifecycleRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
implementation

{ TLifecycleConfiguration }

constructor TLifecycleConfiguration.Create;
begin
  inherited;
  FRules := TObjectList<TLifecycleRule>.Create;
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

function TLifecycleConfiguration.GetRules: TObjectList<TLifecycleRule>;
begin
  Result := FRules;
end;

procedure TLifecycleConfiguration.SetRules(const Value: TObjectList<TLifecycleRule>);
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
