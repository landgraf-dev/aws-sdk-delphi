unit AWS.S3.Model.OwnershipControls;

interface

uses
  System.Generics.Collections, 
  AWS.S3.Model.OwnershipControlsRule;

type
  TOwnershipControls = class;
  
  IOwnershipControls = interface
    function GetRules: TObjectList<TOwnershipControlsRule>;
    procedure SetRules(const Value: TObjectList<TOwnershipControlsRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
    function Obj: TOwnershipControls;
    function IsSetRules: Boolean;
    property Rules: TObjectList<TOwnershipControlsRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
  TOwnershipControls = class
  strict private
    FRules: TObjectList<TOwnershipControlsRule>;
    FKeepRules: Boolean;
    function GetRules: TObjectList<TOwnershipControlsRule>;
    procedure SetRules(const Value: TObjectList<TOwnershipControlsRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
  strict protected
    function Obj: TOwnershipControls;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetRules: Boolean;
    property Rules: TObjectList<TOwnershipControlsRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
implementation

{ TOwnershipControls }

constructor TOwnershipControls.Create;
begin
  inherited;
  FRules := TObjectList<TOwnershipControlsRule>.Create;
end;

destructor TOwnershipControls.Destroy;
begin
  Rules := nil;
  inherited;
end;

function TOwnershipControls.Obj: TOwnershipControls;
begin
  Result := Self;
end;

function TOwnershipControls.GetRules: TObjectList<TOwnershipControlsRule>;
begin
  Result := FRules;
end;

procedure TOwnershipControls.SetRules(const Value: TObjectList<TOwnershipControlsRule>);
begin
  if FRules <> Value then
  begin
    if not KeepRules then
      FRules.Free;
    FRules := Value;
  end;
end;

function TOwnershipControls.GetKeepRules: Boolean;
begin
  Result := FKeepRules;
end;

procedure TOwnershipControls.SetKeepRules(const Value: Boolean);
begin
  FKeepRules := Value;
end;

function TOwnershipControls.IsSetRules: Boolean;
begin
  Result := (FRules <> nil) and (FRules.Count > 0);
end;

end.
