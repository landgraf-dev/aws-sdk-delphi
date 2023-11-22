unit AWS.S3Control.Model.S3InitiateRestoreObjectOperation;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Enums;

type
  TS3InitiateRestoreObjectOperation = class;
  
  IS3InitiateRestoreObjectOperation = interface
    function GetExpirationInDays: Integer;
    procedure SetExpirationInDays(const Value: Integer);
    function GetGlacierJobTier: TS3GlacierJobTier;
    procedure SetGlacierJobTier(const Value: TS3GlacierJobTier);
    function Obj: TS3InitiateRestoreObjectOperation;
    function IsSetExpirationInDays: Boolean;
    function IsSetGlacierJobTier: Boolean;
    property ExpirationInDays: Integer read GetExpirationInDays write SetExpirationInDays;
    property GlacierJobTier: TS3GlacierJobTier read GetGlacierJobTier write SetGlacierJobTier;
  end;
  
  TS3InitiateRestoreObjectOperation = class
  strict private
    FExpirationInDays: Nullable<Integer>;
    FGlacierJobTier: Nullable<TS3GlacierJobTier>;
    function GetExpirationInDays: Integer;
    procedure SetExpirationInDays(const Value: Integer);
    function GetGlacierJobTier: TS3GlacierJobTier;
    procedure SetGlacierJobTier(const Value: TS3GlacierJobTier);
  strict protected
    function Obj: TS3InitiateRestoreObjectOperation;
  public
    function IsSetExpirationInDays: Boolean;
    function IsSetGlacierJobTier: Boolean;
    property ExpirationInDays: Integer read GetExpirationInDays write SetExpirationInDays;
    property GlacierJobTier: TS3GlacierJobTier read GetGlacierJobTier write SetGlacierJobTier;
  end;
  
implementation

{ TS3InitiateRestoreObjectOperation }

function TS3InitiateRestoreObjectOperation.Obj: TS3InitiateRestoreObjectOperation;
begin
  Result := Self;
end;

function TS3InitiateRestoreObjectOperation.GetExpirationInDays: Integer;
begin
  Result := FExpirationInDays.ValueOrDefault;
end;

procedure TS3InitiateRestoreObjectOperation.SetExpirationInDays(const Value: Integer);
begin
  FExpirationInDays := Value;
end;

function TS3InitiateRestoreObjectOperation.IsSetExpirationInDays: Boolean;
begin
  Result := FExpirationInDays.HasValue;
end;

function TS3InitiateRestoreObjectOperation.GetGlacierJobTier: TS3GlacierJobTier;
begin
  Result := FGlacierJobTier.ValueOrDefault;
end;

procedure TS3InitiateRestoreObjectOperation.SetGlacierJobTier(const Value: TS3GlacierJobTier);
begin
  FGlacierJobTier := Value;
end;

function TS3InitiateRestoreObjectOperation.IsSetGlacierJobTier: Boolean;
begin
  Result := FGlacierJobTier.HasValue;
end;

end.
