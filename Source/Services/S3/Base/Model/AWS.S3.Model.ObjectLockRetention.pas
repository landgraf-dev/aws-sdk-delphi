unit AWS.S3.Model.ObjectLockRetention;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TObjectLockRetention = class;
  
  IObjectLockRetention = interface
    function GetMode: TObjectLockRetentionMode;
    procedure SetMode(const Value: TObjectLockRetentionMode);
    function GetRetainUntilDate: TDateTime;
    procedure SetRetainUntilDate(const Value: TDateTime);
    function Obj: TObjectLockRetention;
    function IsSetMode: Boolean;
    function IsSetRetainUntilDate: Boolean;
    property Mode: TObjectLockRetentionMode read GetMode write SetMode;
    property RetainUntilDate: TDateTime read GetRetainUntilDate write SetRetainUntilDate;
  end;
  
  TObjectLockRetention = class
  strict private
    FMode: Nullable<TObjectLockRetentionMode>;
    FRetainUntilDate: Nullable<TDateTime>;
    function GetMode: TObjectLockRetentionMode;
    procedure SetMode(const Value: TObjectLockRetentionMode);
    function GetRetainUntilDate: TDateTime;
    procedure SetRetainUntilDate(const Value: TDateTime);
  strict protected
    function Obj: TObjectLockRetention;
  public
    function IsSetMode: Boolean;
    function IsSetRetainUntilDate: Boolean;
    property Mode: TObjectLockRetentionMode read GetMode write SetMode;
    property RetainUntilDate: TDateTime read GetRetainUntilDate write SetRetainUntilDate;
  end;
  
implementation

{ TObjectLockRetention }

function TObjectLockRetention.Obj: TObjectLockRetention;
begin
  Result := Self;
end;

function TObjectLockRetention.GetMode: TObjectLockRetentionMode;
begin
  Result := FMode.ValueOrDefault;
end;

procedure TObjectLockRetention.SetMode(const Value: TObjectLockRetentionMode);
begin
  FMode := Value;
end;

function TObjectLockRetention.IsSetMode: Boolean;
begin
  Result := FMode.HasValue;
end;

function TObjectLockRetention.GetRetainUntilDate: TDateTime;
begin
  Result := FRetainUntilDate.ValueOrDefault;
end;

procedure TObjectLockRetention.SetRetainUntilDate(const Value: TDateTime);
begin
  FRetainUntilDate := Value;
end;

function TObjectLockRetention.IsSetRetainUntilDate: Boolean;
begin
  Result := FRetainUntilDate.HasValue;
end;

end.
