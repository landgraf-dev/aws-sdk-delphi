unit AWS.S3.Model.ObjectLockRule;

interface

uses
  AWS.S3.Model.DefaultRetention;

type
  TObjectLockRule = class;
  
  IObjectLockRule = interface
    function GetDefaultRetention: TDefaultRetention;
    procedure SetDefaultRetention(const Value: TDefaultRetention);
    function GetKeepDefaultRetention: Boolean;
    procedure SetKeepDefaultRetention(const Value: Boolean);
    function Obj: TObjectLockRule;
    function IsSetDefaultRetention: Boolean;
    property DefaultRetention: TDefaultRetention read GetDefaultRetention write SetDefaultRetention;
    property KeepDefaultRetention: Boolean read GetKeepDefaultRetention write SetKeepDefaultRetention;
  end;
  
  TObjectLockRule = class
  strict private
    FDefaultRetention: TDefaultRetention;
    FKeepDefaultRetention: Boolean;
    function GetDefaultRetention: TDefaultRetention;
    procedure SetDefaultRetention(const Value: TDefaultRetention);
    function GetKeepDefaultRetention: Boolean;
    procedure SetKeepDefaultRetention(const Value: Boolean);
  strict protected
    function Obj: TObjectLockRule;
  public
    destructor Destroy; override;
    function IsSetDefaultRetention: Boolean;
    property DefaultRetention: TDefaultRetention read GetDefaultRetention write SetDefaultRetention;
    property KeepDefaultRetention: Boolean read GetKeepDefaultRetention write SetKeepDefaultRetention;
  end;
  
implementation

{ TObjectLockRule }

destructor TObjectLockRule.Destroy;
begin
  DefaultRetention := nil;
  inherited;
end;

function TObjectLockRule.Obj: TObjectLockRule;
begin
  Result := Self;
end;

function TObjectLockRule.GetDefaultRetention: TDefaultRetention;
begin
  Result := FDefaultRetention;
end;

procedure TObjectLockRule.SetDefaultRetention(const Value: TDefaultRetention);
begin
  if FDefaultRetention <> Value then
  begin
    if not KeepDefaultRetention then
      FDefaultRetention.Free;
    FDefaultRetention := Value;
  end;
end;

function TObjectLockRule.GetKeepDefaultRetention: Boolean;
begin
  Result := FKeepDefaultRetention;
end;

procedure TObjectLockRule.SetKeepDefaultRetention(const Value: Boolean);
begin
  FKeepDefaultRetention := Value;
end;

function TObjectLockRule.IsSetDefaultRetention: Boolean;
begin
  Result := FDefaultRetention <> nil;
end;

end.
