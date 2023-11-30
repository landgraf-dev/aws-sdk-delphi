unit AWS.SESv2.Model.ImportDataSource;

interface

uses
  AWS.Nullable, 
  AWS.SESv2.Enums;

type
  TImportDataSource = class;
  
  IImportDataSource = interface
    function GetDataFormat: TDataFormat;
    procedure SetDataFormat(const Value: TDataFormat);
    function GetS3Url: string;
    procedure SetS3Url(const Value: string);
    function Obj: TImportDataSource;
    function IsSetDataFormat: Boolean;
    function IsSetS3Url: Boolean;
    property DataFormat: TDataFormat read GetDataFormat write SetDataFormat;
    property S3Url: string read GetS3Url write SetS3Url;
  end;
  
  TImportDataSource = class
  strict private
    FDataFormat: Nullable<TDataFormat>;
    FS3Url: Nullable<string>;
    function GetDataFormat: TDataFormat;
    procedure SetDataFormat(const Value: TDataFormat);
    function GetS3Url: string;
    procedure SetS3Url(const Value: string);
  strict protected
    function Obj: TImportDataSource;
  public
    function IsSetDataFormat: Boolean;
    function IsSetS3Url: Boolean;
    property DataFormat: TDataFormat read GetDataFormat write SetDataFormat;
    property S3Url: string read GetS3Url write SetS3Url;
  end;
  
implementation

{ TImportDataSource }

function TImportDataSource.Obj: TImportDataSource;
begin
  Result := Self;
end;

function TImportDataSource.GetDataFormat: TDataFormat;
begin
  Result := FDataFormat.ValueOrDefault;
end;

procedure TImportDataSource.SetDataFormat(const Value: TDataFormat);
begin
  FDataFormat := Value;
end;

function TImportDataSource.IsSetDataFormat: Boolean;
begin
  Result := FDataFormat.HasValue;
end;

function TImportDataSource.GetS3Url: string;
begin
  Result := FS3Url.ValueOrDefault;
end;

procedure TImportDataSource.SetS3Url(const Value: string);
begin
  FS3Url := Value;
end;

function TImportDataSource.IsSetS3Url: Boolean;
begin
  Result := FS3Url.HasValue;
end;

end.
