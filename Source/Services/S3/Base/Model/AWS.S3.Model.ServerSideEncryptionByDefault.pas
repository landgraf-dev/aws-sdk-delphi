unit AWS.S3.Model.ServerSideEncryptionByDefault;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TServerSideEncryptionByDefault = class;
  
  IServerSideEncryptionByDefault = interface
    function GetKMSMasterKeyID: string;
    procedure SetKMSMasterKeyID(const Value: string);
    function GetSSEAlgorithm: TServerSideEncryption;
    procedure SetSSEAlgorithm(const Value: TServerSideEncryption);
    function Obj: TServerSideEncryptionByDefault;
    function IsSetKMSMasterKeyID: Boolean;
    function IsSetSSEAlgorithm: Boolean;
    property KMSMasterKeyID: string read GetKMSMasterKeyID write SetKMSMasterKeyID;
    property SSEAlgorithm: TServerSideEncryption read GetSSEAlgorithm write SetSSEAlgorithm;
  end;
  
  TServerSideEncryptionByDefault = class
  strict private
    FKMSMasterKeyID: Nullable<string>;
    FSSEAlgorithm: Nullable<TServerSideEncryption>;
    function GetKMSMasterKeyID: string;
    procedure SetKMSMasterKeyID(const Value: string);
    function GetSSEAlgorithm: TServerSideEncryption;
    procedure SetSSEAlgorithm(const Value: TServerSideEncryption);
  strict protected
    function Obj: TServerSideEncryptionByDefault;
  public
    function IsSetKMSMasterKeyID: Boolean;
    function IsSetSSEAlgorithm: Boolean;
    property KMSMasterKeyID: string read GetKMSMasterKeyID write SetKMSMasterKeyID;
    property SSEAlgorithm: TServerSideEncryption read GetSSEAlgorithm write SetSSEAlgorithm;
  end;
  
implementation

{ TServerSideEncryptionByDefault }

function TServerSideEncryptionByDefault.Obj: TServerSideEncryptionByDefault;
begin
  Result := Self;
end;

function TServerSideEncryptionByDefault.GetKMSMasterKeyID: string;
begin
  Result := FKMSMasterKeyID.ValueOrDefault;
end;

procedure TServerSideEncryptionByDefault.SetKMSMasterKeyID(const Value: string);
begin
  FKMSMasterKeyID := Value;
end;

function TServerSideEncryptionByDefault.IsSetKMSMasterKeyID: Boolean;
begin
  Result := FKMSMasterKeyID.HasValue;
end;

function TServerSideEncryptionByDefault.GetSSEAlgorithm: TServerSideEncryption;
begin
  Result := FSSEAlgorithm.ValueOrDefault;
end;

procedure TServerSideEncryptionByDefault.SetSSEAlgorithm(const Value: TServerSideEncryption);
begin
  FSSEAlgorithm := Value;
end;

function TServerSideEncryptionByDefault.IsSetSSEAlgorithm: Boolean;
begin
  Result := FSSEAlgorithm.HasValue;
end;

end.
