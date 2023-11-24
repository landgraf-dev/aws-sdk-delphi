unit AWS.S3.Model.EncryptionConfiguration;

interface

uses
  Bcl.Types.Nullable;

type
  TEncryptionConfiguration = class;
  
  IEncryptionConfiguration = interface
    function GetReplicaKmsKeyID: string;
    procedure SetReplicaKmsKeyID(const Value: string);
    function Obj: TEncryptionConfiguration;
    function IsSetReplicaKmsKeyID: Boolean;
    property ReplicaKmsKeyID: string read GetReplicaKmsKeyID write SetReplicaKmsKeyID;
  end;
  
  TEncryptionConfiguration = class
  strict private
    FReplicaKmsKeyID: Nullable<string>;
    function GetReplicaKmsKeyID: string;
    procedure SetReplicaKmsKeyID(const Value: string);
  strict protected
    function Obj: TEncryptionConfiguration;
  public
    function IsSetReplicaKmsKeyID: Boolean;
    property ReplicaKmsKeyID: string read GetReplicaKmsKeyID write SetReplicaKmsKeyID;
  end;
  
implementation

{ TEncryptionConfiguration }

function TEncryptionConfiguration.Obj: TEncryptionConfiguration;
begin
  Result := Self;
end;

function TEncryptionConfiguration.GetReplicaKmsKeyID: string;
begin
  Result := FReplicaKmsKeyID.ValueOrDefault;
end;

procedure TEncryptionConfiguration.SetReplicaKmsKeyID(const Value: string);
begin
  FReplicaKmsKeyID := Value;
end;

function TEncryptionConfiguration.IsSetReplicaKmsKeyID: Boolean;
begin
  Result := FReplicaKmsKeyID.HasValue;
end;

end.
