unit AWS.SESv2.Model.InboxPlacementTrackingOption;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections;

type
  TInboxPlacementTrackingOption = class;
  
  IInboxPlacementTrackingOption = interface
    function GetGlobal: Boolean;
    procedure SetGlobal(const Value: Boolean);
    function GetTrackedIsps: TList<string>;
    procedure SetTrackedIsps(const Value: TList<string>);
    function GetKeepTrackedIsps: Boolean;
    procedure SetKeepTrackedIsps(const Value: Boolean);
    function Obj: TInboxPlacementTrackingOption;
    function IsSetGlobal: Boolean;
    function IsSetTrackedIsps: Boolean;
    property Global: Boolean read GetGlobal write SetGlobal;
    property TrackedIsps: TList<string> read GetTrackedIsps write SetTrackedIsps;
    property KeepTrackedIsps: Boolean read GetKeepTrackedIsps write SetKeepTrackedIsps;
  end;
  
  TInboxPlacementTrackingOption = class
  strict private
    FGlobal: Nullable<Boolean>;
    FTrackedIsps: TList<string>;
    FKeepTrackedIsps: Boolean;
    function GetGlobal: Boolean;
    procedure SetGlobal(const Value: Boolean);
    function GetTrackedIsps: TList<string>;
    procedure SetTrackedIsps(const Value: TList<string>);
    function GetKeepTrackedIsps: Boolean;
    procedure SetKeepTrackedIsps(const Value: Boolean);
  strict protected
    function Obj: TInboxPlacementTrackingOption;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetGlobal: Boolean;
    function IsSetTrackedIsps: Boolean;
    property Global: Boolean read GetGlobal write SetGlobal;
    property TrackedIsps: TList<string> read GetTrackedIsps write SetTrackedIsps;
    property KeepTrackedIsps: Boolean read GetKeepTrackedIsps write SetKeepTrackedIsps;
  end;
  
implementation

{ TInboxPlacementTrackingOption }

constructor TInboxPlacementTrackingOption.Create;
begin
  inherited;
  FTrackedIsps := TList<string>.Create;
end;

destructor TInboxPlacementTrackingOption.Destroy;
begin
  TrackedIsps := nil;
  inherited;
end;

function TInboxPlacementTrackingOption.Obj: TInboxPlacementTrackingOption;
begin
  Result := Self;
end;

function TInboxPlacementTrackingOption.GetGlobal: Boolean;
begin
  Result := FGlobal.ValueOrDefault;
end;

procedure TInboxPlacementTrackingOption.SetGlobal(const Value: Boolean);
begin
  FGlobal := Value;
end;

function TInboxPlacementTrackingOption.IsSetGlobal: Boolean;
begin
  Result := FGlobal.HasValue;
end;

function TInboxPlacementTrackingOption.GetTrackedIsps: TList<string>;
begin
  Result := FTrackedIsps;
end;

procedure TInboxPlacementTrackingOption.SetTrackedIsps(const Value: TList<string>);
begin
  if FTrackedIsps <> Value then
  begin
    if not KeepTrackedIsps then
      FTrackedIsps.Free;
    FTrackedIsps := Value;
  end;
end;

function TInboxPlacementTrackingOption.GetKeepTrackedIsps: Boolean;
begin
  Result := FKeepTrackedIsps;
end;

procedure TInboxPlacementTrackingOption.SetKeepTrackedIsps(const Value: Boolean);
begin
  FKeepTrackedIsps := Value;
end;

function TInboxPlacementTrackingOption.IsSetTrackedIsps: Boolean;
begin
  Result := (FTrackedIsps <> nil) and (FTrackedIsps.Count > 0);
end;

end.
