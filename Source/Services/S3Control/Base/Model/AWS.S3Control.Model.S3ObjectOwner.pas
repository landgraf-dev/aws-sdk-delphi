unit AWS.S3Control.Model.S3ObjectOwner;

interface

uses
  Bcl.Types.Nullable;

type
  TS3ObjectOwner = class;
  
  IS3ObjectOwner = interface
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetID: string;
    procedure SetID(const Value: string);
    function Obj: TS3ObjectOwner;
    function IsSetDisplayName: Boolean;
    function IsSetID: Boolean;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property ID: string read GetID write SetID;
  end;
  
  TS3ObjectOwner = class
  strict private
    FDisplayName: Nullable<string>;
    FID: Nullable<string>;
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetID: string;
    procedure SetID(const Value: string);
  strict protected
    function Obj: TS3ObjectOwner;
  public
    function IsSetDisplayName: Boolean;
    function IsSetID: Boolean;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property ID: string read GetID write SetID;
  end;
  
implementation

{ TS3ObjectOwner }

function TS3ObjectOwner.Obj: TS3ObjectOwner;
begin
  Result := Self;
end;

function TS3ObjectOwner.GetDisplayName: string;
begin
  Result := FDisplayName.ValueOrDefault;
end;

procedure TS3ObjectOwner.SetDisplayName(const Value: string);
begin
  FDisplayName := Value;
end;

function TS3ObjectOwner.IsSetDisplayName: Boolean;
begin
  Result := FDisplayName.HasValue;
end;

function TS3ObjectOwner.GetID: string;
begin
  Result := FID.ValueOrDefault;
end;

procedure TS3ObjectOwner.SetID(const Value: string);
begin
  FID := Value;
end;

function TS3ObjectOwner.IsSetID: Boolean;
begin
  Result := FID.HasValue;
end;

end.
