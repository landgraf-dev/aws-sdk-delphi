unit AWS.S3.Model.TargetGrant;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Grantee, 
  AWS.S3.Enums;

type
  TTargetGrant = class;
  
  ITargetGrant = interface
    function GetGrantee: TGrantee;
    procedure SetGrantee(const Value: TGrantee);
    function GetKeepGrantee: Boolean;
    procedure SetKeepGrantee(const Value: Boolean);
    function GetPermission: TBucketLogsPermission;
    procedure SetPermission(const Value: TBucketLogsPermission);
    function Obj: TTargetGrant;
    function IsSetGrantee: Boolean;
    function IsSetPermission: Boolean;
    property Grantee: TGrantee read GetGrantee write SetGrantee;
    property KeepGrantee: Boolean read GetKeepGrantee write SetKeepGrantee;
    property Permission: TBucketLogsPermission read GetPermission write SetPermission;
  end;
  
  TTargetGrant = class
  strict private
    FGrantee: TGrantee;
    FKeepGrantee: Boolean;
    FPermission: Nullable<TBucketLogsPermission>;
    function GetGrantee: TGrantee;
    procedure SetGrantee(const Value: TGrantee);
    function GetKeepGrantee: Boolean;
    procedure SetKeepGrantee(const Value: Boolean);
    function GetPermission: TBucketLogsPermission;
    procedure SetPermission(const Value: TBucketLogsPermission);
  strict protected
    function Obj: TTargetGrant;
  public
    destructor Destroy; override;
    function IsSetGrantee: Boolean;
    function IsSetPermission: Boolean;
    property Grantee: TGrantee read GetGrantee write SetGrantee;
    property KeepGrantee: Boolean read GetKeepGrantee write SetKeepGrantee;
    property Permission: TBucketLogsPermission read GetPermission write SetPermission;
  end;
  
implementation

{ TTargetGrant }

destructor TTargetGrant.Destroy;
begin
  Grantee := nil;
  inherited;
end;

function TTargetGrant.Obj: TTargetGrant;
begin
  Result := Self;
end;

function TTargetGrant.GetGrantee: TGrantee;
begin
  Result := FGrantee;
end;

procedure TTargetGrant.SetGrantee(const Value: TGrantee);
begin
  if FGrantee <> Value then
  begin
    if not KeepGrantee then
      FGrantee.Free;
    FGrantee := Value;
  end;
end;

function TTargetGrant.GetKeepGrantee: Boolean;
begin
  Result := FKeepGrantee;
end;

procedure TTargetGrant.SetKeepGrantee(const Value: Boolean);
begin
  FKeepGrantee := Value;
end;

function TTargetGrant.IsSetGrantee: Boolean;
begin
  Result := FGrantee <> nil;
end;

function TTargetGrant.GetPermission: TBucketLogsPermission;
begin
  Result := FPermission.ValueOrDefault;
end;

procedure TTargetGrant.SetPermission(const Value: TBucketLogsPermission);
begin
  FPermission := Value;
end;

function TTargetGrant.IsSetPermission: Boolean;
begin
  Result := FPermission.HasValue;
end;

end.
