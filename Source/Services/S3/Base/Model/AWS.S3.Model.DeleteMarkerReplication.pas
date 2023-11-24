unit AWS.S3.Model.DeleteMarkerReplication;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TDeleteMarkerReplication = class;
  
  IDeleteMarkerReplication = interface
    function GetStatus: TDeleteMarkerReplicationStatus;
    procedure SetStatus(const Value: TDeleteMarkerReplicationStatus);
    function Obj: TDeleteMarkerReplication;
    function IsSetStatus: Boolean;
    property Status: TDeleteMarkerReplicationStatus read GetStatus write SetStatus;
  end;
  
  TDeleteMarkerReplication = class
  strict private
    FStatus: Nullable<TDeleteMarkerReplicationStatus>;
    function GetStatus: TDeleteMarkerReplicationStatus;
    procedure SetStatus(const Value: TDeleteMarkerReplicationStatus);
  strict protected
    function Obj: TDeleteMarkerReplication;
  public
    function IsSetStatus: Boolean;
    property Status: TDeleteMarkerReplicationStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TDeleteMarkerReplication }

function TDeleteMarkerReplication.Obj: TDeleteMarkerReplication;
begin
  Result := Self;
end;

function TDeleteMarkerReplication.GetStatus: TDeleteMarkerReplicationStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TDeleteMarkerReplication.SetStatus(const Value: TDeleteMarkerReplicationStatus);
begin
  FStatus := Value;
end;

function TDeleteMarkerReplication.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
