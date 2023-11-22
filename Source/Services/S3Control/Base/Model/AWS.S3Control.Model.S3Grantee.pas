unit AWS.S3Control.Model.S3Grantee;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Enums;

type
  TS3Grantee = class;
  
  IS3Grantee = interface
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetIdentifier: string;
    procedure SetIdentifier(const Value: string);
    function GetTypeIdentifier: TS3GranteeTypeIdentifier;
    procedure SetTypeIdentifier(const Value: TS3GranteeTypeIdentifier);
    function Obj: TS3Grantee;
    function IsSetDisplayName: Boolean;
    function IsSetIdentifier: Boolean;
    function IsSetTypeIdentifier: Boolean;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property Identifier: string read GetIdentifier write SetIdentifier;
    property TypeIdentifier: TS3GranteeTypeIdentifier read GetTypeIdentifier write SetTypeIdentifier;
  end;
  
  TS3Grantee = class
  strict private
    FDisplayName: Nullable<string>;
    FIdentifier: Nullable<string>;
    FTypeIdentifier: Nullable<TS3GranteeTypeIdentifier>;
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetIdentifier: string;
    procedure SetIdentifier(const Value: string);
    function GetTypeIdentifier: TS3GranteeTypeIdentifier;
    procedure SetTypeIdentifier(const Value: TS3GranteeTypeIdentifier);
  strict protected
    function Obj: TS3Grantee;
  public
    function IsSetDisplayName: Boolean;
    function IsSetIdentifier: Boolean;
    function IsSetTypeIdentifier: Boolean;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property Identifier: string read GetIdentifier write SetIdentifier;
    property TypeIdentifier: TS3GranteeTypeIdentifier read GetTypeIdentifier write SetTypeIdentifier;
  end;
  
implementation

{ TS3Grantee }

function TS3Grantee.Obj: TS3Grantee;
begin
  Result := Self;
end;

function TS3Grantee.GetDisplayName: string;
begin
  Result := FDisplayName.ValueOrDefault;
end;

procedure TS3Grantee.SetDisplayName(const Value: string);
begin
  FDisplayName := Value;
end;

function TS3Grantee.IsSetDisplayName: Boolean;
begin
  Result := FDisplayName.HasValue;
end;

function TS3Grantee.GetIdentifier: string;
begin
  Result := FIdentifier.ValueOrDefault;
end;

procedure TS3Grantee.SetIdentifier(const Value: string);
begin
  FIdentifier := Value;
end;

function TS3Grantee.IsSetIdentifier: Boolean;
begin
  Result := FIdentifier.HasValue;
end;

function TS3Grantee.GetTypeIdentifier: TS3GranteeTypeIdentifier;
begin
  Result := FTypeIdentifier.ValueOrDefault;
end;

procedure TS3Grantee.SetTypeIdentifier(const Value: TS3GranteeTypeIdentifier);
begin
  FTypeIdentifier := Value;
end;

function TS3Grantee.IsSetTypeIdentifier: Boolean;
begin
  Result := FTypeIdentifier.HasValue;
end;

end.
