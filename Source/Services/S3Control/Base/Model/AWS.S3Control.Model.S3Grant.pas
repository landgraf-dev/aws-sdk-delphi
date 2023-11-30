unit AWS.S3Control.Model.S3Grant;

interface

uses
  AWS.S3Control.Model.S3Grantee, 
  AWS.Nullable, 
  AWS.S3Control.Enums;

type
  TS3Grant = class;
  
  IS3Grant = interface
    function GetGrantee: TS3Grantee;
    procedure SetGrantee(const Value: TS3Grantee);
    function GetKeepGrantee: Boolean;
    procedure SetKeepGrantee(const Value: Boolean);
    function GetPermission: TS3Permission;
    procedure SetPermission(const Value: TS3Permission);
    function Obj: TS3Grant;
    function IsSetGrantee: Boolean;
    function IsSetPermission: Boolean;
    property Grantee: TS3Grantee read GetGrantee write SetGrantee;
    property KeepGrantee: Boolean read GetKeepGrantee write SetKeepGrantee;
    property Permission: TS3Permission read GetPermission write SetPermission;
  end;
  
  TS3Grant = class
  strict private
    FGrantee: TS3Grantee;
    FKeepGrantee: Boolean;
    FPermission: Nullable<TS3Permission>;
    function GetGrantee: TS3Grantee;
    procedure SetGrantee(const Value: TS3Grantee);
    function GetKeepGrantee: Boolean;
    procedure SetKeepGrantee(const Value: Boolean);
    function GetPermission: TS3Permission;
    procedure SetPermission(const Value: TS3Permission);
  strict protected
    function Obj: TS3Grant;
  public
    destructor Destroy; override;
    function IsSetGrantee: Boolean;
    function IsSetPermission: Boolean;
    property Grantee: TS3Grantee read GetGrantee write SetGrantee;
    property KeepGrantee: Boolean read GetKeepGrantee write SetKeepGrantee;
    property Permission: TS3Permission read GetPermission write SetPermission;
  end;
  
implementation

{ TS3Grant }

destructor TS3Grant.Destroy;
begin
  Grantee := nil;
  inherited;
end;

function TS3Grant.Obj: TS3Grant;
begin
  Result := Self;
end;

function TS3Grant.GetGrantee: TS3Grantee;
begin
  Result := FGrantee;
end;

procedure TS3Grant.SetGrantee(const Value: TS3Grantee);
begin
  if FGrantee <> Value then
  begin
    if not KeepGrantee then
      FGrantee.Free;
    FGrantee := Value;
  end;
end;

function TS3Grant.GetKeepGrantee: Boolean;
begin
  Result := FKeepGrantee;
end;

procedure TS3Grant.SetKeepGrantee(const Value: Boolean);
begin
  FKeepGrantee := Value;
end;

function TS3Grant.IsSetGrantee: Boolean;
begin
  Result := FGrantee <> nil;
end;

function TS3Grant.GetPermission: TS3Permission;
begin
  Result := FPermission.ValueOrDefault;
end;

procedure TS3Grant.SetPermission(const Value: TS3Permission);
begin
  FPermission := Value;
end;

function TS3Grant.IsSetPermission: Boolean;
begin
  Result := FPermission.HasValue;
end;

end.
