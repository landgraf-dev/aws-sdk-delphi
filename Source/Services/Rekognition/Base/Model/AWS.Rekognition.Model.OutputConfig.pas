unit AWS.Rekognition.Model.OutputConfig;

interface

uses
  AWS.Nullable;

type
  TOutputConfig = class;
  
  IOutputConfig = interface
    function GetS3Bucket: string;
    procedure SetS3Bucket(const Value: string);
    function GetS3KeyPrefix: string;
    procedure SetS3KeyPrefix(const Value: string);
    function Obj: TOutputConfig;
    function IsSetS3Bucket: Boolean;
    function IsSetS3KeyPrefix: Boolean;
    property S3Bucket: string read GetS3Bucket write SetS3Bucket;
    property S3KeyPrefix: string read GetS3KeyPrefix write SetS3KeyPrefix;
  end;
  
  TOutputConfig = class
  strict private
    FS3Bucket: Nullable<string>;
    FS3KeyPrefix: Nullable<string>;
    function GetS3Bucket: string;
    procedure SetS3Bucket(const Value: string);
    function GetS3KeyPrefix: string;
    procedure SetS3KeyPrefix(const Value: string);
  strict protected
    function Obj: TOutputConfig;
  public
    function IsSetS3Bucket: Boolean;
    function IsSetS3KeyPrefix: Boolean;
    property S3Bucket: string read GetS3Bucket write SetS3Bucket;
    property S3KeyPrefix: string read GetS3KeyPrefix write SetS3KeyPrefix;
  end;
  
implementation

{ TOutputConfig }

function TOutputConfig.Obj: TOutputConfig;
begin
  Result := Self;
end;

function TOutputConfig.GetS3Bucket: string;
begin
  Result := FS3Bucket.ValueOrDefault;
end;

procedure TOutputConfig.SetS3Bucket(const Value: string);
begin
  FS3Bucket := Value;
end;

function TOutputConfig.IsSetS3Bucket: Boolean;
begin
  Result := FS3Bucket.HasValue;
end;

function TOutputConfig.GetS3KeyPrefix: string;
begin
  Result := FS3KeyPrefix.ValueOrDefault;
end;

procedure TOutputConfig.SetS3KeyPrefix(const Value: string);
begin
  FS3KeyPrefix := Value;
end;

function TOutputConfig.IsSetS3KeyPrefix: Boolean;
begin
  Result := FS3KeyPrefix.HasValue;
end;

end.
