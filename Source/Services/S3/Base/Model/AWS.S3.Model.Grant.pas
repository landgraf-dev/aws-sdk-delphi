unit AWS.S3.Model.Grant;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Grantee, 
  AWS.S3.Enums;

type
  TGrant = class;
  
  IGrant = interface
    function GetGrantee: TGrantee;
    procedure SetGrantee(const Value: TGrantee);
    function GetKeepGrantee: Boolean;
    procedure SetKeepGrantee(const Value: Boolean);
    function GetPermission: TPermission;
    procedure SetPermission(const Value: TPermission);
    function Obj: TGrant;
    function IsSetGrantee: Boolean;
    function IsSetPermission: Boolean;
    property Grantee: TGrantee read GetGrantee write SetGrantee;
    property KeepGrantee: Boolean read GetKeepGrantee write SetKeepGrantee;
    property Permission: TPermission read GetPermission write SetPermission;
  end;
  
  TGrant = class
  strict private
    FGrantee: TGrantee;
    FKeepGrantee: Boolean;
    FPermission: Nullable<TPermission>;
    function GetGrantee: TGrantee;
    procedure SetGrantee(const Value: TGrantee);
    function GetKeepGrantee: Boolean;
    procedure SetKeepGrantee(const Value: Boolean);
    function GetPermission: TPermission;
    procedure SetPermission(const Value: TPermission);
  strict protected
    function Obj: TGrant;
  public
    destructor Destroy; override;
    function IsSetGrantee: Boolean;
    function IsSetPermission: Boolean;
    property Grantee: TGrantee read GetGrantee write SetGrantee;
    property KeepGrantee: Boolean read GetKeepGrantee write SetKeepGrantee;
    property Permission: TPermission read GetPermission write SetPermission;
  end;
  
implementation

{ TGrant }

destructor TGrant.Destroy;
begin
  Grantee := nil;
  inherited;
end;

function TGrant.Obj: TGrant;
begin
  Result := Self;
end;

function TGrant.GetGrantee: TGrantee;
begin
  Result := FGrantee;
end;

procedure TGrant.SetGrantee(const Value: TGrantee);
begin
  if FGrantee <> Value then
  begin
    if not KeepGrantee then
      FGrantee.Free;
    FGrantee := Value;
  end;
end;

function TGrant.GetKeepGrantee: Boolean;
begin
  Result := FKeepGrantee;
end;

procedure TGrant.SetKeepGrantee(const Value: Boolean);
begin
  FKeepGrantee := Value;
end;

function TGrant.IsSetGrantee: Boolean;
begin
  Result := FGrantee <> nil;
end;

function TGrant.GetPermission: TPermission;
begin
  Result := FPermission.ValueOrDefault;
end;

procedure TGrant.SetPermission(const Value: TPermission);
begin
  FPermission := Value;
end;

function TGrant.IsSetPermission: Boolean;
begin
  Result := FPermission.HasValue;
end;

end.
