unit AWS.S3.Model.InputSerialization;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.CSVInput, 
  AWS.S3.Enums, 
  AWS.S3.Model.JSONInput, 
  AWS.S3.Model.ParquetInput;

type
  TInputSerialization = class;
  
  IInputSerialization = interface
    function GetCSV: TCSVInput;
    procedure SetCSV(const Value: TCSVInput);
    function GetKeepCSV: Boolean;
    procedure SetKeepCSV(const Value: Boolean);
    function GetCompressionType: TCompressionType;
    procedure SetCompressionType(const Value: TCompressionType);
    function GetJSON: TJSONInput;
    procedure SetJSON(const Value: TJSONInput);
    function GetKeepJSON: Boolean;
    procedure SetKeepJSON(const Value: Boolean);
    function GetParquet: TParquetInput;
    procedure SetParquet(const Value: TParquetInput);
    function GetKeepParquet: Boolean;
    procedure SetKeepParquet(const Value: Boolean);
    function Obj: TInputSerialization;
    function IsSetCSV: Boolean;
    function IsSetCompressionType: Boolean;
    function IsSetJSON: Boolean;
    function IsSetParquet: Boolean;
    property CSV: TCSVInput read GetCSV write SetCSV;
    property KeepCSV: Boolean read GetKeepCSV write SetKeepCSV;
    property CompressionType: TCompressionType read GetCompressionType write SetCompressionType;
    property JSON: TJSONInput read GetJSON write SetJSON;
    property KeepJSON: Boolean read GetKeepJSON write SetKeepJSON;
    property Parquet: TParquetInput read GetParquet write SetParquet;
    property KeepParquet: Boolean read GetKeepParquet write SetKeepParquet;
  end;
  
  TInputSerialization = class
  strict private
    FCSV: TCSVInput;
    FKeepCSV: Boolean;
    FCompressionType: Nullable<TCompressionType>;
    FJSON: TJSONInput;
    FKeepJSON: Boolean;
    FParquet: TParquetInput;
    FKeepParquet: Boolean;
    function GetCSV: TCSVInput;
    procedure SetCSV(const Value: TCSVInput);
    function GetKeepCSV: Boolean;
    procedure SetKeepCSV(const Value: Boolean);
    function GetCompressionType: TCompressionType;
    procedure SetCompressionType(const Value: TCompressionType);
    function GetJSON: TJSONInput;
    procedure SetJSON(const Value: TJSONInput);
    function GetKeepJSON: Boolean;
    procedure SetKeepJSON(const Value: Boolean);
    function GetParquet: TParquetInput;
    procedure SetParquet(const Value: TParquetInput);
    function GetKeepParquet: Boolean;
    procedure SetKeepParquet(const Value: Boolean);
  strict protected
    function Obj: TInputSerialization;
  public
    destructor Destroy; override;
    function IsSetCSV: Boolean;
    function IsSetCompressionType: Boolean;
    function IsSetJSON: Boolean;
    function IsSetParquet: Boolean;
    property CSV: TCSVInput read GetCSV write SetCSV;
    property KeepCSV: Boolean read GetKeepCSV write SetKeepCSV;
    property CompressionType: TCompressionType read GetCompressionType write SetCompressionType;
    property JSON: TJSONInput read GetJSON write SetJSON;
    property KeepJSON: Boolean read GetKeepJSON write SetKeepJSON;
    property Parquet: TParquetInput read GetParquet write SetParquet;
    property KeepParquet: Boolean read GetKeepParquet write SetKeepParquet;
  end;
  
implementation

{ TInputSerialization }

destructor TInputSerialization.Destroy;
begin
  Parquet := nil;
  JSON := nil;
  CSV := nil;
  inherited;
end;

function TInputSerialization.Obj: TInputSerialization;
begin
  Result := Self;
end;

function TInputSerialization.GetCSV: TCSVInput;
begin
  Result := FCSV;
end;

procedure TInputSerialization.SetCSV(const Value: TCSVInput);
begin
  if FCSV <> Value then
  begin
    if not KeepCSV then
      FCSV.Free;
    FCSV := Value;
  end;
end;

function TInputSerialization.GetKeepCSV: Boolean;
begin
  Result := FKeepCSV;
end;

procedure TInputSerialization.SetKeepCSV(const Value: Boolean);
begin
  FKeepCSV := Value;
end;

function TInputSerialization.IsSetCSV: Boolean;
begin
  Result := FCSV <> nil;
end;

function TInputSerialization.GetCompressionType: TCompressionType;
begin
  Result := FCompressionType.ValueOrDefault;
end;

procedure TInputSerialization.SetCompressionType(const Value: TCompressionType);
begin
  FCompressionType := Value;
end;

function TInputSerialization.IsSetCompressionType: Boolean;
begin
  Result := FCompressionType.HasValue;
end;

function TInputSerialization.GetJSON: TJSONInput;
begin
  Result := FJSON;
end;

procedure TInputSerialization.SetJSON(const Value: TJSONInput);
begin
  if FJSON <> Value then
  begin
    if not KeepJSON then
      FJSON.Free;
    FJSON := Value;
  end;
end;

function TInputSerialization.GetKeepJSON: Boolean;
begin
  Result := FKeepJSON;
end;

procedure TInputSerialization.SetKeepJSON(const Value: Boolean);
begin
  FKeepJSON := Value;
end;

function TInputSerialization.IsSetJSON: Boolean;
begin
  Result := FJSON <> nil;
end;

function TInputSerialization.GetParquet: TParquetInput;
begin
  Result := FParquet;
end;

procedure TInputSerialization.SetParquet(const Value: TParquetInput);
begin
  if FParquet <> Value then
  begin
    if not KeepParquet then
      FParquet.Free;
    FParquet := Value;
  end;
end;

function TInputSerialization.GetKeepParquet: Boolean;
begin
  Result := FKeepParquet;
end;

procedure TInputSerialization.SetKeepParquet(const Value: Boolean);
begin
  FKeepParquet := Value;
end;

function TInputSerialization.IsSetParquet: Boolean;
begin
  Result := FParquet <> nil;
end;

end.
