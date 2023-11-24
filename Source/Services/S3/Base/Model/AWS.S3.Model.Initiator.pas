unit AWS.S3.Model.Initiator;

interface

uses
  Bcl.Types.Nullable;

type
  TInitiator = class;
  
  IInitiator = interface
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetID: string;
    procedure SetID(const Value: string);
    function Obj: TInitiator;
    function IsSetDisplayName: Boolean;
    function IsSetID: Boolean;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property ID: string read GetID write SetID;
  end;
  
  TInitiator = class
  strict private
    FDisplayName: Nullable<string>;
    FID: Nullable<string>;
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetID: string;
    procedure SetID(const Value: string);
  strict protected
    function Obj: TInitiator;
  public
    function IsSetDisplayName: Boolean;
    function IsSetID: Boolean;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property ID: string read GetID write SetID;
  end;
  
implementation

{ TInitiator }

function TInitiator.Obj: TInitiator;
begin
  Result := Self;
end;

function TInitiator.GetDisplayName: string;
begin
  Result := FDisplayName.ValueOrDefault;
end;

procedure TInitiator.SetDisplayName(const Value: string);
begin
  FDisplayName := Value;
end;

function TInitiator.IsSetDisplayName: Boolean;
begin
  Result := FDisplayName.HasValue;
end;

function TInitiator.GetID: string;
begin
  Result := FID.ValueOrDefault;
end;

procedure TInitiator.SetID(const Value: string);
begin
  FID := Value;
end;

function TInitiator.IsSetID: Boolean;
begin
  Result := FID.HasValue;
end;

end.
