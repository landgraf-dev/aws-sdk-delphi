unit AWS.S3.Model.OutputSerialization;

interface

uses
  AWS.S3.Model.CSVOutput, 
  AWS.S3.Model.JSONOutput;

type
  TOutputSerialization = class;
  
  IOutputSerialization = interface
    function GetCSV: TCSVOutput;
    procedure SetCSV(const Value: TCSVOutput);
    function GetKeepCSV: Boolean;
    procedure SetKeepCSV(const Value: Boolean);
    function GetJSON: TJSONOutput;
    procedure SetJSON(const Value: TJSONOutput);
    function GetKeepJSON: Boolean;
    procedure SetKeepJSON(const Value: Boolean);
    function Obj: TOutputSerialization;
    function IsSetCSV: Boolean;
    function IsSetJSON: Boolean;
    property CSV: TCSVOutput read GetCSV write SetCSV;
    property KeepCSV: Boolean read GetKeepCSV write SetKeepCSV;
    property JSON: TJSONOutput read GetJSON write SetJSON;
    property KeepJSON: Boolean read GetKeepJSON write SetKeepJSON;
  end;
  
  TOutputSerialization = class
  strict private
    FCSV: TCSVOutput;
    FKeepCSV: Boolean;
    FJSON: TJSONOutput;
    FKeepJSON: Boolean;
    function GetCSV: TCSVOutput;
    procedure SetCSV(const Value: TCSVOutput);
    function GetKeepCSV: Boolean;
    procedure SetKeepCSV(const Value: Boolean);
    function GetJSON: TJSONOutput;
    procedure SetJSON(const Value: TJSONOutput);
    function GetKeepJSON: Boolean;
    procedure SetKeepJSON(const Value: Boolean);
  strict protected
    function Obj: TOutputSerialization;
  public
    destructor Destroy; override;
    function IsSetCSV: Boolean;
    function IsSetJSON: Boolean;
    property CSV: TCSVOutput read GetCSV write SetCSV;
    property KeepCSV: Boolean read GetKeepCSV write SetKeepCSV;
    property JSON: TJSONOutput read GetJSON write SetJSON;
    property KeepJSON: Boolean read GetKeepJSON write SetKeepJSON;
  end;
  
implementation

{ TOutputSerialization }

destructor TOutputSerialization.Destroy;
begin
  JSON := nil;
  CSV := nil;
  inherited;
end;

function TOutputSerialization.Obj: TOutputSerialization;
begin
  Result := Self;
end;

function TOutputSerialization.GetCSV: TCSVOutput;
begin
  Result := FCSV;
end;

procedure TOutputSerialization.SetCSV(const Value: TCSVOutput);
begin
  if FCSV <> Value then
  begin
    if not KeepCSV then
      FCSV.Free;
    FCSV := Value;
  end;
end;

function TOutputSerialization.GetKeepCSV: Boolean;
begin
  Result := FKeepCSV;
end;

procedure TOutputSerialization.SetKeepCSV(const Value: Boolean);
begin
  FKeepCSV := Value;
end;

function TOutputSerialization.IsSetCSV: Boolean;
begin
  Result := FCSV <> nil;
end;

function TOutputSerialization.GetJSON: TJSONOutput;
begin
  Result := FJSON;
end;

procedure TOutputSerialization.SetJSON(const Value: TJSONOutput);
begin
  if FJSON <> Value then
  begin
    if not KeepJSON then
      FJSON.Free;
    FJSON := Value;
  end;
end;

function TOutputSerialization.GetKeepJSON: Boolean;
begin
  Result := FKeepJSON;
end;

procedure TOutputSerialization.SetKeepJSON(const Value: Boolean);
begin
  FKeepJSON := Value;
end;

function TOutputSerialization.IsSetJSON: Boolean;
begin
  Result := FJSON <> nil;
end;

end.
