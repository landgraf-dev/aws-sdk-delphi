unit AWS.S3Control.Model.S3BucketDestination;

interface

uses
  AWS.Nullable, 
  AWS.S3Control.Model.StorageLensDataExportEncryption, 
  AWS.S3Control.Enums;

type
  TS3BucketDestination = class;
  
  IS3BucketDestination = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetArn: string;
    procedure SetArn(const Value: string);
    function GetEncryption: TStorageLensDataExportEncryption;
    procedure SetEncryption(const Value: TStorageLensDataExportEncryption);
    function GetKeepEncryption: Boolean;
    procedure SetKeepEncryption(const Value: Boolean);
    function GetFormat: TFormat;
    procedure SetFormat(const Value: TFormat);
    function GetOutputSchemaVersion: TOutputSchemaVersion;
    procedure SetOutputSchemaVersion(const Value: TOutputSchemaVersion);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function Obj: TS3BucketDestination;
    function IsSetAccountId: Boolean;
    function IsSetArn: Boolean;
    function IsSetEncryption: Boolean;
    function IsSetFormat: Boolean;
    function IsSetOutputSchemaVersion: Boolean;
    function IsSetPrefix: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Arn: string read GetArn write SetArn;
    property Encryption: TStorageLensDataExportEncryption read GetEncryption write SetEncryption;
    property KeepEncryption: Boolean read GetKeepEncryption write SetKeepEncryption;
    property Format: TFormat read GetFormat write SetFormat;
    property OutputSchemaVersion: TOutputSchemaVersion read GetOutputSchemaVersion write SetOutputSchemaVersion;
    property Prefix: string read GetPrefix write SetPrefix;
  end;
  
  TS3BucketDestination = class
  strict private
    FAccountId: Nullable<string>;
    FArn: Nullable<string>;
    FEncryption: TStorageLensDataExportEncryption;
    FKeepEncryption: Boolean;
    FFormat: Nullable<TFormat>;
    FOutputSchemaVersion: Nullable<TOutputSchemaVersion>;
    FPrefix: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetArn: string;
    procedure SetArn(const Value: string);
    function GetEncryption: TStorageLensDataExportEncryption;
    procedure SetEncryption(const Value: TStorageLensDataExportEncryption);
    function GetKeepEncryption: Boolean;
    procedure SetKeepEncryption(const Value: Boolean);
    function GetFormat: TFormat;
    procedure SetFormat(const Value: TFormat);
    function GetOutputSchemaVersion: TOutputSchemaVersion;
    procedure SetOutputSchemaVersion(const Value: TOutputSchemaVersion);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
  strict protected
    function Obj: TS3BucketDestination;
  public
    destructor Destroy; override;
    function IsSetAccountId: Boolean;
    function IsSetArn: Boolean;
    function IsSetEncryption: Boolean;
    function IsSetFormat: Boolean;
    function IsSetOutputSchemaVersion: Boolean;
    function IsSetPrefix: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Arn: string read GetArn write SetArn;
    property Encryption: TStorageLensDataExportEncryption read GetEncryption write SetEncryption;
    property KeepEncryption: Boolean read GetKeepEncryption write SetKeepEncryption;
    property Format: TFormat read GetFormat write SetFormat;
    property OutputSchemaVersion: TOutputSchemaVersion read GetOutputSchemaVersion write SetOutputSchemaVersion;
    property Prefix: string read GetPrefix write SetPrefix;
  end;
  
implementation

{ TS3BucketDestination }

destructor TS3BucketDestination.Destroy;
begin
  Encryption := nil;
  inherited;
end;

function TS3BucketDestination.Obj: TS3BucketDestination;
begin
  Result := Self;
end;

function TS3BucketDestination.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TS3BucketDestination.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TS3BucketDestination.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TS3BucketDestination.GetArn: string;
begin
  Result := FArn.ValueOrDefault;
end;

procedure TS3BucketDestination.SetArn(const Value: string);
begin
  FArn := Value;
end;

function TS3BucketDestination.IsSetArn: Boolean;
begin
  Result := FArn.HasValue;
end;

function TS3BucketDestination.GetEncryption: TStorageLensDataExportEncryption;
begin
  Result := FEncryption;
end;

procedure TS3BucketDestination.SetEncryption(const Value: TStorageLensDataExportEncryption);
begin
  if FEncryption <> Value then
  begin
    if not KeepEncryption then
      FEncryption.Free;
    FEncryption := Value;
  end;
end;

function TS3BucketDestination.GetKeepEncryption: Boolean;
begin
  Result := FKeepEncryption;
end;

procedure TS3BucketDestination.SetKeepEncryption(const Value: Boolean);
begin
  FKeepEncryption := Value;
end;

function TS3BucketDestination.IsSetEncryption: Boolean;
begin
  Result := FEncryption <> nil;
end;

function TS3BucketDestination.GetFormat: TFormat;
begin
  Result := FFormat.ValueOrDefault;
end;

procedure TS3BucketDestination.SetFormat(const Value: TFormat);
begin
  FFormat := Value;
end;

function TS3BucketDestination.IsSetFormat: Boolean;
begin
  Result := FFormat.HasValue;
end;

function TS3BucketDestination.GetOutputSchemaVersion: TOutputSchemaVersion;
begin
  Result := FOutputSchemaVersion.ValueOrDefault;
end;

procedure TS3BucketDestination.SetOutputSchemaVersion(const Value: TOutputSchemaVersion);
begin
  FOutputSchemaVersion := Value;
end;

function TS3BucketDestination.IsSetOutputSchemaVersion: Boolean;
begin
  Result := FOutputSchemaVersion.HasValue;
end;

function TS3BucketDestination.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TS3BucketDestination.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TS3BucketDestination.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

end.
