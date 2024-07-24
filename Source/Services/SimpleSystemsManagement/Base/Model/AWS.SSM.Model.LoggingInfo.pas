unit AWS.SSM.Model.LoggingInfo;

interface

uses
  AWS.Nullable;

type
  TLoggingInfo = class;
  
  ILoggingInfo = interface
    function GetS3BucketName: string;
    procedure SetS3BucketName(const Value: string);
    function GetS3KeyPrefix: string;
    procedure SetS3KeyPrefix(const Value: string);
    function GetS3Region: string;
    procedure SetS3Region(const Value: string);
    function Obj: TLoggingInfo;
    function IsSetS3BucketName: Boolean;
    function IsSetS3KeyPrefix: Boolean;
    function IsSetS3Region: Boolean;
    property S3BucketName: string read GetS3BucketName write SetS3BucketName;
    property S3KeyPrefix: string read GetS3KeyPrefix write SetS3KeyPrefix;
    property S3Region: string read GetS3Region write SetS3Region;
  end;
  
  TLoggingInfo = class
  strict private
    FS3BucketName: Nullable<string>;
    FS3KeyPrefix: Nullable<string>;
    FS3Region: Nullable<string>;
    function GetS3BucketName: string;
    procedure SetS3BucketName(const Value: string);
    function GetS3KeyPrefix: string;
    procedure SetS3KeyPrefix(const Value: string);
    function GetS3Region: string;
    procedure SetS3Region(const Value: string);
  strict protected
    function Obj: TLoggingInfo;
  public
    function IsSetS3BucketName: Boolean;
    function IsSetS3KeyPrefix: Boolean;
    function IsSetS3Region: Boolean;
    property S3BucketName: string read GetS3BucketName write SetS3BucketName;
    property S3KeyPrefix: string read GetS3KeyPrefix write SetS3KeyPrefix;
    property S3Region: string read GetS3Region write SetS3Region;
  end;
  
implementation

{ TLoggingInfo }

function TLoggingInfo.Obj: TLoggingInfo;
begin
  Result := Self;
end;

function TLoggingInfo.GetS3BucketName: string;
begin
  Result := FS3BucketName.ValueOrDefault;
end;

procedure TLoggingInfo.SetS3BucketName(const Value: string);
begin
  FS3BucketName := Value;
end;

function TLoggingInfo.IsSetS3BucketName: Boolean;
begin
  Result := FS3BucketName.HasValue;
end;

function TLoggingInfo.GetS3KeyPrefix: string;
begin
  Result := FS3KeyPrefix.ValueOrDefault;
end;

procedure TLoggingInfo.SetS3KeyPrefix(const Value: string);
begin
  FS3KeyPrefix := Value;
end;

function TLoggingInfo.IsSetS3KeyPrefix: Boolean;
begin
  Result := FS3KeyPrefix.HasValue;
end;

function TLoggingInfo.GetS3Region: string;
begin
  Result := FS3Region.ValueOrDefault;
end;

procedure TLoggingInfo.SetS3Region(const Value: string);
begin
  FS3Region := Value;
end;

function TLoggingInfo.IsSetS3Region: Boolean;
begin
  Result := FS3Region.HasValue;
end;

end.
