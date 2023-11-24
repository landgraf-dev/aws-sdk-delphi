unit AWS.S3.Model.Destination;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.AccessControlTranslation, 
  AWS.S3.Model.EncryptionConfiguration, 
  AWS.S3.Model.Metrics, 
  AWS.S3.Model.ReplicationTime, 
  AWS.S3.Enums;

type
  TDestination = class;
  
  IDestination = interface
    function GetAccessControlTranslation: TAccessControlTranslation;
    procedure SetAccessControlTranslation(const Value: TAccessControlTranslation);
    function GetKeepAccessControlTranslation: Boolean;
    procedure SetKeepAccessControlTranslation(const Value: Boolean);
    function GetAccount: string;
    procedure SetAccount(const Value: string);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetEncryptionConfiguration: TEncryptionConfiguration;
    procedure SetEncryptionConfiguration(const Value: TEncryptionConfiguration);
    function GetKeepEncryptionConfiguration: Boolean;
    procedure SetKeepEncryptionConfiguration(const Value: Boolean);
    function GetMetrics: TMetrics;
    procedure SetMetrics(const Value: TMetrics);
    function GetKeepMetrics: Boolean;
    procedure SetKeepMetrics(const Value: Boolean);
    function GetReplicationTime: TReplicationTime;
    procedure SetReplicationTime(const Value: TReplicationTime);
    function GetKeepReplicationTime: Boolean;
    procedure SetKeepReplicationTime(const Value: Boolean);
    function GetStorageClass: TStorageClass;
    procedure SetStorageClass(const Value: TStorageClass);
    function Obj: TDestination;
    function IsSetAccessControlTranslation: Boolean;
    function IsSetAccount: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetEncryptionConfiguration: Boolean;
    function IsSetMetrics: Boolean;
    function IsSetReplicationTime: Boolean;
    function IsSetStorageClass: Boolean;
    property AccessControlTranslation: TAccessControlTranslation read GetAccessControlTranslation write SetAccessControlTranslation;
    property KeepAccessControlTranslation: Boolean read GetKeepAccessControlTranslation write SetKeepAccessControlTranslation;
    property Account: string read GetAccount write SetAccount;
    property BucketName: string read GetBucketName write SetBucketName;
    property EncryptionConfiguration: TEncryptionConfiguration read GetEncryptionConfiguration write SetEncryptionConfiguration;
    property KeepEncryptionConfiguration: Boolean read GetKeepEncryptionConfiguration write SetKeepEncryptionConfiguration;
    property Metrics: TMetrics read GetMetrics write SetMetrics;
    property KeepMetrics: Boolean read GetKeepMetrics write SetKeepMetrics;
    property ReplicationTime: TReplicationTime read GetReplicationTime write SetReplicationTime;
    property KeepReplicationTime: Boolean read GetKeepReplicationTime write SetKeepReplicationTime;
    property StorageClass: TStorageClass read GetStorageClass write SetStorageClass;
  end;
  
  TDestination = class
  strict private
    FAccessControlTranslation: TAccessControlTranslation;
    FKeepAccessControlTranslation: Boolean;
    FAccount: Nullable<string>;
    FBucketName: Nullable<string>;
    FEncryptionConfiguration: TEncryptionConfiguration;
    FKeepEncryptionConfiguration: Boolean;
    FMetrics: TMetrics;
    FKeepMetrics: Boolean;
    FReplicationTime: TReplicationTime;
    FKeepReplicationTime: Boolean;
    FStorageClass: Nullable<TStorageClass>;
    function GetAccessControlTranslation: TAccessControlTranslation;
    procedure SetAccessControlTranslation(const Value: TAccessControlTranslation);
    function GetKeepAccessControlTranslation: Boolean;
    procedure SetKeepAccessControlTranslation(const Value: Boolean);
    function GetAccount: string;
    procedure SetAccount(const Value: string);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetEncryptionConfiguration: TEncryptionConfiguration;
    procedure SetEncryptionConfiguration(const Value: TEncryptionConfiguration);
    function GetKeepEncryptionConfiguration: Boolean;
    procedure SetKeepEncryptionConfiguration(const Value: Boolean);
    function GetMetrics: TMetrics;
    procedure SetMetrics(const Value: TMetrics);
    function GetKeepMetrics: Boolean;
    procedure SetKeepMetrics(const Value: Boolean);
    function GetReplicationTime: TReplicationTime;
    procedure SetReplicationTime(const Value: TReplicationTime);
    function GetKeepReplicationTime: Boolean;
    procedure SetKeepReplicationTime(const Value: Boolean);
    function GetStorageClass: TStorageClass;
    procedure SetStorageClass(const Value: TStorageClass);
  strict protected
    function Obj: TDestination;
  public
    destructor Destroy; override;
    function IsSetAccessControlTranslation: Boolean;
    function IsSetAccount: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetEncryptionConfiguration: Boolean;
    function IsSetMetrics: Boolean;
    function IsSetReplicationTime: Boolean;
    function IsSetStorageClass: Boolean;
    property AccessControlTranslation: TAccessControlTranslation read GetAccessControlTranslation write SetAccessControlTranslation;
    property KeepAccessControlTranslation: Boolean read GetKeepAccessControlTranslation write SetKeepAccessControlTranslation;
    property Account: string read GetAccount write SetAccount;
    property BucketName: string read GetBucketName write SetBucketName;
    property EncryptionConfiguration: TEncryptionConfiguration read GetEncryptionConfiguration write SetEncryptionConfiguration;
    property KeepEncryptionConfiguration: Boolean read GetKeepEncryptionConfiguration write SetKeepEncryptionConfiguration;
    property Metrics: TMetrics read GetMetrics write SetMetrics;
    property KeepMetrics: Boolean read GetKeepMetrics write SetKeepMetrics;
    property ReplicationTime: TReplicationTime read GetReplicationTime write SetReplicationTime;
    property KeepReplicationTime: Boolean read GetKeepReplicationTime write SetKeepReplicationTime;
    property StorageClass: TStorageClass read GetStorageClass write SetStorageClass;
  end;
  
implementation

{ TDestination }

destructor TDestination.Destroy;
begin
  ReplicationTime := nil;
  Metrics := nil;
  EncryptionConfiguration := nil;
  AccessControlTranslation := nil;
  inherited;
end;

function TDestination.Obj: TDestination;
begin
  Result := Self;
end;

function TDestination.GetAccessControlTranslation: TAccessControlTranslation;
begin
  Result := FAccessControlTranslation;
end;

procedure TDestination.SetAccessControlTranslation(const Value: TAccessControlTranslation);
begin
  if FAccessControlTranslation <> Value then
  begin
    if not KeepAccessControlTranslation then
      FAccessControlTranslation.Free;
    FAccessControlTranslation := Value;
  end;
end;

function TDestination.GetKeepAccessControlTranslation: Boolean;
begin
  Result := FKeepAccessControlTranslation;
end;

procedure TDestination.SetKeepAccessControlTranslation(const Value: Boolean);
begin
  FKeepAccessControlTranslation := Value;
end;

function TDestination.IsSetAccessControlTranslation: Boolean;
begin
  Result := FAccessControlTranslation <> nil;
end;

function TDestination.GetAccount: string;
begin
  Result := FAccount.ValueOrDefault;
end;

procedure TDestination.SetAccount(const Value: string);
begin
  FAccount := Value;
end;

function TDestination.IsSetAccount: Boolean;
begin
  Result := FAccount.HasValue;
end;

function TDestination.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TDestination.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TDestination.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TDestination.GetEncryptionConfiguration: TEncryptionConfiguration;
begin
  Result := FEncryptionConfiguration;
end;

procedure TDestination.SetEncryptionConfiguration(const Value: TEncryptionConfiguration);
begin
  if FEncryptionConfiguration <> Value then
  begin
    if not KeepEncryptionConfiguration then
      FEncryptionConfiguration.Free;
    FEncryptionConfiguration := Value;
  end;
end;

function TDestination.GetKeepEncryptionConfiguration: Boolean;
begin
  Result := FKeepEncryptionConfiguration;
end;

procedure TDestination.SetKeepEncryptionConfiguration(const Value: Boolean);
begin
  FKeepEncryptionConfiguration := Value;
end;

function TDestination.IsSetEncryptionConfiguration: Boolean;
begin
  Result := FEncryptionConfiguration <> nil;
end;

function TDestination.GetMetrics: TMetrics;
begin
  Result := FMetrics;
end;

procedure TDestination.SetMetrics(const Value: TMetrics);
begin
  if FMetrics <> Value then
  begin
    if not KeepMetrics then
      FMetrics.Free;
    FMetrics := Value;
  end;
end;

function TDestination.GetKeepMetrics: Boolean;
begin
  Result := FKeepMetrics;
end;

procedure TDestination.SetKeepMetrics(const Value: Boolean);
begin
  FKeepMetrics := Value;
end;

function TDestination.IsSetMetrics: Boolean;
begin
  Result := FMetrics <> nil;
end;

function TDestination.GetReplicationTime: TReplicationTime;
begin
  Result := FReplicationTime;
end;

procedure TDestination.SetReplicationTime(const Value: TReplicationTime);
begin
  if FReplicationTime <> Value then
  begin
    if not KeepReplicationTime then
      FReplicationTime.Free;
    FReplicationTime := Value;
  end;
end;

function TDestination.GetKeepReplicationTime: Boolean;
begin
  Result := FKeepReplicationTime;
end;

procedure TDestination.SetKeepReplicationTime(const Value: Boolean);
begin
  FKeepReplicationTime := Value;
end;

function TDestination.IsSetReplicationTime: Boolean;
begin
  Result := FReplicationTime <> nil;
end;

function TDestination.GetStorageClass: TStorageClass;
begin
  Result := FStorageClass.ValueOrDefault;
end;

procedure TDestination.SetStorageClass(const Value: TStorageClass);
begin
  FStorageClass := Value;
end;

function TDestination.IsSetStorageClass: Boolean;
begin
  Result := FStorageClass.HasValue;
end;

end.
