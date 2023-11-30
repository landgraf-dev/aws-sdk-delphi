unit AWS.Textract.Model.OutputConfig;

interface

uses
  AWS.Nullable;

type
  TOutputConfig = class;
  
  IOutputConfig = interface
    function GetS3Bucket: string;
    procedure SetS3Bucket(const Value: string);
    function GetS3Prefix: string;
    procedure SetS3Prefix(const Value: string);
    function Obj: TOutputConfig;
    function IsSetS3Bucket: Boolean;
    function IsSetS3Prefix: Boolean;
    property S3Bucket: string read GetS3Bucket write SetS3Bucket;
    property S3Prefix: string read GetS3Prefix write SetS3Prefix;
  end;
  
  TOutputConfig = class
  strict private
    FS3Bucket: Nullable<string>;
    FS3Prefix: Nullable<string>;
    function GetS3Bucket: string;
    procedure SetS3Bucket(const Value: string);
    function GetS3Prefix: string;
    procedure SetS3Prefix(const Value: string);
  strict protected
    function Obj: TOutputConfig;
  public
    function IsSetS3Bucket: Boolean;
    function IsSetS3Prefix: Boolean;
    property S3Bucket: string read GetS3Bucket write SetS3Bucket;
    property S3Prefix: string read GetS3Prefix write SetS3Prefix;
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

function TOutputConfig.GetS3Prefix: string;
begin
  Result := FS3Prefix.ValueOrDefault;
end;

procedure TOutputConfig.SetS3Prefix(const Value: string);
begin
  FS3Prefix := Value;
end;

function TOutputConfig.IsSetS3Prefix: Boolean;
begin
  Result := FS3Prefix.HasValue;
end;

end.
