unit AWS.S3.Model.InventoryS3BucketDestination;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.InventoryEncryption, 
  AWS.S3.Enums;

type
  TInventoryS3BucketDestination = class;
  
  IInventoryS3BucketDestination = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetEncryption: TInventoryEncryption;
    procedure SetEncryption(const Value: TInventoryEncryption);
    function GetKeepEncryption: Boolean;
    procedure SetKeepEncryption(const Value: Boolean);
    function GetFormat: TInventoryFormat;
    procedure SetFormat(const Value: TInventoryFormat);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function Obj: TInventoryS3BucketDestination;
    function IsSetAccountId: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetEncryption: Boolean;
    function IsSetFormat: Boolean;
    function IsSetPrefix: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property BucketName: string read GetBucketName write SetBucketName;
    property Encryption: TInventoryEncryption read GetEncryption write SetEncryption;
    property KeepEncryption: Boolean read GetKeepEncryption write SetKeepEncryption;
    property Format: TInventoryFormat read GetFormat write SetFormat;
    property Prefix: string read GetPrefix write SetPrefix;
  end;
  
  TInventoryS3BucketDestination = class
  strict private
    FAccountId: Nullable<string>;
    FBucketName: Nullable<string>;
    FEncryption: TInventoryEncryption;
    FKeepEncryption: Boolean;
    FFormat: Nullable<TInventoryFormat>;
    FPrefix: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetEncryption: TInventoryEncryption;
    procedure SetEncryption(const Value: TInventoryEncryption);
    function GetKeepEncryption: Boolean;
    procedure SetKeepEncryption(const Value: Boolean);
    function GetFormat: TInventoryFormat;
    procedure SetFormat(const Value: TInventoryFormat);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
  strict protected
    function Obj: TInventoryS3BucketDestination;
  public
    destructor Destroy; override;
    function IsSetAccountId: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetEncryption: Boolean;
    function IsSetFormat: Boolean;
    function IsSetPrefix: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property BucketName: string read GetBucketName write SetBucketName;
    property Encryption: TInventoryEncryption read GetEncryption write SetEncryption;
    property KeepEncryption: Boolean read GetKeepEncryption write SetKeepEncryption;
    property Format: TInventoryFormat read GetFormat write SetFormat;
    property Prefix: string read GetPrefix write SetPrefix;
  end;
  
implementation

{ TInventoryS3BucketDestination }

destructor TInventoryS3BucketDestination.Destroy;
begin
  Encryption := nil;
  inherited;
end;

function TInventoryS3BucketDestination.Obj: TInventoryS3BucketDestination;
begin
  Result := Self;
end;

function TInventoryS3BucketDestination.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TInventoryS3BucketDestination.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TInventoryS3BucketDestination.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TInventoryS3BucketDestination.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TInventoryS3BucketDestination.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TInventoryS3BucketDestination.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TInventoryS3BucketDestination.GetEncryption: TInventoryEncryption;
begin
  Result := FEncryption;
end;

procedure TInventoryS3BucketDestination.SetEncryption(const Value: TInventoryEncryption);
begin
  if FEncryption <> Value then
  begin
    if not KeepEncryption then
      FEncryption.Free;
    FEncryption := Value;
  end;
end;

function TInventoryS3BucketDestination.GetKeepEncryption: Boolean;
begin
  Result := FKeepEncryption;
end;

procedure TInventoryS3BucketDestination.SetKeepEncryption(const Value: Boolean);
begin
  FKeepEncryption := Value;
end;

function TInventoryS3BucketDestination.IsSetEncryption: Boolean;
begin
  Result := FEncryption <> nil;
end;

function TInventoryS3BucketDestination.GetFormat: TInventoryFormat;
begin
  Result := FFormat.ValueOrDefault;
end;

procedure TInventoryS3BucketDestination.SetFormat(const Value: TInventoryFormat);
begin
  FFormat := Value;
end;

function TInventoryS3BucketDestination.IsSetFormat: Boolean;
begin
  Result := FFormat.HasValue;
end;

function TInventoryS3BucketDestination.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TInventoryS3BucketDestination.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TInventoryS3BucketDestination.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

end.
