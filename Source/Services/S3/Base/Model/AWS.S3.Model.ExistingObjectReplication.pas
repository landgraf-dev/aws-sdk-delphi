unit AWS.S3.Model.ExistingObjectReplication;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TExistingObjectReplication = class;
  
  IExistingObjectReplication = interface
    function GetStatus: TExistingObjectReplicationStatus;
    procedure SetStatus(const Value: TExistingObjectReplicationStatus);
    function Obj: TExistingObjectReplication;
    function IsSetStatus: Boolean;
    property Status: TExistingObjectReplicationStatus read GetStatus write SetStatus;
  end;
  
  TExistingObjectReplication = class
  strict private
    FStatus: Nullable<TExistingObjectReplicationStatus>;
    function GetStatus: TExistingObjectReplicationStatus;
    procedure SetStatus(const Value: TExistingObjectReplicationStatus);
  strict protected
    function Obj: TExistingObjectReplication;
  public
    function IsSetStatus: Boolean;
    property Status: TExistingObjectReplicationStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TExistingObjectReplication }

function TExistingObjectReplication.Obj: TExistingObjectReplication;
begin
  Result := Self;
end;

function TExistingObjectReplication.GetStatus: TExistingObjectReplicationStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TExistingObjectReplication.SetStatus(const Value: TExistingObjectReplicationStatus);
begin
  FStatus := Value;
end;

function TExistingObjectReplication.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
