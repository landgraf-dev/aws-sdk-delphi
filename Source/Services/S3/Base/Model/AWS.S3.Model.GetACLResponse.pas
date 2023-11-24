unit AWS.S3.Model.GetACLResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3.Model.Grant, 
  AWS.S3.Model.Owner;

type
  TGetACLResponse = class;
  
  IGetACLResponse = interface(IAmazonWebServiceResponse)
    function GetGrants: TObjectList<TGrant>;
    procedure SetGrants(const Value: TObjectList<TGrant>);
    function GetKeepGrants: Boolean;
    procedure SetKeepGrants(const Value: Boolean);
    function GetOwner: TOwner;
    procedure SetOwner(const Value: TOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
    function Obj: TGetACLResponse;
    function IsSetGrants: Boolean;
    function IsSetOwner: Boolean;
    property Grants: TObjectList<TGrant> read GetGrants write SetGrants;
    property KeepGrants: Boolean read GetKeepGrants write SetKeepGrants;
    property Owner: TOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
  end;
  
  TGetACLResponse = class(TAmazonWebServiceResponse, IGetACLResponse)
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
    function Obj: TGetACLResponse;
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

{ TGetACLResponse }

constructor TGetACLResponse.Create;
begin
  inherited;
  FGrants := TObjectList<TGrant>.Create;
end;

destructor TGetACLResponse.Destroy;
begin
  Owner := nil;
  Grants := nil;
  inherited;
end;

function TGetACLResponse.Obj: TGetACLResponse;
begin
  Result := Self;
end;

function TGetACLResponse.GetGrants: TObjectList<TGrant>;
begin
  Result := FGrants;
end;

procedure TGetACLResponse.SetGrants(const Value: TObjectList<TGrant>);
begin
  if FGrants <> Value then
  begin
    if not KeepGrants then
      FGrants.Free;
    FGrants := Value;
  end;
end;

function TGetACLResponse.GetKeepGrants: Boolean;
begin
  Result := FKeepGrants;
end;

procedure TGetACLResponse.SetKeepGrants(const Value: Boolean);
begin
  FKeepGrants := Value;
end;

function TGetACLResponse.IsSetGrants: Boolean;
begin
  Result := (FGrants <> nil) and (FGrants.Count > 0);
end;

function TGetACLResponse.GetOwner: TOwner;
begin
  Result := FOwner;
end;

procedure TGetACLResponse.SetOwner(const Value: TOwner);
begin
  if FOwner <> Value then
  begin
    if not KeepOwner then
      FOwner.Free;
    FOwner := Value;
  end;
end;

function TGetACLResponse.GetKeepOwner: Boolean;
begin
  Result := FKeepOwner;
end;

procedure TGetACLResponse.SetKeepOwner(const Value: Boolean);
begin
  FKeepOwner := Value;
end;

function TGetACLResponse.IsSetOwner: Boolean;
begin
  Result := FOwner <> nil;
end;

end.
