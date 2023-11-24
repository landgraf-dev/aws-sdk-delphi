unit AWS.S3.Model.ReplicaModifications;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TReplicaModifications = class;
  
  IReplicaModifications = interface
    function GetStatus: TReplicaModificationsStatus;
    procedure SetStatus(const Value: TReplicaModificationsStatus);
    function Obj: TReplicaModifications;
    function IsSetStatus: Boolean;
    property Status: TReplicaModificationsStatus read GetStatus write SetStatus;
  end;
  
  TReplicaModifications = class
  strict private
    FStatus: Nullable<TReplicaModificationsStatus>;
    function GetStatus: TReplicaModificationsStatus;
    procedure SetStatus(const Value: TReplicaModificationsStatus);
  strict protected
    function Obj: TReplicaModifications;
  public
    function IsSetStatus: Boolean;
    property Status: TReplicaModificationsStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TReplicaModifications }

function TReplicaModifications.Obj: TReplicaModifications;
begin
  Result := Self;
end;

function TReplicaModifications.GetStatus: TReplicaModificationsStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TReplicaModifications.SetStatus(const Value: TReplicaModificationsStatus);
begin
  FStatus := Value;
end;

function TReplicaModifications.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
