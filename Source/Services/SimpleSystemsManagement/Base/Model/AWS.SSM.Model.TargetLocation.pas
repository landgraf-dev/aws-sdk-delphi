unit AWS.SSM.Model.TargetLocation;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TTargetLocation = class;
  
  ITargetLocation = interface
    function GetAccounts: TList<string>;
    procedure SetAccounts(const Value: TList<string>);
    function GetKeepAccounts: Boolean;
    procedure SetKeepAccounts(const Value: Boolean);
    function GetExecutionRoleName: string;
    procedure SetExecutionRoleName(const Value: string);
    function GetRegions: TList<string>;
    procedure SetRegions(const Value: TList<string>);
    function GetKeepRegions: Boolean;
    procedure SetKeepRegions(const Value: Boolean);
    function GetTargetLocationMaxConcurrency: string;
    procedure SetTargetLocationMaxConcurrency(const Value: string);
    function GetTargetLocationMaxErrors: string;
    procedure SetTargetLocationMaxErrors(const Value: string);
    function Obj: TTargetLocation;
    function IsSetAccounts: Boolean;
    function IsSetExecutionRoleName: Boolean;
    function IsSetRegions: Boolean;
    function IsSetTargetLocationMaxConcurrency: Boolean;
    function IsSetTargetLocationMaxErrors: Boolean;
    property Accounts: TList<string> read GetAccounts write SetAccounts;
    property KeepAccounts: Boolean read GetKeepAccounts write SetKeepAccounts;
    property ExecutionRoleName: string read GetExecutionRoleName write SetExecutionRoleName;
    property Regions: TList<string> read GetRegions write SetRegions;
    property KeepRegions: Boolean read GetKeepRegions write SetKeepRegions;
    property TargetLocationMaxConcurrency: string read GetTargetLocationMaxConcurrency write SetTargetLocationMaxConcurrency;
    property TargetLocationMaxErrors: string read GetTargetLocationMaxErrors write SetTargetLocationMaxErrors;
  end;
  
  TTargetLocation = class
  strict private
    FAccounts: TList<string>;
    FKeepAccounts: Boolean;
    FExecutionRoleName: Nullable<string>;
    FRegions: TList<string>;
    FKeepRegions: Boolean;
    FTargetLocationMaxConcurrency: Nullable<string>;
    FTargetLocationMaxErrors: Nullable<string>;
    function GetAccounts: TList<string>;
    procedure SetAccounts(const Value: TList<string>);
    function GetKeepAccounts: Boolean;
    procedure SetKeepAccounts(const Value: Boolean);
    function GetExecutionRoleName: string;
    procedure SetExecutionRoleName(const Value: string);
    function GetRegions: TList<string>;
    procedure SetRegions(const Value: TList<string>);
    function GetKeepRegions: Boolean;
    procedure SetKeepRegions(const Value: Boolean);
    function GetTargetLocationMaxConcurrency: string;
    procedure SetTargetLocationMaxConcurrency(const Value: string);
    function GetTargetLocationMaxErrors: string;
    procedure SetTargetLocationMaxErrors(const Value: string);
  strict protected
    function Obj: TTargetLocation;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAccounts: Boolean;
    function IsSetExecutionRoleName: Boolean;
    function IsSetRegions: Boolean;
    function IsSetTargetLocationMaxConcurrency: Boolean;
    function IsSetTargetLocationMaxErrors: Boolean;
    property Accounts: TList<string> read GetAccounts write SetAccounts;
    property KeepAccounts: Boolean read GetKeepAccounts write SetKeepAccounts;
    property ExecutionRoleName: string read GetExecutionRoleName write SetExecutionRoleName;
    property Regions: TList<string> read GetRegions write SetRegions;
    property KeepRegions: Boolean read GetKeepRegions write SetKeepRegions;
    property TargetLocationMaxConcurrency: string read GetTargetLocationMaxConcurrency write SetTargetLocationMaxConcurrency;
    property TargetLocationMaxErrors: string read GetTargetLocationMaxErrors write SetTargetLocationMaxErrors;
  end;
  
implementation

{ TTargetLocation }

constructor TTargetLocation.Create;
begin
  inherited;
  FAccounts := TList<string>.Create;
  FRegions := TList<string>.Create;
end;

destructor TTargetLocation.Destroy;
begin
  Regions := nil;
  Accounts := nil;
  inherited;
end;

function TTargetLocation.Obj: TTargetLocation;
begin
  Result := Self;
end;

function TTargetLocation.GetAccounts: TList<string>;
begin
  Result := FAccounts;
end;

procedure TTargetLocation.SetAccounts(const Value: TList<string>);
begin
  if FAccounts <> Value then
  begin
    if not KeepAccounts then
      FAccounts.Free;
    FAccounts := Value;
  end;
end;

function TTargetLocation.GetKeepAccounts: Boolean;
begin
  Result := FKeepAccounts;
end;

procedure TTargetLocation.SetKeepAccounts(const Value: Boolean);
begin
  FKeepAccounts := Value;
end;

function TTargetLocation.IsSetAccounts: Boolean;
begin
  Result := (FAccounts <> nil) and (FAccounts.Count > 0);
end;

function TTargetLocation.GetExecutionRoleName: string;
begin
  Result := FExecutionRoleName.ValueOrDefault;
end;

procedure TTargetLocation.SetExecutionRoleName(const Value: string);
begin
  FExecutionRoleName := Value;
end;

function TTargetLocation.IsSetExecutionRoleName: Boolean;
begin
  Result := FExecutionRoleName.HasValue;
end;

function TTargetLocation.GetRegions: TList<string>;
begin
  Result := FRegions;
end;

procedure TTargetLocation.SetRegions(const Value: TList<string>);
begin
  if FRegions <> Value then
  begin
    if not KeepRegions then
      FRegions.Free;
    FRegions := Value;
  end;
end;

function TTargetLocation.GetKeepRegions: Boolean;
begin
  Result := FKeepRegions;
end;

procedure TTargetLocation.SetKeepRegions(const Value: Boolean);
begin
  FKeepRegions := Value;
end;

function TTargetLocation.IsSetRegions: Boolean;
begin
  Result := (FRegions <> nil) and (FRegions.Count > 0);
end;

function TTargetLocation.GetTargetLocationMaxConcurrency: string;
begin
  Result := FTargetLocationMaxConcurrency.ValueOrDefault;
end;

procedure TTargetLocation.SetTargetLocationMaxConcurrency(const Value: string);
begin
  FTargetLocationMaxConcurrency := Value;
end;

function TTargetLocation.IsSetTargetLocationMaxConcurrency: Boolean;
begin
  Result := FTargetLocationMaxConcurrency.HasValue;
end;

function TTargetLocation.GetTargetLocationMaxErrors: string;
begin
  Result := FTargetLocationMaxErrors.ValueOrDefault;
end;

procedure TTargetLocation.SetTargetLocationMaxErrors(const Value: string);
begin
  FTargetLocationMaxErrors := Value;
end;

function TTargetLocation.IsSetTargetLocationMaxErrors: Boolean;
begin
  Result := FTargetLocationMaxErrors.HasValue;
end;

end.
