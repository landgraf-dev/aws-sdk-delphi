unit AWS.S3.Model.AccessControlPolicy;

interface

uses
  System.Generics.Collections, 
  AWS.S3.Model.Grant, 
  AWS.S3.Model.Owner;

type
  TAccessControlPolicy = class;
  
  IAccessControlPolicy = interface
    function GetGrants: TObjectList<TGrant>;
    procedure SetGrants(const Value: TObjectList<TGrant>);
    function GetKeepGrants: Boolean;
    procedure SetKeepGrants(const Value: Boolean);
    function GetOwner: TOwner;
    procedure SetOwner(const Value: TOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
    function Obj: TAccessControlPolicy;
    function IsSetGrants: Boolean;
    function IsSetOwner: Boolean;
    property Grants: TObjectList<TGrant> read GetGrants write SetGrants;
    property KeepGrants: Boolean read GetKeepGrants write SetKeepGrants;
    property Owner: TOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
  end;
  
  TAccessControlPolicy = class
  strict private
    FGrants: TObjectList<TGrant>;
    FKeepGrants: Boolean;
    FOwner: TOwner;
    FKeepOwner: Boolean;
    function GetGrants: TObjectList<TGrant>;
    procedure SetGrants(const Value: TObjectList<TGrant>);
    function GetKeepGrants: Boolean;
    procedure SetKeepGrants(const Value: Boolean);
    function GetOwner: TOwner;
    procedure SetOwner(const Value: TOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
  strict protected
    function Obj: TAccessControlPolicy;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetGrants: Boolean;
    function IsSetOwner: Boolean;
    property Grants: TObjectList<TGrant> read GetGrants write SetGrants;
    property KeepGrants: Boolean read GetKeepGrants write SetKeepGrants;
    property Owner: TOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
  end;
  
implementation

{ TAccessControlPolicy }

constructor TAccessControlPolicy.Create;
begin
  inherited;
  FGrants := TObjectList<TGrant>.Create;
end;

destructor TAccessControlPolicy.Destroy;
begin
  Owner := nil;
  Grants := nil;
  inherited;
end;

function TAccessControlPolicy.Obj: TAccessControlPolicy;
begin
  Result := Self;
end;

function TAccessControlPolicy.GetGrants: TObjectList<TGrant>;
begin
  Result := FGrants;
end;

procedure TAccessControlPolicy.SetGrants(const Value: TObjectList<TGrant>);
begin
  if FGrants <> Value then
  begin
    if not KeepGrants then
      FGrants.Free;
    FGrants := Value;
  end;
end;

function TAccessControlPolicy.GetKeepGrants: Boolean;
begin
  Result := FKeepGrants;
end;

procedure TAccessControlPolicy.SetKeepGrants(const Value: Boolean);
begin
  FKeepGrants := Value;
end;

function TAccessControlPolicy.IsSetGrants: Boolean;
begin
  Result := (FGrants <> nil) and (FGrants.Count > 0);
end;

function TAccessControlPolicy.GetOwner: TOwner;
begin
  Result := FOwner;
end;

procedure TAccessControlPolicy.SetOwner(const Value: TOwner);
begin
  if FOwner <> Value then
  begin
    if not KeepOwner then
      FOwner.Free;
    FOwner := Value;
  end;
end;

function TAccessControlPolicy.GetKeepOwner: Boolean;
begin
  Result := FKeepOwner;
end;

procedure TAccessControlPolicy.SetKeepOwner(const Value: Boolean);
begin
  FKeepOwner := Value;
end;

function TAccessControlPolicy.IsSetOwner: Boolean;
begin
  Result := FOwner <> nil;
end;

end.
