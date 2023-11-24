unit AWS.S3.Model.Grantee;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TGrantee = class;
  
  IGrantee = interface
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function GetID: string;
    procedure SetID(const Value: string);
    function GetType: TType;
    procedure SetType(const Value: TType);
    function GetURI: string;
    procedure SetURI(const Value: string);
    function Obj: TGrantee;
    function IsSetDisplayName: Boolean;
    function IsSetEmailAddress: Boolean;
    function IsSetID: Boolean;
    function IsSetType: Boolean;
    function IsSetURI: Boolean;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property ID: string read GetID write SetID;
    property &Type: TType read GetType write SetType;
    property URI: string read GetURI write SetURI;
  end;
  
  TGrantee = class
  strict private
    FDisplayName: Nullable<string>;
    FEmailAddress: Nullable<string>;
    FID: Nullable<string>;
    FType: Nullable<TType>;
    FURI: Nullable<string>;
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function GetID: string;
    procedure SetID(const Value: string);
    function GetType: TType;
    procedure SetType(const Value: TType);
    function GetURI: string;
    procedure SetURI(const Value: string);
  strict protected
    function Obj: TGrantee;
  public
    function IsSetDisplayName: Boolean;
    function IsSetEmailAddress: Boolean;
    function IsSetID: Boolean;
    function IsSetType: Boolean;
    function IsSetURI: Boolean;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property ID: string read GetID write SetID;
    property &Type: TType read GetType write SetType;
    property URI: string read GetURI write SetURI;
  end;
  
implementation

{ TGrantee }

function TGrantee.Obj: TGrantee;
begin
  Result := Self;
end;

function TGrantee.GetDisplayName: string;
begin
  Result := FDisplayName.ValueOrDefault;
end;

procedure TGrantee.SetDisplayName(const Value: string);
begin
  FDisplayName := Value;
end;

function TGrantee.IsSetDisplayName: Boolean;
begin
  Result := FDisplayName.HasValue;
end;

function TGrantee.GetEmailAddress: string;
begin
  Result := FEmailAddress.ValueOrDefault;
end;

procedure TGrantee.SetEmailAddress(const Value: string);
begin
  FEmailAddress := Value;
end;

function TGrantee.IsSetEmailAddress: Boolean;
begin
  Result := FEmailAddress.HasValue;
end;

function TGrantee.GetID: string;
begin
  Result := FID.ValueOrDefault;
end;

procedure TGrantee.SetID(const Value: string);
begin
  FID := Value;
end;

function TGrantee.IsSetID: Boolean;
begin
  Result := FID.HasValue;
end;

function TGrantee.GetType: TType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TGrantee.SetType(const Value: TType);
begin
  FType := Value;
end;

function TGrantee.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

function TGrantee.GetURI: string;
begin
  Result := FURI.ValueOrDefault;
end;

procedure TGrantee.SetURI(const Value: string);
begin
  FURI := Value;
end;

function TGrantee.IsSetURI: Boolean;
begin
  Result := FURI.HasValue;
end;

end.
