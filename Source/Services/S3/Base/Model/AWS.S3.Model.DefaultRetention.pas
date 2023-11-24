unit AWS.S3.Model.DefaultRetention;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TDefaultRetention = class;
  
  IDefaultRetention = interface
    function GetDays: Integer;
    procedure SetDays(const Value: Integer);
    function GetMode: TObjectLockRetentionMode;
    procedure SetMode(const Value: TObjectLockRetentionMode);
    function GetYears: Integer;
    procedure SetYears(const Value: Integer);
    function Obj: TDefaultRetention;
    function IsSetDays: Boolean;
    function IsSetMode: Boolean;
    function IsSetYears: Boolean;
    property Days: Integer read GetDays write SetDays;
    property Mode: TObjectLockRetentionMode read GetMode write SetMode;
    property Years: Integer read GetYears write SetYears;
  end;
  
  TDefaultRetention = class
  strict private
    FDays: Nullable<Integer>;
    FMode: Nullable<TObjectLockRetentionMode>;
    FYears: Nullable<Integer>;
    function GetDays: Integer;
    procedure SetDays(const Value: Integer);
    function GetMode: TObjectLockRetentionMode;
    procedure SetMode(const Value: TObjectLockRetentionMode);
    function GetYears: Integer;
    procedure SetYears(const Value: Integer);
  strict protected
    function Obj: TDefaultRetention;
  public
    function IsSetDays: Boolean;
    function IsSetMode: Boolean;
    function IsSetYears: Boolean;
    property Days: Integer read GetDays write SetDays;
    property Mode: TObjectLockRetentionMode read GetMode write SetMode;
    property Years: Integer read GetYears write SetYears;
  end;
  
implementation

{ TDefaultRetention }

function TDefaultRetention.Obj: TDefaultRetention;
begin
  Result := Self;
end;

function TDefaultRetention.GetDays: Integer;
begin
  Result := FDays.ValueOrDefault;
end;

procedure TDefaultRetention.SetDays(const Value: Integer);
begin
  FDays := Value;
end;

function TDefaultRetention.IsSetDays: Boolean;
begin
  Result := FDays.HasValue;
end;

function TDefaultRetention.GetMode: TObjectLockRetentionMode;
begin
  Result := FMode.ValueOrDefault;
end;

procedure TDefaultRetention.SetMode(const Value: TObjectLockRetentionMode);
begin
  FMode := Value;
end;

function TDefaultRetention.IsSetMode: Boolean;
begin
  Result := FMode.HasValue;
end;

function TDefaultRetention.GetYears: Integer;
begin
  Result := FYears.ValueOrDefault;
end;

procedure TDefaultRetention.SetYears(const Value: Integer);
begin
  FYears := Value;
end;

function TDefaultRetention.IsSetYears: Boolean;
begin
  Result := FYears.HasValue;
end;

end.
