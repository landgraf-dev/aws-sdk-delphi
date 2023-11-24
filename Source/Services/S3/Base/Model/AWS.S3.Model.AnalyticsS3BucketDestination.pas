unit AWS.S3.Model.AnalyticsS3BucketDestination;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TAnalyticsS3BucketDestination = class;
  
  IAnalyticsS3BucketDestination = interface
    function GetBucketAccountId: string;
    procedure SetBucketAccountId(const Value: string);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetFormat: TAnalyticsS3ExportFileFormat;
    procedure SetFormat(const Value: TAnalyticsS3ExportFileFormat);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function Obj: TAnalyticsS3BucketDestination;
    function IsSetBucketAccountId: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetFormat: Boolean;
    function IsSetPrefix: Boolean;
    property BucketAccountId: string read GetBucketAccountId write SetBucketAccountId;
    property BucketName: string read GetBucketName write SetBucketName;
    property Format: TAnalyticsS3ExportFileFormat read GetFormat write SetFormat;
    property Prefix: string read GetPrefix write SetPrefix;
  end;
  
  TAnalyticsS3BucketDestination = class
  strict private
    FBucketAccountId: Nullable<string>;
    FBucketName: Nullable<string>;
    FFormat: Nullable<TAnalyticsS3ExportFileFormat>;
    FPrefix: Nullable<string>;
    function GetBucketAccountId: string;
    procedure SetBucketAccountId(const Value: string);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetFormat: TAnalyticsS3ExportFileFormat;
    procedure SetFormat(const Value: TAnalyticsS3ExportFileFormat);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
  strict protected
    function Obj: TAnalyticsS3BucketDestination;
  public
    function IsSetBucketAccountId: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetFormat: Boolean;
    function IsSetPrefix: Boolean;
    property BucketAccountId: string read GetBucketAccountId write SetBucketAccountId;
    property BucketName: string read GetBucketName write SetBucketName;
    property Format: TAnalyticsS3ExportFileFormat read GetFormat write SetFormat;
    property Prefix: string read GetPrefix write SetPrefix;
  end;
  
implementation

{ TAnalyticsS3BucketDestination }

function TAnalyticsS3BucketDestination.Obj: TAnalyticsS3BucketDestination;
begin
  Result := Self;
end;

function TAnalyticsS3BucketDestination.GetBucketAccountId: string;
begin
  Result := FBucketAccountId.ValueOrDefault;
end;

procedure TAnalyticsS3BucketDestination.SetBucketAccountId(const Value: string);
begin
  FBucketAccountId := Value;
end;

function TAnalyticsS3BucketDestination.IsSetBucketAccountId: Boolean;
begin
  Result := FBucketAccountId.HasValue;
end;

function TAnalyticsS3BucketDestination.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TAnalyticsS3BucketDestination.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TAnalyticsS3BucketDestination.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TAnalyticsS3BucketDestination.GetFormat: TAnalyticsS3ExportFileFormat;
begin
  Result := FFormat.ValueOrDefault;
end;

procedure TAnalyticsS3BucketDestination.SetFormat(const Value: TAnalyticsS3ExportFileFormat);
begin
  FFormat := Value;
end;

function TAnalyticsS3BucketDestination.IsSetFormat: Boolean;
begin
  Result := FFormat.HasValue;
end;

function TAnalyticsS3BucketDestination.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TAnalyticsS3BucketDestination.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TAnalyticsS3BucketDestination.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

end.
