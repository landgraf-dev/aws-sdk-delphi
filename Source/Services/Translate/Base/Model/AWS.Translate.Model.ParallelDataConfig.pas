unit AWS.Translate.Model.ParallelDataConfig;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Translate.Enums;

type
  TParallelDataConfig = class;
  
  IParallelDataConfig = interface
    function GetFormat: TParallelDataFormat;
    procedure SetFormat(const Value: TParallelDataFormat);
    function GetS3Uri: string;
    procedure SetS3Uri(const Value: string);
    function Obj: TParallelDataConfig;
    function IsSetFormat: Boolean;
    function IsSetS3Uri: Boolean;
    property Format: TParallelDataFormat read GetFormat write SetFormat;
    property S3Uri: string read GetS3Uri write SetS3Uri;
  end;
  
  TParallelDataConfig = class
  strict private
    FFormat: Nullable<TParallelDataFormat>;
    FS3Uri: Nullable<string>;
    function GetFormat: TParallelDataFormat;
    procedure SetFormat(const Value: TParallelDataFormat);
    function GetS3Uri: string;
    procedure SetS3Uri(const Value: string);
  strict protected
    function Obj: TParallelDataConfig;
  public
    function IsSetFormat: Boolean;
    function IsSetS3Uri: Boolean;
    property Format: TParallelDataFormat read GetFormat write SetFormat;
    property S3Uri: string read GetS3Uri write SetS3Uri;
  end;
  
implementation

{ TParallelDataConfig }

function TParallelDataConfig.Obj: TParallelDataConfig;
begin
  Result := Self;
end;

function TParallelDataConfig.GetFormat: TParallelDataFormat;
begin
  Result := FFormat.ValueOrDefault;
end;

procedure TParallelDataConfig.SetFormat(const Value: TParallelDataFormat);
begin
  FFormat := Value;
end;

function TParallelDataConfig.IsSetFormat: Boolean;
begin
  Result := FFormat.HasValue;
end;

function TParallelDataConfig.GetS3Uri: string;
begin
  Result := FS3Uri.ValueOrDefault;
end;

procedure TParallelDataConfig.SetS3Uri(const Value: string);
begin
  FS3Uri := Value;
end;

function TParallelDataConfig.IsSetS3Uri: Boolean;
begin
  Result := FS3Uri.HasValue;
end;

end.
