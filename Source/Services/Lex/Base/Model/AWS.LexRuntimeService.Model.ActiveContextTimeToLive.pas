unit AWS.LexRuntimeService.Model.ActiveContextTimeToLive;

interface

uses
  Bcl.Types.Nullable;

type
  TActiveContextTimeToLive = class;
  
  IActiveContextTimeToLive = interface
    function GetTimeToLiveInSeconds: Integer;
    procedure SetTimeToLiveInSeconds(const Value: Integer);
    function GetTurnsToLive: Integer;
    procedure SetTurnsToLive(const Value: Integer);
    function Obj: TActiveContextTimeToLive;
    function IsSetTimeToLiveInSeconds: Boolean;
    function IsSetTurnsToLive: Boolean;
    property TimeToLiveInSeconds: Integer read GetTimeToLiveInSeconds write SetTimeToLiveInSeconds;
    property TurnsToLive: Integer read GetTurnsToLive write SetTurnsToLive;
  end;
  
  TActiveContextTimeToLive = class
  strict private
    FTimeToLiveInSeconds: Nullable<Integer>;
    FTurnsToLive: Nullable<Integer>;
    function GetTimeToLiveInSeconds: Integer;
    procedure SetTimeToLiveInSeconds(const Value: Integer);
    function GetTurnsToLive: Integer;
    procedure SetTurnsToLive(const Value: Integer);
  strict protected
    function Obj: TActiveContextTimeToLive;
  public
    function IsSetTimeToLiveInSeconds: Boolean;
    function IsSetTurnsToLive: Boolean;
    property TimeToLiveInSeconds: Integer read GetTimeToLiveInSeconds write SetTimeToLiveInSeconds;
    property TurnsToLive: Integer read GetTurnsToLive write SetTurnsToLive;
  end;
  
implementation

{ TActiveContextTimeToLive }

function TActiveContextTimeToLive.Obj: TActiveContextTimeToLive;
begin
  Result := Self;
end;

function TActiveContextTimeToLive.GetTimeToLiveInSeconds: Integer;
begin
  Result := FTimeToLiveInSeconds.ValueOrDefault;
end;

procedure TActiveContextTimeToLive.SetTimeToLiveInSeconds(const Value: Integer);
begin
  FTimeToLiveInSeconds := Value;
end;

function TActiveContextTimeToLive.IsSetTimeToLiveInSeconds: Boolean;
begin
  Result := FTimeToLiveInSeconds.HasValue;
end;

function TActiveContextTimeToLive.GetTurnsToLive: Integer;
begin
  Result := FTurnsToLive.ValueOrDefault;
end;

procedure TActiveContextTimeToLive.SetTurnsToLive(const Value: Integer);
begin
  FTurnsToLive := Value;
end;

function TActiveContextTimeToLive.IsSetTurnsToLive: Boolean;
begin
  Result := FTurnsToLive.HasValue;
end;

end.
