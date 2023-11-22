unit AWS.S3Control.Model.NoncurrentVersionExpiration;

interface

uses
  Bcl.Types.Nullable;

type
  TNoncurrentVersionExpiration = class;
  
  INoncurrentVersionExpiration = interface
    function GetNoncurrentDays: Integer;
    procedure SetNoncurrentDays(const Value: Integer);
    function Obj: TNoncurrentVersionExpiration;
    function IsSetNoncurrentDays: Boolean;
    property NoncurrentDays: Integer read GetNoncurrentDays write SetNoncurrentDays;
  end;
  
  TNoncurrentVersionExpiration = class
  strict private
    FNoncurrentDays: Nullable<Integer>;
    function GetNoncurrentDays: Integer;
    procedure SetNoncurrentDays(const Value: Integer);
  strict protected
    function Obj: TNoncurrentVersionExpiration;
  public
    function IsSetNoncurrentDays: Boolean;
    property NoncurrentDays: Integer read GetNoncurrentDays write SetNoncurrentDays;
  end;
  
implementation

{ TNoncurrentVersionExpiration }

function TNoncurrentVersionExpiration.Obj: TNoncurrentVersionExpiration;
begin
  Result := Self;
end;

function TNoncurrentVersionExpiration.GetNoncurrentDays: Integer;
begin
  Result := FNoncurrentDays.ValueOrDefault;
end;

procedure TNoncurrentVersionExpiration.SetNoncurrentDays(const Value: Integer);
begin
  FNoncurrentDays := Value;
end;

function TNoncurrentVersionExpiration.IsSetNoncurrentDays: Boolean;
begin
  Result := FNoncurrentDays.HasValue;
end;

end.
