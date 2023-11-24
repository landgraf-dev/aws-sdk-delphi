unit AWS.S3.Model.ReplicationTime;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums, 
  AWS.S3.Model.ReplicationTimeValue;

type
  TReplicationTime = class;
  
  IReplicationTime = interface
    function GetStatus: TReplicationTimeStatus;
    procedure SetStatus(const Value: TReplicationTimeStatus);
    function GetTime: TReplicationTimeValue;
    procedure SetTime(const Value: TReplicationTimeValue);
    function GetKeepTime: Boolean;
    procedure SetKeepTime(const Value: Boolean);
    function Obj: TReplicationTime;
    function IsSetStatus: Boolean;
    function IsSetTime: Boolean;
    property Status: TReplicationTimeStatus read GetStatus write SetStatus;
    property Time: TReplicationTimeValue read GetTime write SetTime;
    property KeepTime: Boolean read GetKeepTime write SetKeepTime;
  end;
  
  TReplicationTime = class
  strict private
    FStatus: Nullable<TReplicationTimeStatus>;
    FTime: TReplicationTimeValue;
    FKeepTime: Boolean;
    function GetStatus: TReplicationTimeStatus;
    procedure SetStatus(const Value: TReplicationTimeStatus);
    function GetTime: TReplicationTimeValue;
    procedure SetTime(const Value: TReplicationTimeValue);
    function GetKeepTime: Boolean;
    procedure SetKeepTime(const Value: Boolean);
  strict protected
    function Obj: TReplicationTime;
  public
    destructor Destroy; override;
    function IsSetStatus: Boolean;
    function IsSetTime: Boolean;
    property Status: TReplicationTimeStatus read GetStatus write SetStatus;
    property Time: TReplicationTimeValue read GetTime write SetTime;
    property KeepTime: Boolean read GetKeepTime write SetKeepTime;
  end;
  
implementation

{ TReplicationTime }

destructor TReplicationTime.Destroy;
begin
  Time := nil;
  inherited;
end;

function TReplicationTime.Obj: TReplicationTime;
begin
  Result := Self;
end;

function TReplicationTime.GetStatus: TReplicationTimeStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TReplicationTime.SetStatus(const Value: TReplicationTimeStatus);
begin
  FStatus := Value;
end;

function TReplicationTime.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TReplicationTime.GetTime: TReplicationTimeValue;
begin
  Result := FTime;
end;

procedure TReplicationTime.SetTime(const Value: TReplicationTimeValue);
begin
  if FTime <> Value then
  begin
    if not KeepTime then
      FTime.Free;
    FTime := Value;
  end;
end;

function TReplicationTime.GetKeepTime: Boolean;
begin
  Result := FKeepTime;
end;

procedure TReplicationTime.SetKeepTime(const Value: Boolean);
begin
  FKeepTime := Value;
end;

function TReplicationTime.IsSetTime: Boolean;
begin
  Result := FTime <> nil;
end;

end.
