unit AWS.S3.Model.SseKmsEncryptedObjects;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TSseKmsEncryptedObjects = class;
  
  ISseKmsEncryptedObjects = interface
    function GetStatus: TSseKmsEncryptedObjectsStatus;
    procedure SetStatus(const Value: TSseKmsEncryptedObjectsStatus);
    function Obj: TSseKmsEncryptedObjects;
    function IsSetStatus: Boolean;
    property Status: TSseKmsEncryptedObjectsStatus read GetStatus write SetStatus;
  end;
  
  TSseKmsEncryptedObjects = class
  strict private
    FStatus: Nullable<TSseKmsEncryptedObjectsStatus>;
    function GetStatus: TSseKmsEncryptedObjectsStatus;
    procedure SetStatus(const Value: TSseKmsEncryptedObjectsStatus);
  strict protected
    function Obj: TSseKmsEncryptedObjects;
  public
    function IsSetStatus: Boolean;
    property Status: TSseKmsEncryptedObjectsStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TSseKmsEncryptedObjects }

function TSseKmsEncryptedObjects.Obj: TSseKmsEncryptedObjects;
begin
  Result := Self;
end;

function TSseKmsEncryptedObjects.GetStatus: TSseKmsEncryptedObjectsStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TSseKmsEncryptedObjects.SetStatus(const Value: TSseKmsEncryptedObjectsStatus);
begin
  FStatus := Value;
end;

function TSseKmsEncryptedObjects.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
