unit AWS.S3Control.Model.S3Retention;

interface

uses
  AWS.Nullable, 
  AWS.S3Control.Enums;

type
  TS3Retention = class;
  
  IS3Retention = interface
    function GetMode: TS3ObjectLockRetentionMode;
    procedure SetMode(const Value: TS3ObjectLockRetentionMode);
    function GetRetainUntilDate: TDateTime;
    procedure SetRetainUntilDate(const Value: TDateTime);
    function Obj: TS3Retention;
    function IsSetMode: Boolean;
    function IsSetRetainUntilDate: Boolean;
    property Mode: TS3ObjectLockRetentionMode read GetMode write SetMode;
    property RetainUntilDate: TDateTime read GetRetainUntilDate write SetRetainUntilDate;
  end;
  
  TS3Retention = class
  strict private
    FMode: Nullable<TS3ObjectLockRetentionMode>;
    FRetainUntilDate: Nullable<TDateTime>;
    function GetMode: TS3ObjectLockRetentionMode;
    procedure SetMode(const Value: TS3ObjectLockRetentionMode);
    function GetRetainUntilDate: TDateTime;
    procedure SetRetainUntilDate(const Value: TDateTime);
  strict protected
    function Obj: TS3Retention;
  public
    function IsSetMode: Boolean;
    function IsSetRetainUntilDate: Boolean;
    property Mode: TS3ObjectLockRetentionMode read GetMode write SetMode;
    property RetainUntilDate: TDateTime read GetRetainUntilDate write SetRetainUntilDate;
  end;
  
implementation

{ TS3Retention }

function TS3Retention.Obj: TS3Retention;
begin
  Result := Self;
end;

function TS3Retention.GetMode: TS3ObjectLockRetentionMode;
begin
  Result := FMode.ValueOrDefault;
end;

procedure TS3Retention.SetMode(const Value: TS3ObjectLockRetentionMode);
begin
  FMode := Value;
end;

function TS3Retention.IsSetMode: Boolean;
begin
  Result := FMode.HasValue;
end;

function TS3Retention.GetRetainUntilDate: TDateTime;
begin
  Result := FRetainUntilDate.ValueOrDefault;
end;

procedure TS3Retention.SetRetainUntilDate(const Value: TDateTime);
begin
  FRetainUntilDate := Value;
end;

function TS3Retention.IsSetRetainUntilDate: Boolean;
begin
  Result := FRetainUntilDate.HasValue;
end;

end.
