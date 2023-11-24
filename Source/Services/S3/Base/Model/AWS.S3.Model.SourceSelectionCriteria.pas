unit AWS.S3.Model.SourceSelectionCriteria;

interface

uses
  AWS.S3.Model.ReplicaModifications, 
  AWS.S3.Model.SseKmsEncryptedObjects;

type
  TSourceSelectionCriteria = class;
  
  ISourceSelectionCriteria = interface
    function GetReplicaModifications: TReplicaModifications;
    procedure SetReplicaModifications(const Value: TReplicaModifications);
    function GetKeepReplicaModifications: Boolean;
    procedure SetKeepReplicaModifications(const Value: Boolean);
    function GetSseKmsEncryptedObjects: TSseKmsEncryptedObjects;
    procedure SetSseKmsEncryptedObjects(const Value: TSseKmsEncryptedObjects);
    function GetKeepSseKmsEncryptedObjects: Boolean;
    procedure SetKeepSseKmsEncryptedObjects(const Value: Boolean);
    function Obj: TSourceSelectionCriteria;
    function IsSetReplicaModifications: Boolean;
    function IsSetSseKmsEncryptedObjects: Boolean;
    property ReplicaModifications: TReplicaModifications read GetReplicaModifications write SetReplicaModifications;
    property KeepReplicaModifications: Boolean read GetKeepReplicaModifications write SetKeepReplicaModifications;
    property SseKmsEncryptedObjects: TSseKmsEncryptedObjects read GetSseKmsEncryptedObjects write SetSseKmsEncryptedObjects;
    property KeepSseKmsEncryptedObjects: Boolean read GetKeepSseKmsEncryptedObjects write SetKeepSseKmsEncryptedObjects;
  end;
  
  TSourceSelectionCriteria = class
  strict private
    FReplicaModifications: TReplicaModifications;
    FKeepReplicaModifications: Boolean;
    FSseKmsEncryptedObjects: TSseKmsEncryptedObjects;
    FKeepSseKmsEncryptedObjects: Boolean;
    function GetReplicaModifications: TReplicaModifications;
    procedure SetReplicaModifications(const Value: TReplicaModifications);
    function GetKeepReplicaModifications: Boolean;
    procedure SetKeepReplicaModifications(const Value: Boolean);
    function GetSseKmsEncryptedObjects: TSseKmsEncryptedObjects;
    procedure SetSseKmsEncryptedObjects(const Value: TSseKmsEncryptedObjects);
    function GetKeepSseKmsEncryptedObjects: Boolean;
    procedure SetKeepSseKmsEncryptedObjects(const Value: Boolean);
  strict protected
    function Obj: TSourceSelectionCriteria;
  public
    destructor Destroy; override;
    function IsSetReplicaModifications: Boolean;
    function IsSetSseKmsEncryptedObjects: Boolean;
    property ReplicaModifications: TReplicaModifications read GetReplicaModifications write SetReplicaModifications;
    property KeepReplicaModifications: Boolean read GetKeepReplicaModifications write SetKeepReplicaModifications;
    property SseKmsEncryptedObjects: TSseKmsEncryptedObjects read GetSseKmsEncryptedObjects write SetSseKmsEncryptedObjects;
    property KeepSseKmsEncryptedObjects: Boolean read GetKeepSseKmsEncryptedObjects write SetKeepSseKmsEncryptedObjects;
  end;
  
implementation

{ TSourceSelectionCriteria }

destructor TSourceSelectionCriteria.Destroy;
begin
  SseKmsEncryptedObjects := nil;
  ReplicaModifications := nil;
  inherited;
end;

function TSourceSelectionCriteria.Obj: TSourceSelectionCriteria;
begin
  Result := Self;
end;

function TSourceSelectionCriteria.GetReplicaModifications: TReplicaModifications;
begin
  Result := FReplicaModifications;
end;

procedure TSourceSelectionCriteria.SetReplicaModifications(const Value: TReplicaModifications);
begin
  if FReplicaModifications <> Value then
  begin
    if not KeepReplicaModifications then
      FReplicaModifications.Free;
    FReplicaModifications := Value;
  end;
end;

function TSourceSelectionCriteria.GetKeepReplicaModifications: Boolean;
begin
  Result := FKeepReplicaModifications;
end;

procedure TSourceSelectionCriteria.SetKeepReplicaModifications(const Value: Boolean);
begin
  FKeepReplicaModifications := Value;
end;

function TSourceSelectionCriteria.IsSetReplicaModifications: Boolean;
begin
  Result := FReplicaModifications <> nil;
end;

function TSourceSelectionCriteria.GetSseKmsEncryptedObjects: TSseKmsEncryptedObjects;
begin
  Result := FSseKmsEncryptedObjects;
end;

procedure TSourceSelectionCriteria.SetSseKmsEncryptedObjects(const Value: TSseKmsEncryptedObjects);
begin
  if FSseKmsEncryptedObjects <> Value then
  begin
    if not KeepSseKmsEncryptedObjects then
      FSseKmsEncryptedObjects.Free;
    FSseKmsEncryptedObjects := Value;
  end;
end;

function TSourceSelectionCriteria.GetKeepSseKmsEncryptedObjects: Boolean;
begin
  Result := FKeepSseKmsEncryptedObjects;
end;

procedure TSourceSelectionCriteria.SetKeepSseKmsEncryptedObjects(const Value: Boolean);
begin
  FKeepSseKmsEncryptedObjects := Value;
end;

function TSourceSelectionCriteria.IsSetSseKmsEncryptedObjects: Boolean;
begin
  Result := FSseKmsEncryptedObjects <> nil;
end;

end.
