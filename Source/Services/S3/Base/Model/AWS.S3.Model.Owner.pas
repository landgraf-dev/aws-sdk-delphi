unit AWS.S3.Model.Owner;

interface

uses
  Bcl.Types.Nullable;

type
  TOwner = class;
  
  IOwner = interface
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetID: string;
    procedure SetID(const Value: string);
    function Obj: TOwner;
    function IsSetDisplayName: Boolean;
    function IsSetID: Boolean;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property ID: string read GetID write SetID;
  end;
  
  TOwner = class
  strict private
    FDisplayName: Nullable<string>;
    FID: Nullable<string>;
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetID: string;
    procedure SetID(const Value: string);
  strict protected
    function Obj: TOwner;
  public
    function IsSetDisplayName: Boolean;
    function IsSetID: Boolean;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property ID: string read GetID write SetID;
  end;
  
implementation

{ TOwner }

function TOwner.Obj: TOwner;
begin
  Result := Self;
end;

function TOwner.GetDisplayName: string;
begin
  Result := FDisplayName.ValueOrDefault;
end;

procedure TOwner.SetDisplayName(const Value: string);
begin
  FDisplayName := Value;
end;

function TOwner.IsSetDisplayName: Boolean;
begin
  Result := FDisplayName.HasValue;
end;

function TOwner.GetID: string;
begin
  Result := FID.ValueOrDefault;
end;

procedure TOwner.SetID(const Value: string);
begin
  FID := Value;
end;

function TOwner.IsSetID: Boolean;
begin
  Result := FID.HasValue;
end;

end.
