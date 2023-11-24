unit AWS.S3.Model.ReplicationTimeValue;

interface

uses
  Bcl.Types.Nullable;

type
  TReplicationTimeValue = class;
  
  IReplicationTimeValue = interface
    function GetMinutes: Integer;
    procedure SetMinutes(const Value: Integer);
    function Obj: TReplicationTimeValue;
    function IsSetMinutes: Boolean;
    property Minutes: Integer read GetMinutes write SetMinutes;
  end;
  
  TReplicationTimeValue = class
  strict private
    FMinutes: Nullable<Integer>;
    function GetMinutes: Integer;
    procedure SetMinutes(const Value: Integer);
  strict protected
    function Obj: TReplicationTimeValue;
  public
    function IsSetMinutes: Boolean;
    property Minutes: Integer read GetMinutes write SetMinutes;
  end;
  
implementation

{ TReplicationTimeValue }

function TReplicationTimeValue.Obj: TReplicationTimeValue;
begin
  Result := Self;
end;

function TReplicationTimeValue.GetMinutes: Integer;
begin
  Result := FMinutes.ValueOrDefault;
end;

procedure TReplicationTimeValue.SetMinutes(const Value: Integer);
begin
  FMinutes := Value;
end;

function TReplicationTimeValue.IsSetMinutes: Boolean;
begin
  Result := FMinutes.HasValue;
end;

end.
